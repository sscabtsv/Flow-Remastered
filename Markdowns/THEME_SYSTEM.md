# Flow — Theme System Documentation

## Overview

The theme system controls every color in the UI simultaneously. Calling
`apply_theme(name)` tweens every registered element to the new palette in
one pass. V1 added a live Theme Editor, unlimited custom themes, disk
persistence, and three built-in presets (Dark, Light, Glass). V2 adds three
more presets (Aurora, Velvet, Solstice), a font changer with automatic
text-size compensation, a theme-linked pulsing outline around the window,
and a fix so notifications, the watermark, and search results can no longer
end up reading a stale theme.

---

## Built-in Presets (37 total)

| Name        | Category  | Description                 |
|-------------|-----------|------------------------------|
| Midnight    | Dark      | Deep violet dark            |
| Dark        | Minimal   | Clean dark default          |
| Light       | Minimal   | Bright light mode            |
| Ocean       | Nature    | Oceanic deep blue            |
| Purple      | Dark      | Royal amethyst               |
| Crimson     | Premium   | Dramatic deep red            |
| Emerald     | Dark      | Rich jewel green             |
| Sakura      | Pastel    | Soft cherry blossom          |
| Cyber       | Neon      | Terminal matrix green        |
| Glass       | Premium   | Translucent glass panel      |
| Rose        | Dark      | Warm crimson bloom           |
| Sapphire    | Dark      | Cool electric blue           |
| Obsidian    | Premium   | Gold on jet black            |
| Glacier     | Premium   | Icy arctic blue              |
| Amber       | Premium   | Warm amber glow              |
| Neon        | Neon      | Synthwave vibes               |
| Sunset      | Neon      | Warm dusk orange              |
| Monochrome  | Minimal   | Pure grayscale                |
| Ash         | Minimal   | Cool blue-grey                |
| Forest      | Nature    | Deep woodland green            |
| Lavender    | Pastel    | Soft lilac dream              |
| Coffee      | Warm      | Rich espresso tones           |
| Mint        | Pastel    | Cool minty fresh              |
| Pink        | Pastel    | Vibrant hot pink              |
| Abyss       | Dark      | Bottomless deep blue          |
| Vanta       | Minimal   | Absolute black                |
| Coral       | Warm      | Vibrant coral reef            |
| Arctic      | Nature    | Frozen tundra white           |
| Void        | Neon      | Ultraviolet darkness          |
| Dusk        | Pastel    | Twilight purple haze          |
| Lava        | Neon      | Molten fire red               |
| Steel       | Minimal   | Industrial blue-grey          |
| Toxic       | Neon      | Radioactive lime              |
| Blush       | Pastel    | Warm rosy pink                |
| Aurora      | Nature    | Teal aurora glow *(new in V2)* |
| Velvet      | Premium   | Rich plum magenta *(new in V2)* |
| Solstice    | Warm      | Golden sunrise glow *(new in V2)* |

---

## Theme Color Keys

Each theme is a table with exactly these 8 keys:

```lua
{
    Background = Color3,  -- main window background
    ModuleBackground = Color3,  -- module card backgrounds
    Accent = Color3,  -- buttons, active toggles, highlights, the window outline, notification accents
    SecondaryAccent = Color3,  -- toggle knob when active
    Text = Color3,  -- primary text
    TextDark = Color3,  -- secondary / dimmed text
    Highlight = Color3,  -- hover glow, decorative accent
    Stroke = Color3,  -- borders and separators
}
```

This didn't change in V2 — no new keys were added. Every new themed element
(the window outline, the watermark) reuses `Accent`/`Stroke`/`Background` so
existing custom themes automatically look correct with no changes needed.

---

## Applying a Theme

### At window creation
```lua
local Window = Flow:CreateWindow({ Title = "My App", Theme = "Cyber" })
```

### At runtime
```lua
Window:apply_theme("Sakura")
```

### Via the Settings tab
The built-in Settings tab contains a **Theme Preset** dropdown.
Selecting any name applies it instantly with smooth tweens.

---

## Window Outline (V2)

A slim outline pulses gently around the window in the active theme's
`Accent` color. It isn't a separate fixed-size overlay — every frame it
reads the window's real, currently-rendered size and position and matches
itself to it exactly, so it stays flush against the window's edges through
opening, dragging, resizing, minimizing, and mobile `UIScale` scaling alike.
There's nothing to configure here; it always tracks whatever theme is
active.

---

## Typography / UI Font (V2)

Settings → Themes → **Typography** has a **UI Font** dropdown listing every
`Enum.Font` Roblox exposes. Picking one:

