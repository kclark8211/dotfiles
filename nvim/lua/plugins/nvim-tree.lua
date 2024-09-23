return {
  "nvim-tree/nvim-tree.lua",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    local nvimtree = require("nvim-tree")

    -- recommended settings from nvim-tree documentation
    vim.g.loaded_netrw = 1
    vim.g.loaded_netrwPlugin = 1

    vim.opt.termguicolors = true
    vim.opt.splitright = true  -- Ensure splits open on the right (still use this)

    -- configure nvim-tree
    nvimtree.setup({
      view = {
        width = 35,
        relativenumber = true,
      },
      git = {
        enable = true,
        ignore = false,
      },
      filters = {
        custom = { '__pycache__' }, -- Adjust this as needed
        git_clean = false, -- Show only tracked/modified files
        dotfiles = false, -- Optionally hide dotfiles (can set true to hide them)
      },
      on_attach = function(bufnr)
        local api = require('nvim-tree.api')

        -- Key mapping helper function
        local function opts(desc)
          return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
        end

        -- Mapping 'Enter' to open file or expand/collapse directory
        vim.keymap.set('n', '<CR>', api.node.open.edit, opts('Open'))

        -- Custom key mapping for vertical split on the right using wincmd
        vim.keymap.set('n', 'v', function()
          -- Open vertical split, then move the split to the far right with wincmd
          vim.cmd("vsplit " .. api.tree.get_node_under_cursor().absolute_path)
          vim.cmd("wincmd L")  -- Move the new split to the far right
        end, opts('Open: Vertical Split'))
      end
    })

    -- Global key mappings
    vim.api.nvim_set_keymap('n', '<leader>a', ':NvimTreeToggle<CR>', { noremap = true, silent = true })
    vim.api.nvim_set_keymap('n', '<leader>fg', ':Telescope live_grep<CR>', { noremap = true, silent = true })
    vim.api.nvim_set_keymap('n', '<leader>gt', ':lua require("nvim-tree.api").git.toggle_clean_filter()<CR>', { noremap = true, silent = true })
  end
}
