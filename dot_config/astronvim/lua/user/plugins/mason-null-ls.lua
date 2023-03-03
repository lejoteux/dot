-- Configure Formatter/Linter installations
return {
  ensure_installed = {
    "flake8",
    "mypy",
    "prettierd",
    "shellcheck",
    "shfmt",
    "stylua",
  },
  config = function(_, opts)
    local mason_null_ls = require("mason-null-ls")
    local null_ls = require("null-ls")

    mason_null_ls.setup(opts)
    mason_null_ls.setup_handlers({
      taplo = function()
      end,                 -- disable taplo in null-ls, it's taken care of by lspconfig
      prettierd = function()
        null_ls.register(
          null_ls.builtins.formatting.prettierd.with({ extra_filetypes = { "markdown", "rmd", "qmd" } })
        )
      end,
    })
  end,
}
