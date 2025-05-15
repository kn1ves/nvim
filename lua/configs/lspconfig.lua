-- load defaults i.e lua_lsp
require("nvchad.configs.lspconfig").defaults()

local lspconfig = require "lspconfig"

-- EXAMPLE
local servers = { "html", "cssls" }
local nvlsp = require "nvchad.configs.lspconfig"

-- lsps with default config
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = nvlsp.on_attach,
    on_init = nvlsp.on_init,
    capabilities = nvlsp.capabilities,
  }
end

lspconfig.pyright.setup {
  on_attach = nvlsp.on_attach,
  on_init = nvlsp.on_init,
  capabilities = nvlsp.capabilities,
  settings = {
    python = {
      pythonPath = "/mnt/c/git/localstack-dev/localstack/.venv/bin/python"
    }
  }
}

lspconfig.omnisharp.setup {
  cmd = { "OmniSharp" }, -- Change this to your OmniSharp path
  on_attach = nvlsp.on_attach,
  on_init = nvlsp.on_init,
  capabilities = nvlsp.capabilities,
  settings = {
    omnisharp = {
      useModernNet = true,  -- Enables support for .NET 8+
      enableRoslynAnalyzers = true,
      sdkPath = "/usr/lib/dotnet/sdk/8.0.112",  -- Change based on `dotnet --list-sdks`
      RoslynExtensionsOptions = {
        enableDecompilationSupport = true,  -- Enables decompilation for external libraries
        EnableAnalyzersSupport = true,      -- Optional: Enables Roslyn analyzers
        EnableImportCompletion = true,      -- Optional: Show unimported types in completion
      },
      FormattingOptions = {
        EnableEditorConfigSupport = true,   -- Respect .editorconfig
      },
      Sdk = {
        IncludePrereleases = true,          -- Include preview .NET SDKs
      },
    }
  }
}
