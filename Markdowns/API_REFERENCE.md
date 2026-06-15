# Flow — Element API Reference

All new elements follow the same conventions as v1 elements:
- Created on a `ModuleManager` returned by `Tab:create_module()`
- Accept a `settings` table as their only argument
- Return a manager object with methods to update state
- Persist their value using a `flag` string key
- Register themselves in the global search index automatically

---

## Module:create_colorpicker(settings)

A full HSV color picker with alpha slider, hex input, and live preview.

### Settings

| Key        | Type    | Required | Default                         | Description                      |
|------------|---------|----------|---------------------------------|----------------------------------|
| `title`    | string  | No       | `"Color"`                       | Label shown next to the swatch   |
| `flag`     | string  | Yes      | —                               | Config key (stores `{R,G,B,A}`)  |
| `default`  | Color3  | No       | `Color3.fromRGB(130,100,255)`   | Initial color                    |
| `callback` | fn(Color3) | No  | nil                             | Called every time color changes  |

### Returns: `ColorpickerManager`

| Method                | Signature              | Description                    |
|-----------------------|------------------------|--------------------------------|
| `SetColor`            | `(color: Color3)`      | Change color programmatically  |
| `GetColor`            | `() → Color3`          | Return the current Color3      |
| `SetAlpha`            | `(alpha: number 0-1)`  | Set transparency channel       |

### Example

```lua
local cpick = Module:create_colorpicker({
    title = "Highlight Color",
    flag = "HighlightColor",
    default = Color3.fromRGB(255, 100, 50),
    callback = function(color)
        -- color is a Color3
        print(color.R, color.G, color.B)
    end,
})

-- Later: change programmatically
cpick:SetColor(Color3.fromRGB(0, 200, 255))
local current = cpick:GetColor()
```

### Saved flag format

```lua
-- Library._config._flags["HighlightColor"] =
{ 1.0, 0.39, 0.20, 1.0 }  -- { R, G, B, Alpha } all 0–1
```

### UI Layout

```
[Title Label ............. ■ Swatch]
↓ click swatch to open
┌──────────────────────────────────┐
│  ░░░░░░░░░░░░░░ (SV square)      │
│  ▓▓▓▓▓▓▓▓▓▓▓▓▓▓ (Hue bar)       │
│  ░▒▓████████████ (Alpha bar)     │
│  # [FF6432]  [Copy]  [Preview]   │
└──────────────────────────────────┘
```

---

## Module:create_keybind(settings)

A keybind element (separate from the module-header keybind).
Supports Toggle, Hold, and Always modes.

### Settings

| Key        | Type       | Required | Default                  | Description                          |
|------------|------------|----------|--------------------------|--------------------------------------|
| `title`    | string     | No       | `"Keybind"`              | Row label                            |
| `flag`     | string     | Yes      | —                        | Config key for the bound key         |
| `default`  | KeyCode    | No       | `Enum.KeyCode.Unknown`   | Initial key binding                  |
| `mode`     | string     | No       | `"Toggle"`               | `"Toggle"`, `"Hold"`, or `"Always"`  |
| `callback` | fn(bool)   | No       | nil                      | Called with `true`/`false` on fire   |

### Returns: `KeybindManager`

| Method       | Signature                   | Description                       |
|--------------|-----------------------------|-----------------------------------|
| `SetKeybind` | `(keyCode: Enum.KeyCode)`   | Update the bound key              |
| `GetKeybind` | `() → Enum.KeyCode`         | Return the current key            |
| `SetMode`    | `(mode: string)`            | Change to `Toggle`/`Hold`/`Always`|
| `Destroy`    | `()`                        | Disconnect input listeners        |

### Modes

| Mode      | Behavior                                                              |
|-----------|-----------------------------------------------------------------------|
| `Toggle`  | Key press alternates between `true` and `false`                       |
| `Hold`    | Callback fires `true` on key down, `false` on key up                  |
| `Always`  | Callback fires `true` once on creation; never stops                   |

### Rebinding at runtime

- **Left-click** the pill → enters listening mode, press any key to bind
- **Backspace** while listening → clears the binding (sets to Unknown)
- **Right-click** the pill → cycles through Toggle → Hold → Always

### Example

```lua
local bind = Module:create_keybind({
    title = "Sprint",
    flag = "SprintBind",
    default = Enum.KeyCode.LeftShift,
    mode = "Hold",
    callback = function(active)
        local hum = game.Players.LocalPlayer.Character
            and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
        if hum then hum.WalkSpeed = active and 28 or 16 end
    end,
})

bind:SetMode("Toggle")
bind:SetKeybind(Enum.KeyCode.Q)
```

---

## Module:create_multidropdown(settings)

A multi-select dropdown with built-in search, Select All, and Deselect All.

### Settings

