return {
  "williamboman/mason.nvim",
  opts = function(_, opts)
    opts.ensure_installed = opts.ensure_installed
      or {
        -- LSP
        "json-lsp",
        "jdtls",

        -- Formaters
        "prettierd",
        "yapf",
        "tflint",

        -- Linters
        "eslint_d",
        "pylint",

        -- DAP
        "java-debug-adapter",
        "java-test",
      }
    vim.list_extend(opts.ensure_installed, { "codelldb" })
    if diagnostics == "bacon-ls" then
      vim.list_extend(opts.ensure_installed, { "bacon" })
    end
  end,
}
