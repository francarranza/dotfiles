return {
  "williamboman/mason.nvim",
  opts = {
    ensure_installed = {
      -- Formaters
      "prettierd",
      "stylua",
      "yapf",
      "tflint",

      -- Linters
      "eslint_d",
      "pylint",
    },
  },
}