1. Rebuilds the library's cached fonts (regular/semibold/bold) from that
   font's family, preserving each existing element's own weight — bold
   titles stay visually bolder than body text under the new font too.
2. Measures the new font's rendered width and height against the default
   (GothamSSm) at a fixed reference size, derives a damped correction
   factor (clamped to 0.8×–1.25×, so no font can blow past the fixed-width
   layout), and applies it to every element's `TextSize` — each element's
   *original* designed size is remembered the first time it's touched, so
   switching between several fonts never compounds the scaling.
3. Applies to everything already on screen immediately, and to anything
   created afterward (new modules, notifications, the watermark) as it's
   built.

The selection persists the same way the theme does and is restored on the
next launch.

```lua
-- Programmatically, if you ever need it:
Window:set_ui_font(Enum.Font.Bangers)
```

---

## Theme Editor (Settings Tab)

The **Live Editor** in the Settings tab exposes a color picker for every
theme slot. Changes are applied in real time to the active theme.
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
Themes["CyberOrange"] = snapshot
ThemeMeta["CyberOrange"] = { category="Custom", desc="Cyber with orange accent" }
```

### Deleting a custom theme
```lua
Config:delete_theme("CyberOrange")
Themes["CyberOrange"] = nil
ThemeMeta["CyberOrange"] = nil
```
Only themes with `category = "Custom"` can be deleted via the Settings tab.
Built-in themes are always available.

---

## Loading Saved Themes and Preferences at Startup

Custom themes saved to disk are automatically re-loaded every time
`Window:load()` is called (inside `create_settings_tab`). A previously
selected theme, UI font, notification position/sound, and translation
language are all restored before the window even finishes building — no
extra work is needed for any of it.

---

## Adding a Preset Programmatically

```lua
-- Add before CreateWindow is called
local Flow = loadstring(...)()

Flow._Library  -- access the raw Library table
-- or after loading:
Themes["MyTheme"] = {
    Background = Color3.fromRGB(10, 12, 18),
    ModuleBackground = Color3.fromRGB(18, 22, 32),
    Accent = Color3.fromRGB(255, 200, 0),
    SecondaryAccent = Color3.fromRGB(255, 230, 100),
    Text = Color3.fromRGB(255, 248, 220),
    TextDark = Color3.fromRGB(180, 168, 120),
    Highlight = Color3.fromRGB(210, 155, 0),
    Stroke = Color3.fromRGB(80, 65, 20),
}
ThemeMeta["MyTheme"] = { category = "Custom", desc = "Golden dark" }
```

---

## Internals: apply_theme

`Library:apply_theme(name)` does the following in order:

1. Validates `name` exists in `Themes`.
2. Sets both `self._current_theme` (the window instance) and the shared
   `Library._current_theme` to `name`. *(V2 fix: earlier only the instance
   field was updated, which let anything reading the shared value — notifications,
   the watermark, search results — drift out of sync with the window until
   some other call happened to correct it. Both are now always kept in sync.)*
3. Saves the choice to the config file via `Config:save(game.GameId, …)`.
4. Iterates `_themed_elements` tables and fires `TweenService:Create`
   on each registered GUI instance using `Tween.smooth`.

The tables tracked are:

| Table                 | What it contains                                   |
|------------------------|-----------------------------------------------------|
| `Container`            | Main window frame                                   |
| `ContainerStroke`      | Main UIStroke                                        |
| `ContainerGlow`        | The pulsing outline frame *(new in V2)*              |
| `ContainerGlowStroke`  | The outline's UIStroke, retinted to `Accent` *(new in V2)* |
| `Pin`                   | Accent pin on left rail                              |
| `Modules`               | All module/label/button card frames                  |
| `Strokes`               | All UIStroke instances                               |
| `ActiveToggles`         | {Toggle, Circle} for enabled modules                 |
| `SliderDrags`           | Slider fill frames                                   |
| `AccentButtons`         | Accent-colored TextButtons                           |
| `DropdownHighlights`    | {Highlight, Dot} per dropdown option                  |
| `Notifications`         | Live notification frames — see note below            |
| `ProgressFills`         | Progress bar fill frames                             |
| `StatusDots`            | Status indicator dots                                |
| `Watermarks`            | Active watermark frame(s) *(new in V2)*              |

**Notification retinting (V2 fix):** each live notification now carries a
`Themed` flag set once at creation. It's `true` for `info`/`loading`/default
notifications (which track the live theme's `Accent`), and `false` for
`success`/`error`/`warning` (which keep their fixed semantic color for their
entire lifetime). Previously every visible notification's accent bar and
duration bar got force-retinted to the theme's accent on every theme
change, which silently turned a still-visible red "Error" toast the same
color as everything else the moment the user switched themes.
