-- It's good practice to namespace custom handlers to avoid collisions
vim.diagnostic.handlers["my/notify"] = {
  show = function(namespace, bufnr, diagnostics, opts)
    -- In our example, the opts table has a "log_level" option
    local level = opts["my/notify"].log_level
    local name = vim.diagnostic.get_namespace(namespace).name
    local msg = string.format("%d diagnostics in buffer %d from %s",
      #diagnostics,
      bufnr,
      name)
    vim.notify(msg, level)
  end,
}
-- Users can configure the handler
vim.diagnostic.config({
  ["my/notify"] = {
    log_level = vim.log.levels.INFO,
    -- This handler will only receive "error" diagnostics.
    severity = vim.diagnostic.severity.ERROR,
    virtual_text = true,
  }
})

vim.keymap.set('n', 'gK', function()
  local new_config = not vim.diagnostic.config().virtual_lines
  vim.diagnostic.config({ virtual_lines = new_config })
end, { desc = 'Toggle diagnostic virtual_lines' })
