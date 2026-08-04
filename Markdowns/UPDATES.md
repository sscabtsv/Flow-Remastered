# Flow — Updates

This tracks what's changed between versions. **V1** is the original Flow
[source](https://github.com/sscabtsv/Flow-Remastered/blob/main/Library/Source.lua). **V2** is the latest [source](https://github.com/sscabtsv/Flow-Remastered/blob/main/Library/New/Source.lua).

---

## V2

### New: Loading screen
A themed splash screen shows automatically from `Flow:CreateWindow` until
dismissed. Three modes, set via `LoadingMode`:
- `"modules"` (default) — dismisses as soon as `Window:load()` finishes.
- `"duration"` — stays up for at least `LoadingDuration` seconds, and still
  won't dismiss before `Window:load()` has actually run.
- `"tasks"` — waits for every function in `LoadingTasks` to finish (each run
  in parallel, failures caught individually), in addition to `Window:load()`.

`LoadingTitle`/`LoadingSubtitle` override the default text shown while it's up.

### New: Window outline
The window's outer glow was reworked from a large blurred backdrop frame
into a slim outline that hugs the window's actual edges. It reads the
window's real, currently-rendered size and position every frame rather than
being tweened separately to a hardcoded target, so it can't drift out of
alignment — including under mobile `UIScale` scaling, which is what caused
the original version to render visibly wider than the window on some
devices. It sits flush against the window's own corner radius and pulses
gently in the active theme's accent color.

### New: Watermark
`Flow:CreateWatermark({ title, fps, ping })` creates a small floating pill
with a live FPS/ping readout. Theme-aware, font-aware, returns
`{ SetTitle, Destroy }`. Also toggleable by the end user from
Settings → Watermark with no code required.

### New: Notification position
8 configurable anchors (`Down-Right`, `Down-Left`, `Up-Right`, `Up-Left`,
`Down-Center`, `Up-Center`, `Mid-Left`, `Mid-Right`) via Settings →
Notifications, or `CreateWindow({ NotificationPosition = "..." })`.
Entrance/exit animations now slide from whichever edge the position is
actually anchored to (previously always slid in from the left regardless of
where the notification stack was placed), and stacking order is reversed
for the `Up-*` positions so a new notification appears nearest the anchor
point instead of piling up at the far end of the stack.

### New: Notification sound
5 built-in sounds plus `"None"`, selectable via Settings → Notifications,
or `CreateWindow({ NotificationSound = "..." })`. If a new notification's
sound starts while the previous one is still playing, the previous sound is
stopped and destroyed first — sounds never overlap.

### Fixed: notifications losing their color on theme change
Every visible notification's accent bar used to get force-retinted to the
new theme's accent color on any theme change — including `success`/
`error`/`warning` notifications, which silently lost their semantic color
the moment the user switched themes. Notifications now carry a `Themed`
flag set once at creation: `true` for `info`/`loading`/default notifications
(which track the live theme), `false` for `success`/`error`/`warning`
(which keep their color for their entire lifetime, regardless of any later
theme change).

### Fixed: notification/watermark colors reading a stale theme
`apply_theme` only ever updated the *window instance's* current-theme field.
`SendNotification`, the watermark, and search results all read from a
separate, shared theme reference that was set once at window creation and
never touched again — so after any later theme change, newly created
notifications (and a newly created watermark) could render in the wrong
theme until something else happened to trigger a full retint. `apply_theme`
now keeps both references in sync.

### New: Font changer
Settings → Themes → Typography → **UI Font** lists every `Enum.Font`. Text
size is automatically compensated per font: each font's rendered width and
height are measured against the default and used to derive a damped,
clamped scale factor (0.8×–1.25×), so switching fonts never leaves text
illegibly tiny, oversized, or overflowing its container. Each element's
original designed size is remembered the first time it's touched, so
switching between several fonts in a row never compounds the scaling.
Applies retroactively to everything on screen and to anything created
afterward — new modules, notifications, the watermark.

### New: Live translation
Settings → Language translates every label, button, and description in the
window, live, into any of 20 languages, using a queued/deduplicated/cached
translation pipeline so identical strings across many elements share one
request instead of firing duplicates. Deliberately skips translating
"identifier" text — selected dropdown values, keybind names, numeric
readouts — since translating those would visually desync a control from
the value it actually represents. Set a default with
`CreateWindow({ Language = "..." })`.

### New: Server-join codes
Settings → Servers generates a short `FLOW-XXXXXX` code (visually distinct
from Roblox's own hyphenated GUID `JobId` format) for the server the user
is currently in, or resolves a code someone shares with you and teleports
you straight into that server via `TeleportService`.

### New themes
Aurora, Velvet, and Solstice, bringing the built-in total to 37.

### Fixed: rounded-corner rendering bugs
Several places had straight-edged bars sitting flush against a rounded
container with nothing clipping them, so their square corners visibly
poked past the curve:
- The notification duration bar at the bottom of each toast.
- The slider knob and color-picker cursors at their extreme (0%/100%)
  positions.
- The divider inside a module's header — most visible on a *collapsed*
  module, where that divider sits exactly on the module's own rounded
  bottom edge.

### New: `create_textbox` → `GetText`
Added a `GetText` method that always reads the textbox's current live text,
for cases (like the Servers module) where you need the value at an
arbitrary moment rather than only after the box loses focus.

---

## V1

The original Flow source this project started from — tabs, modules, the
core element set, the original theme system (34 presets, live editor,
saved custom themes), named config profiles, and the search bar.