| Key        | Type       | Required | Default | Description                          |
|------------|------------|----------|---------|--------------------------------------|
| `title`    | string     | No       | `"Select"` | Row label                         |
| `flag`     | string     | Yes      | —       | Config key (stores `{ string }`)     |
| `options`  | { string } | Yes      | —       | All available options                |
| `default`  | { string } | No       | `{}`    | Initially selected options           |
| `callback` | fn({ string }) | No  | nil     | Called with selected array on change |

### Returns: `MultiDropdownManager`

| Method        | Signature               | Description                           |
|---------------|-------------------------|---------------------------------------|
| `SetSelected` | `(sel: { string })`     | Replace the full selection            |
| `GetSelected` | `() → { string }`       | Return a copy of the current selection|
| `SetOptions`  | `(opts: { string })`    | Replace the available options         |

### Example

```lua
local mdd = Module:create_multidropdown({
    title = "Active Modules",
    flag = "ActiveMods",
    options = { "ESP", "Aimbot", "Speed", "Fly", "Radar" },
    default = { "ESP" },
    callback = function(selected)
        -- selected = { "ESP", "Speed" }
        for _, name in ipairs(selected) do print(name) end
    end,
})

-- Force a selection
mdd:SetSelected({ "ESP", "Radar" })
print(mdd:GetSelected())  -- { "ESP", "Radar" }

-- Expand the option list
mdd:SetOptions({ "ESP", "Aimbot", "Speed", "Fly", "Radar", "Noclip" })
```

---

## Module:create_progressbar(settings)

An animated horizontal progress bar with percentage label.

### Settings

| Key        | Type       | Required | Default      | Description                           |
|------------|------------|----------|--------------|---------------------------------------|
| `title`    | string     | No       | `"Progress"` | Label above the bar                   |
| `flag`     | string     | No       | —            | Optional config key                   |
| `value`    | number     | No       | `0`          | Initial value (0–100)                 |
| `callback` | fn(number) | No       | nil          | Called with the new value on `SetValue`|

### Returns: `ProgressbarManager`

| Method     | Signature             | Description                              |
|------------|-----------------------|------------------------------------------|
| `SetValue` | `(val: number 0–100)` | Animate to the new percentage            |
| `GetValue` | `() → number`         | Return the current value                 |

### Example

```lua
local bar = Module:create_progressbar({
    title = "Loading Assets",
    flag = "LoadProgress",
    value = 0,
    callback = function(val) print("Progress:", val) end,
})

-- Animate over time
task.spawn(function()
    for i = 0, 100, 2 do
        task.wait(0.05)
        bar:SetValue(i)
    end
end)
```

---

## Module:create_status(settings)

A single-line status indicator with a colored dot and status text.

### Settings

| Key      | Type   | Required | Default     | Description                                        |
|----------|--------|----------|-------------|----------------------------------------------------|
| `title`  | string | No       | `"Status"`  | Left-side label                                    |
| `flag`   | string | No       | —           | Unused (display only, no persistence)              |
| `status` | string | No       | `"Enabled"` | Initial status key (see table below)               |
| `text`   | string | No       | status key  | Right-side display text                            |

### Status Keys and Colors

| Key        | Dot Color          | Typical Use                    |
|------------|--------------------|--------------------------------|
| `Enabled`  | Green  `(60,210,120)` | Feature is active           |
| `Disabled` | Grey   `(110,115,145)`| Feature is off              |
| `Warning`  | Yellow `(255,185,45)` | Degraded or unexpected state|
| `Error`    | Red    `(230,65,75)`  | Failure condition           |
| `Loading`  | Accent + pulse anim   | Async operation in progress |

### Returns: `StatusManager`

| Method      | Signature                       | Description                         |
|-------------|---------------------------------|-------------------------------------|
| `SetStatus` | `(status: string, text?: string)` | Update status and optional display text |

### Example

```lua
local st = Module:create_status({
    title = "Connection",
    status = "Loading",
    text = "Connecting...",
})

task.delay(2, function()
    st:SetStatus("Enabled", "Connected ✓")
end)

task.delay(5, function()
    st:SetStatus("Warning", "High latency detected")
end)
```

---

## Module:create_buttongroup(settings)

Multiple accent buttons laid out in a single horizontal row.

### Settings

| Key       | Type   | Required | Default   | Description                      |
|-----------|--------|----------|-----------|----------------------------------|
| `title`   | string | No       | —         | Optional label above the row     |
| `buttons` | table  | Yes      | —         | Array of `{ text, callback }` entries |

Each button entry:

| Key        | Type   | Required | Description                    |
|------------|--------|----------|--------------------------------|
| `text`     | string | Yes      | Button label                   |
| `callback` | fn()   | No       | Called on click                |

Button widths are calculated automatically:
`width = floor( (207 - 4×(count-1)) / count )`

### Returns: `ButtonGroupManager`

