return {
    "mfussenegger/nvim-dap",
    config = function()
      local dap = require('dap')

      dap.configurations.python = {
        {
          type = 'python',
          request = 'launch',
          name = "syseng-saviyntctl save-data",
          program = "/home/kclark/systems/syseng_code/bin/syseng-saviyntctl",
          args = {
            "--ipa-server=ny5-ipa01-test.ipa.cboe.local",
            "save-data",
            "--file=~kclark/saviynt-data.json",
          },
        },
        {
          type = 'python',
          request = 'launch',
          name = "syseng-saviyntctl list-accounts",
          program = "/home/kclark/systems/syseng_code/bin/syseng-saviyntctl",
          args = { "--ipa-server=ny5-ipa01-test.ipa.cboe.local", "list-accounts" },
        },
        {
          type = 'python',
          request = 'launch',
          name = "syseng-saviyntctl sync",
          program = "/home/kclark/systems/syseng_code/bin/syseng-saviyntctl",
          args = { "--ipa-server=ny5-ipa01-test.ipa.cboe.local", "sync" },
        }
      }

      -- Key mappings for nvim-dap
      vim.api.nvim_set_keymap('n', '<leader>db', ":lua require'dap'.toggle_breakpoint()<CR>", { noremap = true, silent = true })
      vim.api.nvim_set_keymap('n', '<leader>dc', ":lua require'dap'.continue()<CR>", { noremap = true, silent = true })
      vim.api.nvim_set_keymap('n', '<leader>dn', ":lua require'dap'.step_over()<CR>", { noremap = true, silent = true })
      vim.api.nvim_set_keymap('n', '<leader>di', ":lua require'dap'.step_into()<CR>", { noremap = true, silent = true })
      vim.api.nvim_set_keymap('n', '<leader>dw', ":lua require'dap.ui.widgets'.hover()<CR>", { noremap = true, silent = true })
    end
}

