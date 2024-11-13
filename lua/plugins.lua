return {
    { 'dimaportenko/telescope-simulators.nvim' },
	{ 'nvim-telescope/telescope.nvim', tag = '0.1.8', dependencies = { 'nvim-lua/plenary.nvim' } },
	{ "rose-pine/neovim", name = "rose-pine", config = function()
		vim.cmd('colorscheme rose-pine')
	end },
    { "nvim-lualine/lualine.nvim", dependencies = { "nvim-tree/nvim-web-devicons" } },
	{ "nvim-treesitter/nvim-treesitter", name = "treesitter", build = ":TSUpdate" },
	{ "theprimeagen/harpoon" },
	{ "mbbill/undotree" },
	{ "tpope/vim-fugitive" },
    { "christoomey/vim-tmux-navigator", lazy = false },
    {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v4.x',
        lazy = true,
        config = false,
    },
    {
        'williamboman/mason.nvim',
        lazy = false,
        config = true,
    },
    -- Autocompletion
    {
        'hrsh7th/nvim-cmp',
        event = 'InsertEnter',
        dependencies = {
            {'L3MON4D3/LuaSnip'},
        }
    },
    -- LSP
    {
        'neovim/nvim-lspconfig',
        cmd = {'LspInfo', 'LspInstall', 'LspStart'},
        event = {'BufReadPre', 'BufNewFile'},
        dependencies = {
            {'hrsh7th/cmp-nvim-lsp'},
            {'williamboman/mason.nvim'},
            {'williamboman/mason-lspconfig.nvim'},
        },
        config = function()
            require "config.lsp-config"
        end
    }
}
