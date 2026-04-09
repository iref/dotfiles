local mason = require("mason")
local mason_lspconfig = require("mason-lspconfig")

mason.setup({})
mason_lspconfig.setup({
    ensure_installed = {
        "ts_ls",
        "elixirls",
        "kotlin_language_server",
        "lua_ls",
        "gopls",
    },
})

-- Default capabilities for all servers (includes nvim-cmp completion)
vim.lsp.config('*', {
    capabilities = require('cmp_nvim_lsp').default_capabilities()
})

-- Fix undefined global 'vim' in lua files
vim.lsp.config('lua_ls', {
    settings = {
        Lua = {
            diagnostics = {
                globals = { "vim" }
            }
        }
    }
})

-- Enable servers
vim.lsp.enable({ 'ts_ls', 'elixirls', 'kotlin_language_server', 'lua_ls', 'gopls' })

-- Keymaps on attach
vim.api.nvim_create_autocmd('LspAttach', {
    callback = function(ev)
        local opts = { buffer = ev.buf, remap = false }
        vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
        vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
        vim.keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, opts)
        vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end, opts)
        vim.keymap.set("n", "[d", function() vim.diagnostic.jump({ count = -1 }) end, opts)
        vim.keymap.set("n", "]d", function() vim.diagnostic.jump({ count = 1 }) end, opts)
        vim.keymap.set("n", "<leader>vca", function() vim.lsp.buf.code_action() end, opts)
        vim.keymap.set("n", "<leader>vrr", function() vim.lsp.buf.references() end, opts)
        vim.keymap.set("n", "<leader>vrn", function() vim.lsp.buf.rename() end, opts)
        vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end, opts)
    end
})

-- Completion
local cmp = require("cmp")
local cmp_select = { behavior = cmp.SelectBehavior.Select }
cmp.setup({
    snippet = {
        expand = function(args)
            require('luasnip').lsp_expand(args.body)
        end,
    },
    mapping = cmp.mapping.preset.insert({
        ["<C-p>"] = cmp.mapping.select_prev_item(cmp_select),
        ["<C-n>"] = cmp.mapping.select_next_item(cmp_select),
        ["<C-y>"] = cmp.mapping.confirm({ select = true }),
        ["<C-space>"] = cmp.mapping.complete(),
    }),
    sources = cmp.config.sources({
        { name = 'nvim_lsp' },
        { name = 'luasnip' },
    })
})

vim.diagnostic.config({
    virtual_text = true,
    signs = {
        text = {
            [vim.diagnostic.severity.ERROR] = "E",
            [vim.diagnostic.severity.WARN]  = "W",
            [vim.diagnostic.severity.HINT]  = "H",
            [vim.diagnostic.severity.INFO]  = "I",
        }
    }
})
