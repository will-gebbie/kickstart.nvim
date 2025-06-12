local M = {}

--- Toggle BasedPyright typeCheckingMode and inlay hints
function M.toggle_basedpyright_settings(opts)
  opts = opts or {}

  -- Get the LSP client for basedpyright
  local client = vim.lsp.get_clients({ name = 'basedpyright' })[1]
  if not client then
    vim.notify('BasedPyright LSP is not active', vim.log.levels.WARN)
    return
  end

  -- Toggle the typeCheckingMode
  local analysis = client.config.settings.basedpyright.analysis
  if analysis.typeCheckingMode == 'basic' then
    analysis.typeCheckingMode = 'recommended'
  else
    analysis.typeCheckingMode = 'basic'
  end

  -- Restart the LSP to apply changes
  vim.lsp.stop_client(client.id)
  vim.lsp.enable(client.name)
  vim.defer_fn(function()
    vim.cmd 'LspStart basedpyright'
    if not opts.silent then
      vim.notify('BasedPyright restarted with typeCheckingMode: ' .. analysis.typeCheckingMode)
    end
  end, 100)
end

return M
