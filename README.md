# README

Put neovim messages into the quickfix list by command `QuickfixMessages`.

## Get Started

lazy.nvim

```lua
{
  "whisperpine/quickfix-messages.nvim",
  cmd = "QuickfixMessages",
  opts = {
    -- automatically open quickfix window
    open_quickfix = true,
  },
},
```
