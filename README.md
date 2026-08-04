# Flow

A Roblox UI framework for building script-hub interfaces: tabs, modules, a full theming system with a live editor and a font changer, a global search bar, named config profiles, a themed loading screen, notifications with configurable position and sound, a floating watermark, live interface translation, and shareable server-join codes.

## Quick Start

```lua
local Flow = loadstring(game:HttpGet("https://raw.githubusercontent.com/sscabtsv/Flow-Remastered/refs/heads/main/Library/Source.lua"))()

local Window = Flow:CreateWindow({Title = "My Script", Theme = "Midnight"})

local Tab = Window:create_tab("Main")

local Module = Tab:create_module({
    title = "Player",
    flag = "PlayerModule",
    callback = function(enabled)
      print("yes")
    end,
})

Module:create_slider({
    title = "Walk Speed",
    flag = "WalkSpeed",
    minimum_value = 8,
    maximum_value = 200,
    value = 16,
    round_number = true,
    callback = function(val)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = val
    end,
})

Window:load()  -- always last
```

`CreateWindow` also accepts `LoadingTitle`, `LoadingSubtitle`, `LoadingMode`, `LoadingDuration`, `LoadingTasks`, `NotificationPosition`, `NotificationSound`, and `Language` — see **Built-In Systems** below for what each does. None are required; every one has a sensible default.

See [V1 Demo](https://github.com/sscabtsv/Flow-Remastered/blob/main/Library/Demo.lua) or [V2 Demo](https://github.com/sscabtsv/Flow-Remastered/blob/main/Library/New/Demo.lua) for a fully working walkthrough of every feature.

## Files

| File | Purpose |
|---|---|
| `Source.lua` | The library's full source (open sourced meaning modifications is available). |
| `Demo.lua` | A quick-start guide and live example of every element. |
| `API_REFERENCE.md` | Full settings/method reference for every element type. |
| `THEME_SYSTEM.md` | All built-in themes, the live editor, the font changer, saving custom themes. |
| `CONFIG_SYSTEM.md` | Saving/loading/duplicating named config profiles. |
| `SEARCH_SYSTEM.md` | How the search bar and result-jumping works. |
| `UPDATES.md` | Changelog — what's changed between versions. |
| `LICENSE` | Usage terms. |

## Core Concepts

**Window** — created once via `Flow:CreateWindow({ Title, Theme, ... })`. Holds tabs, themes, the global config, and the settings this window will restore on the next launch (theme, font, language, notification position/sound).

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

**Settings tab** — added automatically by `Window:load()`. Contains, in order: **Themes** (presets, live color editor, font changer, save/delete/duplicate), **Interface** (blur, opacity, animation speed), **Watermark** (on/off toggle), **Config** (named save/load/delete/duplicate), **Servers** (create/join a server code), **Notifications** (enable, duration, position, sound, test buttons), **Language** (live translation), and **Search** (a quick reference for the shortcuts below). You never create this tab yourself.

**Search** — a search box is built into the header. Typing filters live across every tab, module, and control; clicking a result switches tabs, expands the module, scrolls to the control, and highlights it. `Ctrl+F` focuses the search box, `Escape` clears it.

**Themes** — built-in presets (`Flow._Themes` for the full list). Switch at runtime with `Window:apply_theme("Cyber")`. Users can edit and save their own themes from the Settings tab; saved themes persist to disk and reload automatically next session. The window's outer outline and every notification's accent pulse in the active theme's accent color automatically.

**Fonts** — the Settings tab's Typography section lets users switch the entire interface to any `Enum.Font`. Text size is automatically compensated per font so no font choice leaves text illegibly small or oversized. See `THEME_SYSTEM.md`.

**Configs** — `Window._config` holds all current flag values, keybinds, and the active theme/font/language. Named snapshots can be saved/loaded/deleted/duplicated from the Settings tab, stored under `Flow/Configs/`.

**Loading screen** — shown automatically from `CreateWindow` until dismissed. Three modes via `LoadingMode`:
- `"modules"` (default) — dismisses as soon as `Window:load()` finishes.
- `"duration"` — stays up for at least `LoadingDuration` seconds (default `2`), and still won't dismiss before `Window:load()` has run.
- `"tasks"` — waits for every function in `LoadingTasks` (an array of functions) to finish, in addition to `Window:load()`.

`LoadingTitle`/`LoadingSubtitle` override the default text shown while it's up.

**Watermark** — `Flow:CreateWatermark({ title, fps, ping })` creates a small floating pill with live FPS/ping that follows the active theme. Returns `{ SetTitle, Destroy }`. Also toggleable from Settings → Watermark.

**Notifications** — `Flow:SendNotification({ title, text, duration?, type? })` works from anywhere. `type` is one of `"success"`, `"error"`, `"warning"`, `"info"`, `"loading"`, or omitted for the theme's accent color — `success`/`error`/`warning` keep their color permanently even across theme changes; everything else tracks the live theme. Position (8 anchors) and sound are configurable from Settings → Notifications, or up front via `CreateWindow({ NotificationPosition = "...", NotificationSound = "..." })`.

**Language** — Settings → Language translates every label, button, and description in the window, live, to any of 20 languages. Selections and originals are cached so switching back is instant. Set a default with `CreateWindow({ Language = "..." })`.

**Server codes** — Settings → Servers lets a user generate a short `FLOW-XXXXXX` code for the server they're currently in, or paste one in to teleport straight into that server.

**Minimize** — clicking the minimize button (or pressing `RightShift`) collapses the window to a small title bar showing only the title, icon, and minimize button, everything else (tabs, search bar, divider, content) hides cleanly and restores exactly as it was.

## Storage

All persistent data lives under a single `Flow/` folder:

```
Flow/
  <PlaceId>.json      - auto-saved flag/keybind state per game
  Configs/<name>.json - named config snapshots
  Themes/<name>.json  - custom saved themes
```

## Credits

All credits are listed below

[Allusive](https://discord.gg/allusive) - Original UI source from
<br/>
[Flow](https://discord.gg/getflow) - Original UI source from
<br/>
[Cabinet](https://github.com/sscabtsv) - Modifier, caretaker, updater of the modded version
