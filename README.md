# Flow

A Roblox Luau UI framework for building exploit/script-hub interfaces — tabs, modules, 34 built-in themes with a live editor, named config profiles, and a header-integrated search bar that jumps straight to any control.

## Quick Start

```lua
local Flow = loadstring(game:HttpGet("https://raw.githubusercontent.com/YourRepo/Flow/main/Flow.lua"))()

local Window = Flow:CreateWindow({ Title = "My Script", Theme = "Midnight" })

local Tab = Window:create_tab("Main")

local Module = Tab:create_module({
    title    = "Player",
    flag     = "PlayerModule",
    callback = function(enabled) end,
})

Module:create_slider({
    title         = "Walk Speed",
    flag          = "WalkSpeed",
    minimum_value = 8,
    maximum_value = 200,
    value         = 16,
    round_number  = true,
    callback      = function(val)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = val
    end,
})

Window:load()  -- always last
```

See `Demo.lua` for a fully working, commented walkthrough of every feature.

## Files

| File | Purpose |
|---|---|
| `Flow.lua` | The library. Load this with `loadstring`/`HttpGet`. |
| `Demo.lua` | Commented quick-start guide and live example of every element. |
| `API_REFERENCE.md` | Full settings/method reference for every element type. |
| `THEME_SYSTEM.md` | All 34 built-in themes, the live editor, saving custom themes. |
| `CONFIG_SYSTEM.md` | Saving/loading/duplicating named config profiles. |
| `SEARCH_SYSTEM.md` | How the header search bar and result-jumping works. |
| `MIGRATION_NOTES.md` | Notes for anyone upgrading an existing v1-style script. |

## Core Concepts

**Window** — created once via `Flow:CreateWindow({ Title, Theme })`. Holds tabs, themes, and the global config.

**Tab** — `Window:create_tab(name, icon?)`. Tabs appear in the left sidebar. Each tab has a left and right column.

**Module** — `Tab:create_module({ title, flag, callback })`. A collapsible card with its own on/off toggle. Everything else is created *inside* a module.

**Elements** — every element takes a `flag` (a unique string key used for saving/loading/searching) and a `callback` (fires when the value changes). Available element types:

- `create_label`, `create_button`, `create_paragraph`, `create_text`, `create_textbox`, `create_divider` — basic content
- `create_checkbox`, `create_slider`, `create_dropdown`, `create_multidropdown` — inputs
- `create_colorpicker`, `create_keybind` — pickers
- `create_progressbar`, `create_status`, `create_keybinddisplay` — live displays
- `create_buttongroup`, `create_image` — layout helpers

Full settings for each are in `API_REFERENCE.md`.

## Built-In Systems

**Settings tab** — added automatically by `Window:load()`. Contains theme presets, a live color editor for the active theme, named config save/load/delete, and notification toggles. You never create this yourself.

**Search** — a search box is built into the header. Typing filters live across every tab, module, and control; clicking a result switches tabs, expands the module, scrolls to the control, and highlights it. `Ctrl+F` focuses the search box, `Escape` clears it.

**Themes** — 34 built-in presets (`Flow._Themes` for the full list). Switch at runtime with `Window:apply_theme("Cyber")`. Users can edit and save their own themes from the Settings tab; saved themes persist to disk and reload automatically next session.

**Configs** — `Window._config` holds all current flag values, keybinds, and the active theme. Named snapshots can be saved/loaded/deleted/duplicated from the Settings tab, stored under `Flow/Configs/`.

**Notifications** — `Flow:SendNotification({ title, text, duration?, type? })` works from anywhere. `type` is one of `"success"`, `"error"`, `"warning"`, `"info"`, `"loading"`, or omitted for the theme's accent color.

**Minimize** — clicking the minimize button (or pressing `RightShift`) collapses the window to a small title bar showing only the title, icon, and minimize button — everything else (tabs, search bar, divider, content) hides cleanly and restores exactly as it was.

## Storage

All persistent data lives under a single `Flow/` folder:

```
Flow/
  <PlaceId>.json      - auto-saved flag/keybind state per game
  Configs/<name>.json - named config snapshots
  Themes/<name>.json  - custom saved themes
```

## Backward Compatibility

`create_label`, `create_button`, `create_checkbox`, `create_slider`, and `create_dropdown` keep their original signatures and behavior - existing scripts built against the v1 API continue to work unchanged. See `MIGRATION_NOTES.md` for details.
