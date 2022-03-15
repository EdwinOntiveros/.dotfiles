local lsp = require'lspconfig'

local servers = {

    ['asm']  = {
        server = asm_lsp,
    },

    ['bash'] = {
        server = bashls,
    },

    ['clang'] = {
        server = clangd,
    },

    ['cmake'] = {
        server = cmake,
    },

    ['csharp'] = {
        server = csharp_ls,
    },

    ['golang'] = {
        server = golanggci_lint_ls,
    },

    ['docker'] = {
        server = dockerls,
    },

    ['java'] = {
        server = java_language_server,
    },

    ['json'] = {
        server = jsonls,
    },

    ['omnisharp'] = {
        server = omnisharp,
    },

    ['vim'] = {
        server = vimls,
    },

    ['zig'] = {
        server = zls,
    },

}

