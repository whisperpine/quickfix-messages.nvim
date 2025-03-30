local M = {}

local config = {
  -- automatically open quickfix window
  open_quickfix = true,
}

function M.setup(opts)
  config = vim.tbl_extend("force", config, opts or {})
end

function M.quickfix_messages()
  local messages = vim.fn.execute("messages", "silent")
  local lines = vim.split(messages, "\n")
  local qf_list = {}
  for i, line in ipairs(lines) do
    if line ~= "" then
      table.insert(qf_list, { text = line, lnum = i })
    end
  end
  vim.fn.setqflist(qf_list, "r")
  if config.open_quickfix then
    vim.cmd "copen"
  end
end

vim.api.nvim_create_user_command("QuickfixMessages", M.quickfix_messages, {
  desc = "Put Neovim messages into the quickfix list",
})

return M
