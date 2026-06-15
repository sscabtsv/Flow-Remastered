# Flow — Global Search System Documentation

## Overview

The global search system is a VS Code-style command palette built into
the library. It indexes every registered element across all tabs and
modules, lets the user filter by keyword in real time, and jumps
directly to a result with a single click.

---

## Opening the Search

| Method                              | Action                        |
|-------------------------------------|-------------------------------|
| `Ctrl + F`                          | Toggle search overlay open    |
| Click the 🔍 icon in the header     | Toggle search overlay open    |
| Settings → Search → "Open Search"  | Open search overlay           |
| `Escape`                            | Close search overlay          |

---

## What Gets Searched

The search index is built automatically. Every element creation call
(`create_label`, `create_button`, `create_checkbox`, `create_slider`,
`create_dropdown`, `create_colorpicker`, `create_keybind`,
`create_multidropdown`, `create_progressbar`, `create_status`,
`create_buttongroup`, `create_image`, `create_keybinddisplay`) registers
itself in `Library._search_registry`.

Each registry entry carries:

| Field             | Type     | Contents                              |
|-------------------|----------|---------------------------------------|
| `tab_name`        | string   | Parent tab title                      |
| `module_name`     | string   | Parent module flag or title           |
| `element_type`    | string   | `"checkbox"`, `"slider"`, etc.        |
| `element_title`   | string   | The `title` / `buttonText` setting    |
| `get_frame_fn`    | function | Returns the element's root Frame      |
| `switch_tab_fn`   | function | Switches the UI to the parent tab     |
| `open_module_fn`  | function | Opens the parent module if collapsed  |
| `jump_fn`         | function | Optional: scroll to the element       |

---

## Search Algorithm

Queries are matched with a case-insensitive substring search against:

- `element_title`
- `module_name`
- `tab_name`
- `element_type`

Any entry where **any** of those four fields contains the query string
is included in results.  There is no ranking — results appear in
registration order (top-to-bottom, left-to-right, tab-by-tab).

---

## Result Cards

Each result card shows:

```
┌─────────────────────────────────┐
│ CHECKBOX            tab › module│  ← breadcrumb
│ Infinite Jump                   │  ← element title
│                                →│  ← jump arrow
└─────────────────────────────────┘
```

| Part         | Source field                          |
|--------------|---------------------------------------|
| Type badge   | `element_type` (uppercased)           |
| Title        | `element_title`                       |
| Breadcrumb   | `tab_name › module_name`             |
| Arrow        | Pulses on hover                       |

Clicking a card:
1. Calls `switch_tab_fn()` — switches the active tab.
2. Calls `open_module_fn()` — opens the module (enables it if needed).
3. Calls `jump_fn()` — scrolls to the element (if implemented).
4. Closes the search overlay.

---

## Programmatic Search

```lua
local results = Window:search_elements("walk speed")
for _, entry in ipairs(results) do
    print(entry.tab_name, entry.module_name, entry.element_title)
end
```

---

## Registering Custom Elements

If you build your own element outside the standard API, you can manually
register it so it appears in search results:

```lua
Window:register_element({
    tab_name = "Combat",
    module_name = "Aimbot",
    element_type = "custom",
    element_title = "My Custom Control",
    get_frame_fn = function() return myFrame end,
    switch_tab_fn = function() -- switch to Combat tab end,
    open_module_fn = function() -- open the Aimbot module end,
    jump_fn = nil,   -- optional scroll-to behavior
})
```

---

## Search Overlay UI Structure

```
Container
└── SearchOverlay (Frame, ZIndex 20)
    ├── SearchRow (Frame)
    │   ├── 🔍 SearchBoxIcon
    │   ├── SearchBox (TextBox) ← live filtering
    │   └── ✕ SearchClose
    ├── SearchHint (TextLabel) ← "Type to search…" or "No results"
    └── Results (ScrollingFrame)
        ├── Result_1 (TextButton)
        │   ├── TypeTag   ("CHECKBOX")
        │   ├── TitleTag  ("Infinite Jump")
        │   ├── PathTag   ("General › Player")
        │   └── JumpArrow ("→")
        └── Result_N …
```

---

## Performance Notes

- The registry is a flat Lua array — searches iterate it in O(n) with
  no indexing overhead.  For typical UI sizes (< 200 elements) this
  runs well under 1 ms per keystroke.
- Result cards are destroyed and rebuilt on every text change.  Roblox
  recycles most memory immediately via Debris.  For very large UIs
  (500+ elements) you may want to debounce the rebuild by 50–100 ms.
- The overlay itself is a single Frame added to the main Container; it
  has no extra ViewportFrame or WorldSpace overhead.

---

## Keyboard Navigation

| Key         | Effect                                   |
|-------------|------------------------------------------|
| `Ctrl+F`    | Open / close overlay                     |
| `Escape`    | Close overlay                            |
| Type        | Live-filter results                      |
| Click card  | Jump to element, close overlay           |

Arrow key navigation (↑ / ↓ through results) is planned for a future
release.  In the meantime, use the mouse or scroll the results list.
