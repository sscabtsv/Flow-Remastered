# Flow — Config System Documentation

## Overview

The config system persists all user-controlled values across sessions.
v1 used a single auto-save file keyed by `game.GameId`.  v2 keeps that
behavior intact and adds a full named-config management layer with save,
load, delete, duplicate, and rename support.

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
    "ActiveFeatures": ["ESP", "Speed"]
  },
  "_keybinds": {
    "PlayerModule": "Enum.KeyCode.RightControl"
  },
  "_library": {},
  "_theme": "Midnight"
}
```

### v2 named config snapshot

A named config is a full snapshot taken at save time:

```json
{
  "_flags": { ... all current flag values ... },
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
| Load              | Restore selected config and apply saved theme   |
| Delete            | Remove selected config from disk                |
| Duplicate         | Copy selected config → Config Name              |

If **Config Name** is left blank when saving, `game.PlaceId` is used as
the default name (e.g. `"123456789"`).

---

## Programmatic API

### Config:save_named(name, data)

```lua
Config:save_named("my_preset", {
    _flags    = Library._config._flags,
    _keybinds = Library._config._keybinds,
    _theme    = "Cyber",
})
-- Returns true on success, false on failure
```

### Config:load_named(name) → table | nil

```lua
local data = Config:load_named("my_preset")
if data then
    Library._config._flags    = data._flags
    Library._config._keybinds = data._keybinds
    Window:apply_theme(data._theme)
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
local src  = Config:load_named("default")
if src then
    Config:save_named("pvp_tweaked", src)
end
```

---

## Flag System

Every control that stores state uses a **flag** string as its key.
Flags are read and written through `Library._config._flags[flag]`.

| Element type   | Stored type           | Example value              |
|----------------|-----------------------|----------------------------|
| Checkbox       | boolean               | `true`                     |
| Slider         | number                | `24.5`                     |
| Dropdown       | string                | `"Head"`                   |
| Multi-dropdown | { string }            | `{"ESP","Speed"}`          |
| Textbox        | string                | `"some text"`              |
| Colorpicker    | { number×4 }          | `{0.51,0.39,1.0, 1.0}`    |
| Keybind (v2)   | string (KeyCode name) | `"Enum.KeyCode.F"`         |

Flags are set the moment a control changes and are auto-persisted to
`Flow/<GameId>.json`.  Named configs require an explicit **Save** action.

---

## Restoring State on Load

Controls read their saved flag on creation and restore themselves:

```lua
-- Checkbox: restored to true if _flags["MyFlag"] == true
Module:create_checkbox({ flag="MyFlag", callback=fn })

-- Slider: restored to 24.5 if _flags["Speed"] == 24.5
Module:create_slider({ flag="Speed", minimum_value=8, maximum_value=100,
                       value=16, callback=fn })
```

Call `Window:load()` *after* all tabs and modules are created so that the
restored callbacks fire with the saved values at startup.

---

## Config Versioning

Named configs store a snapshot at a point in time.  If you add new flags
after a config was saved, those flags will use their default values after
loading (the element's `value` / `default` parameter).  This is safe and
requires no migration.

---

## Manual Save / Load (v1 API — still works)

```lua
-- Force-save the auto-save file
Config:save(game.GameId, Library._config)

-- Force-load (returns the config table or creates a blank one)
local cfg = Config:load(game.GameId, Library._config)
```

These work identically to v1 and are still used internally by every
element's `change_state` callback.
