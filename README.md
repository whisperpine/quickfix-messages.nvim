# README

A minimalist neovim plugin to put messages into the quickfix list by command
`QuickfixMessages`.

## Get Started

Install this plugin by [lazy.nvim](https://github.com/folke/lazy.nvim):

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
