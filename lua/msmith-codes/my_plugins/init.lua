vim.keymap.set("n", "<leader>ie", require("msmith-codes.my_plugins.go_err_snippet").insert_if_err, { desc = "Insert Go if err != nil block" })
