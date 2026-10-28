# TabConfig

Configuration for editor

# Installation

```sh
git clone https://github.com/stalker57241/tabconfig ~/.config/vis/plugins/tabconfig
```

# Usage

```lua
require('vis')
local tabconfig = require('plugins/tabconfig')
tabconfig.settreeview(--[[ API ]] require('plugins/treeview'))
tabconfig.settabs(
	--[[ API ]] require('plugins/tabview'),
    --[[ setupFN that returns api ]] require('plugins/tabdisplay')
)
tabconfig.setup()
```

Without tabdisplay:

```lua
require('vis')
local tabconfig = require('plugins/tabconfig')
tabconfig.settreeview(require('plugins/treeview'))
tabconfig.settabs(require('plugins/tabview'))
tabconfig.setup()
```

# Bindings

It binds:

- `<Tab>` for toggle tabpanel
- `tt` for toggle tabdisplay panel
- `th`/`tl` for prev/next tab
- `tq` for closing current tab

# Requirements

- [treeview](https://github.com/stalker57241/treeview)
- [tabview](https://github.com/stalker57241/tabview)
- [tabdisplay](https://github.com/stalker57241/tabdisplay)
