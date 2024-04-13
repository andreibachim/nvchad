local configs = require("nvchad.configs.lspconfig")

local on_attach = configs.on_attach
local capabilities = configs.capabilities
local on_init = configs.on_init

local lspconfig = require "lspconfig"

local servers = { "htmx", "cssls", "docker_compose_language_service" }

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_init = on_init,
    on_attach = on_attach,
    capabilities = capabilities,
  }
end

