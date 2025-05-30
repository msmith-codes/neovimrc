return {
    dir = "~/plugins/docker_telescope.nvim",
    name = "docker_telescope",
    config = function()
        require("docker_telescope").setup({
            key = "<leader>di",
        })
    end,
}