| Method              | Signature                    | Description                  |
|---------------------|------------------------------|------------------------------|
| `SetButtonText`     | `(index: number, text: string)` | Change a button's label   |
| `SetButtonCallback` | `(index: number, fn: function)` | Replace a button's callback|

### Example

```lua
local grp = Module:create_buttongroup({
    title = "Teleport",
    buttons = {
        { text="Spawn",    callback = function() teleport("Spawn")    end },
        { text="Shop",     callback = function() teleport("Shop")     end },
        { text="Location", callback = function() teleport("Location") end },
    },
})

grp:SetButtonText(2, "Market")
grp:SetButtonCallback(3, function() teleport("NewLocation") end)
```

---

## Module:create_image(settings)

Displays an `ImageLabel` inside a module, useful for banners, previews,
and visual separators.

### Settings

| Key            | Type       | Required | Default                | Description                         |
|----------------|------------|----------|------------------------|-------------------------------------|
| `title`        | string     | No       | —                      | Optional label above the image      |
| `image`        | string     | No       | `""`                   | Asset ID string (`rbxassetid://…`)  |
| `size`         | UDim2      | No       | `UDim2.new(1,0,0,100)` | Size of the image element           |
| `cornerRadius` | number     | No       | `6`                    | Corner radius in pixels             |

### Returns: `ImageManager`

| Method     | Signature            | Description                     |
|------------|----------------------|---------------------------------|
| `SetImage` | `(id: string)`       | Swap to a new asset ID          |
| `SetSize`  | `(size: UDim2)`      | Resize the image element        |

### Example

```lua
local img = Module:create_image({
    title = "Banner",
    image = "rbxassetid://107819132007001",
    size = UDim2.new(1, 0, 0, 90),
    cornerRadius = 8,
})

-- Swap image later
img:SetImage("rbxassetid://999999999")
```

---

## Module:create_keybinddisplay(settings)

A read-only display of active keybind assignments.  Reads from
`Library._config._keybinds` and refreshes every 2 seconds automatically.

### Settings

| Key     | Type       | Required | Default           | Description                            |
|---------|------------|----------|-------------------|----------------------------------------|
| `title` | string     | No       | `"Active Binds"`  | Section header label                   |
| `binds` | { string } | No       | `{}`              | Module flag names to display binds for |

### Returns: `KeybindDisplayManager`

| Method     | Signature              | Description                         |
|------------|------------------------|-------------------------------------|
| `SetBinds` | `(flags: { string })`  | Replace the list of flags to display|
| `Refresh`  | `()`                   | Force an immediate refresh          |

### Example

```lua
local disp = Module:create_keybinddisplay({
    title = "My Keybinds",
    binds = { "PlayerModule", "VisualModule", "SprintBind" },
})

-- Add more flags at runtime
disp:SetBinds({ "PlayerModule", "VisualModule", "SprintBind", "FlightBind" })
disp:Refresh()
```

### Display format

```
My Keybinds
PlayerModule   ──────  RightControl
VisualModule   ──────  None
SprintBind     ──────  LeftShift
```

Values are read live from `Library._config._keybinds[flag]`.  If a
module-header keybind has been assigned via middle-click, it appears here
automatically.

---

## Existing v1 Elements — Quick Reference

These are unchanged from v1 but included here for completeness.

| Method                  | Returns                    |
|-------------------------|----------------------------|
| `create_label(s)`       | `{ SetText, SetTitle, Set }`|
| `create_button(s)`      | `{ SetTitle, SetDescription, SetButtonText, SetCallback }` |
| `create_paragraph(s)`   | `{ SetTitle, SetText, Set }`|
| `create_text(s)`        | `{ Set }`                  |
| `create_textbox(s)`     | `{ SetText }`              |
| `create_divider(s)`     | `true`                     |
| `create_checkbox(s)`    | `{ change_state, SetTitle }`|
| `create_slider(s)`      | `{ set_percentage, SetTitle }`|
| `create_dropdown(s)`    | `{ update, unfold_settings, New }`|

### Tab-level methods (no module required)

| Method                       | Returns                        |
|------------------------------|--------------------------------|
| `Tab:create_label(s)`        | `{ SetText, SetTitle, Set, Destroy }` |
| `Tab:create_button(s)`       | `{ SetTitle, SetDescription, SetButtonText, SetCallback, Destroy }` |

---

## Common Settings Fields

These fields are supported by most or all elements:

| Field      | Type   | Description                                      |
|------------|--------|--------------------------------------------------|
| `title`    | string | Primary label text                               |
| `flag`     | string | Config persistence key (must be unique per element)|
| `callback` | fn     | Called when the value changes                    |
| `section`  | string | `"left"` (default) or `"right"` column           |
| `rich`     | bool   | Enables RichText on label/paragraph elements     |
