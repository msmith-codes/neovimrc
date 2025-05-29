vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

local config = require("config")
vim.opt.number = config.editor.line_numbers
vim.opt.relativenumber = config.editor.relative_line_numbers
vim.o.cursorline = config.editor.highlight_line

require("msmith-codes.lazy")
require("msmith-codes.editor")
require("msmith-codes.mapping")

-- General/Global LSP Configuration
local lsp = vim.lsp

local make_client_capabilities = lsp.protocol.make_client_capabilities
function lsp.protocol.make_client_capabilities()
    local caps = make_client_capabilities()
    if not (caps.workspace or {}).didChangeWatchedFiles then
        vim.notify(
            'lsp capability didChangeWatchedFiles is already disabled',
            vim.log.levels.WARN
        )
    else
        caps.workspace.didChangeWatchedFiles = nil
    end

    return caps
end

vim.opt.laststatus = 3
