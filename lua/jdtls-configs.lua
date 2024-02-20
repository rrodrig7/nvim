local nvim_lsp = require('lspconfig')
local on_attach = function(client, bufnr)
    require('completion').on_attach(client, bufnr)
end
nvim_lsp.jdtls.setup {
    on_attach = on_attach,
    cmd = {'jdtls'},
    filetypes = {'java'},
    root_dir = function(fname)
        return require('jdtls.setup').find_root(fname) or vim.loop.os_homedir()
    end
}
