-- Configure LSP installations
return {
  ensure_installed = {
    "clangd",
    "jsonls",
    "marksman",
    "pyright",
    "sumneko_lua",
    "yamlls",
  },
}
