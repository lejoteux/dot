-- Overrides `require("null-ls").setup(config)`
return function(config)
  local null_ls = require("null-ls")

  config.sources = {
    null_ls.builtins.diagnostics.flake8,
    null_ls.builtins.diagnostics.mypy,
    null_ls.builtins.diagnostics.shellcheck,

    null_ls.builtins.formatting.prettier,
    null_ls.builtins.formatting.shfmt,
    null_ls.builtins.formatting.stylua,
  }

  return config
end
