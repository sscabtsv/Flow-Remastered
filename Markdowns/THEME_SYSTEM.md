# Flow — Theme System Documentation

## Overview

The theme system controls every color in the UI simultaneously.  Calling
`apply_theme(name)` tweens every registered element to the new palette in
one pass.  v2 adds a live Theme Editor, unlimited custom themes, disk
persistence, and three new built-in presets (Dark, Light, Glass).

---

## Built-in Presets (34 total)

| Name        | Category  | Description                 |
|-------------|-----------|-----------------------------|
| Midnight    | Dark      | Deep violet dark            |
| Dark        | Minimal   | Clean dark default          |
| Light       | Minimal   | Bright light mode           |
| Ocean       | Nature    | Oceanic deep blue           |
| Purple      | Dark      | Royal amethyst              |
| Crimson     | Premium   | Dramatic deep red           |
| Emerald     | Dark      | Rich jewel green            |
| Sakura      | Pastel    | Soft cherry blossom         |
| Cyber       | Neon      | Terminal matrix green       |
| Glass       | Premium   | Translucent glass panel     |
| Rose        | Dark      | Warm crimson bloom          |
| Sapphire    | Dark      | Cool electric blue          |
| Obsidian    | Premium   | Gold on jet black           |
| Glacier     | Premium   | Icy arctic blue             |
| Amber       | Premium   | Warm amber glow             |
| Neon        | Neon      | Synthwave vibes             |
| Sunset      | Neon      | Warm dusk orange            |
| Monochrome  | Minimal   | Pure grayscale              |
| Ash         | Minimal   | Cool blue-grey              |
| Forest      | Nature    | Deep woodland green         |
| Lavender    | Pastel    | Soft lilac dream            |
| Coffee      | Warm      | Rich espresso tones         |
| Mint        | Pastel    | Cool minty fresh            |
| Pink        | Pastel    | Vibrant hot pink            |
| Abyss       | Dark      | Bottomless deep blue        |
| Vanta       | Minimal   | Absolute black              |
| Coral       | Warm      | Vibrant coral reef          |
| Arctic      | Nature    | Frozen tundra white         |
| Void        | Neon      | Ultraviolet darkness        |
| Dusk        | Pastel    | Twilight purple haze        |
| Lava        | Neon      | Molten fire red             |
| Steel       | Minimal   | Industrial blue-grey        |
| Toxic       | Neon      | Radioactive lime            |
| Blush       | Pastel    | Warm rosy pink              |

---

## Theme Color Keys

Each theme is a table with exactly these 8 keys:

```lua
{
    Background       = Color3,  -- main window background
    ModuleBackground = Color3,  -- module card backgrounds
    Accent           = Color3,  -- buttons, active toggles, highlights
    SecondaryAccent  = Color3,  -- toggle knob when active
    Text             = Color3,  -- primary text
    TextDark         = Color3,  -- secondary / dimmed text
    Highlight        = Color3,  -- hover glow, decorative accent
    Stroke           = Color3,  -- borders and separators
}
```

---

## Applying a Theme

### At window creation
```lua
local Window = Flow:CreateWindow({ Title="My App", Theme="Cyber" })
```

### At runtime
```lua
Window:apply_theme("Sakura")
```

### Via the Settings tab
The built-in Settings tab contains a **Theme Preset** dropdown.
Selecting any name applies it instantly with smooth tweens.

---

## Theme Editor (Settings Tab)

The **Live Editor** in the Settings tab exposes a color picker for every
theme slot.  Changes are applied in real time to the active theme.
The active theme's memory entry is mutated — the edited colors persist
until another theme is selected or the game reloads.

To **persist changes across sessions** you must save the edited theme
using the **Save** button in the same panel.

---

## Saving Custom Themes

### Via the Settings tab
1. Edit colors in the Live Editor.
2. Type a name in the **Theme Name** field.
3. Press **Save**.

Themes are stored as JSON under:
```
Flow/Themes/<name>.json
```

### Programmatically
```lua
-- Snapshot the current active theme under a new name
local snapshot = {}
for k, v in pairs(Themes["Cyber"]) do snapshot[k] = v end
snapshot.Accent = Color3.fromRGB(255, 80, 0)  -- override one slot
Config:save_theme("CyberOrange", snapshot)
-- Register it so it appears in dropdowns
Themes["CyberOrange"]    = snapshot
ThemeMeta["CyberOrange"] = { category="Custom", desc="Cyber with orange accent" }
```

### Deleting a custom theme
```lua
Config:delete_theme("CyberOrange")
Themes["CyberOrange"]    = nil
ThemeMeta["CyberOrange"] = nil
```
Only themes with `category = "Custom"` can be deleted via the Settings tab.
Built-in themes are always available.

---

## Loading Saved Themes at Startup

Custom themes saved to disk are automatically re-loaded every time
`Window:load()` is called (inside `create_settings_tab`).  No extra
work is needed.

---

## Adding a Preset Programmatically

```lua
-- Add before CreateWindow is called
local Flow = loadstring(...)()

Flow._Library  -- access the raw Library table
-- or after loading:
Themes["MyTheme"] = {
    Background       = Color3.fromRGB(10, 12, 18),
    ModuleBackground = Color3.fromRGB(18, 22, 32),
    Accent           = Color3.fromRGB(255, 200, 0),
    SecondaryAccent  = Color3.fromRGB(255, 230, 100),
    Text             = Color3.fromRGB(255, 248, 220),
    TextDark         = Color3.fromRGB(180, 168, 120),
    Highlight        = Color3.fromRGB(210, 155, 0),
    Stroke           = Color3.fromRGB(80, 65, 20),
}
ThemeMeta["MyTheme"] = { category="Custom", desc="Golden dark" }
```

---

## Internals: apply_theme

`Library:apply_theme(name)` does the following in order:

1. Validates `name` exists in `Themes`.
2. Sets `Library._current_theme = name`.
3. Saves the choice to the config file via `Config:save(game.GameId, …)`.
4. Iterates `_themed_elements` tables and fires `TweenService:Create`
   on each registered GUI instance using `Tween.smooth`.

The tables tracked are:

| Table                | What it contains                      |
|----------------------|---------------------------------------|
| `Container`          | Main window frame                     |
| `ContainerStroke`    | Main UIStroke                         |
| `Pin`                | Accent pin on left rail               |
| `Modules`            | All module/label/button card frames   |
| `Strokes`            | All UIStroke instances                |
| `ActiveToggles`      | {Toggle, Circle} for enabled modules  |
| `SliderDrags`        | Slider fill frames                    |
| `AccentButtons`      | Accent-colored TextButtons            |
| `DropdownHighlights` | {Highlight, Dot} per dropdown option  |
| `Notifications`      | Live notification frames              |
| `ProgressFills`      | Progress bar fill frames              |
| `StatusDots`         | Status indicator dots                 |
