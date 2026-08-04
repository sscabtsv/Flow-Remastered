# Flow — Config System Documentation

## Overview

The config system persists all user-controlled values across sessions.
V1 used a single auto-save file keyed by `game.GameId` (later `game.PlaceId`).
It kept that behavior intact and added a full named-config management layer
with save, load, delete, duplicate, and rename support. V2 keeps the same
storage layout and API and simply adds a handful of new flags, chosen UI
font, notification position, notification sound, and translation language,
which are saved, loaded, and restored exactly like every other flag, with
no migration needed.

---

## Storage Layout

```
Flow/
  <GameId>.json          - auto-save (always kept, backward-compat)
  Configs/
    <name>.json          - named configs
  Themes/
    <name>.json          - saved custom themes
```

Translation results are cached in memory for the current session only and
are not written to disk. Server-join codes (V2) are stored on a remote
backend, not under `Flow/`.

---

## What Gets Saved

### Auto-save (`Flow/<GameId>.json`)

The file is written automatically whenever any control changes state.

```json
{
  "_flags": {
    "WalkSpeed": 24,
    "InfiniteJump": true,
    "TeamColor": "Blue",
    "ActiveFeatures": ["ESP", "Speed"],
    "SelectedTheme": "Aurora",
    "UIFont": "Bangers",
    "NotifyPosition": "Down-Right",
    "NotifySound": "Soft Ping",
    "TranslateLanguage": "Spanish"
  },
  "_keybinds": {
    "PlayerModule": "Enum.KeyCode.RightControl"
  },
  "_library": {},
  "_theme": "Aurora"
}
```

The last five `_flags` entries above are all new in V2 — they're driven by
the same generic dropdown/checkbox flag mechanism every other control uses,
so nothing special was needed to add them.

### V1/V2 named config snapshot

A named config is a full snapshot taken at save time:

```json
{
  "_flags": { ... all current flag values, including UIFont / NotifyPosition / NotifySound / TranslateLanguage ... },
  "_keybinds": { ... all keybind assignments ... },
  "_theme": "Cyber",
  "_window_x": 0,
  "_window_y": 0
}
```

---

## Using the Settings Tab

The **Config** module in the Settings tab exposes:

| Control           | Action                                          |
|-------------------|-------------------------------------------------|
| Config Name field | Type the name for save / duplicate destination  |
| Saved Configs     | Dropdown listing all named configs on disk      |
| Save              | Snapshot current state → Config Name            |
| Load              | Restore selected config, apply saved theme, and apply saved UI font |
| Delete            | Remove selected config from disk                |
| Duplicate         | Copy selected config → Config Name              |

If **Config Name** is left blank when saving, `game.PlaceId` is used as
the default name (e.g. `"123456789"`).

---

## Programmatic API

### Config:save_named(name, data)

```lua
Config:save_named("my_preset", {
    _flags = Library._config._flags,
    _keybinds = Library._config._keybinds,
    _theme = "Cyber",
})
-- Returns true on success, false on failure
```

### Config:load_named(name) → table | nil

```lua
local data = Config:load_named("my_preset")
if data then
    Library._config._flags = data._flags
    Library._config._keybinds = data._keybinds
    if data._theme then
        Window:apply_theme(data._theme)
    end
    -- V2: restore the UI font the same way, if one was saved
    local savedFont = data._flags and data._flags["UIFont"]
    if savedFont and Enum.Font[savedFont] then
        Window:set_ui_font(Enum.Font[savedFont])
    end
end
```

### Config:delete_named(name)

```lua
Config:delete_named("my_preset")
-- Returns true on success
```

### Config:list_named() → { string }

```lua
local names = Config:list_named()
-- { "my_preset", "pvp_config", "speedrun" }
```

### Duplicate (copy one config to another name)

```lua
local src = Config:load_named("default")
if src then
    Config:save_named("pvp_tweaked", src)
end
```

---

## Flag System

Every control that stores state uses a **flag** string as its key.
Flags are read and written through `Library._config._flags[flag]`.

| Element type   | Stored type           | Example value              |
|----------------|-------------------------|-----------------------------|
| Checkbox       | boolean                 | `true`                      |
| Slider         | number                   | `24.5`                      |
| Dropdown       | string                   | `"Head"`                    |
| Multi-dropdown | { string }               | `{"ESP","Speed"}`           |
| Textbox        | string                   | `"some text"`               |
| Colorpicker    | { number×4 }             | `{0.51,0.39,1.0, 1.0}`      |
| Keybind (V1)   | string (KeyCode name)    | `"Enum.KeyCode.F"`          |
| UI Font (V2)   | string (Enum.Font name)  | `"Bangers"`                 |
| Notify Position (V2) | string             | `"Down-Right"`              |
| Notify Sound (V2)    | string             | `"Soft Ping"` or `"None"`   |
| Translate Language (V2) | string          | `"Spanish"` or `"English"`  |

Flags are set the moment a control changes and are auto-persisted to
`Flow/<GameId>.json`. Named configs require an explicit **Save** action.

---

## Restoring State on Load

Controls read their saved flag on creation and restore themselves:

```lua
-- Checkbox: restored to true if _flags["MyFlag"] == true
Module:create_checkbox({ flag="MyFlag", callback=fn })

-- Slider: restored to 24.5 if _flags["Speed"] == 24.5
Module:create_slider({ flag = "Speed", minimum_value = 8, maximum_value = 100,
                       value = 16, callback = fn })
```

The same mechanism restores the Settings tab's own controls — theme, font,
notification position/sound, and language all fire their saved value the
moment the Settings tab is built, in addition to a slightly earlier restore
pass at window creation so the font and translation are correct from the
very first frame rather than only kicking in once the Settings tab loads.

Call `Window:load()` *after* all tabs and modules are created so that the
restored callbacks fire with the saved values at startup.

---

## Config Versioning

Named configs store a snapshot at a point in time. If you add new flags
after a config was saved, those flags will use their default values after
loading (the element's `value` / `default` parameter). This is safe and
requires no migration — this is exactly how V2's new flags behave when
loading a config saved under V1: they simply fall back to their defaults.

---

## Manual Save / Load (still works)

```lua
-- Force-save the auto-save file
Config:save(game.GameId, Library._config)

-- Force-load (returns the config table or creates a blank one)
local cfg = Config:load(game.GameId, Library._config)
```

These work identically across V1 and V2 and are still used internally by
every element's `change_state` callback.
