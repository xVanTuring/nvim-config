local null_ls = require("null-ls")
local augroup_format = vim.api.nvim_create_augroup("Format", { clear = true })
local sources = {
  null_ls.builtins.diagnostics.eslint_d.with({
    diagnostics_format = '[eslint] #{m}\n(#{c})'
  }),
  null_ls.builtins.formatting.prettierd,
  null_ls.builtins.code_actions.refactoring,
  null_ls.builtins.diagnostics.codespell,
}
null_ls.setup({
  sources = sources,
  on_attach = function(client, _bufnr)
    -- disable built-in lsp format
    if client.server_capabilities.documentFormattingProvider then
      vim.api.nvim_clear_autocmds { buffer = 0, group = augroup_format }
      vim.api.nvim_create_autocmd("BufWritePre", {
        group = augroup_format,
        buffer = 0,
        callback = function()
          vim.lsp.buf.format()
        end

      })
    end
  end,
})
