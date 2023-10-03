return {
  {
    "rcarriga/nvim-dap-ui",
    dependencies = {
      "mfussenegger/nvim-dap",
    },
    config = function()
      local dap = require("dap")
      local dapui = require("dapui")
      dapui.setup()
      dap.listeners.after.event_initialized["dapui_config"] = function()
        dapui.open()
      end
      dap.listeners.before.event_terminated["dapui_config"] = function()
        dapui.close()
      end
      dap.listeners.before.event_exited["dapui_config"] = function()
        dapui.close()
      end
    end,
  },
  {
    "mfussenegger/nvim-dap",
    config = function()
      vim.keymap.set(
        "n",
        "<Leader>db",
        "<cmd>lua require'dap'.toggle_breakpoint()<CR>",
        { noremap = true, silent = true }
      )
    end,
  },
  {
    "mfussenegger/nvim-dap-python",
    ft = "python",
    dependencies = {
      "mfussenegger/nvim-dap",
      "rcarriga/nvim-dap-ui",
    },
    config = function()
      require("dap-python").setup("~/.local/share/nvim/mason/packages/debugpy/bin/python")
      vim.keymap.set(
        "n",
        "<Leader>dp",
        "<cmd>lua require'dap-python'.test_method()<CR>",
        { noremap = true, silent = true }
      )
    end,
  },
}
