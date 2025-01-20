return {
  "williamboman/mason.nvim",
  opts = {
    ensure_installed = {
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
    },
  },
}
