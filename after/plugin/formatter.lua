local util = require("formatter.util")

require("formatter").setup({
  logging = true,
  log_level = vim.log.levels.WARN,
  filetype = {
    lua = {
      require("formatter.filetypes.lua").stylua,
      function()
        if util.get_current_buffer_file_name() == "special.lua" then
          return nil
        end
        return {
          exe = "stylua",
          args = {
            "--search-parent-directories",
            "--stdin-filepath",
            util.escape_path(util.get_current_buffer_file_path()),
            "--",
            "-",
          },
          stdin = true,
        }
      end,
    },
    python = {
      function()
        return {
          exe = "black",
          args = {
            "--quiet",
            "--stdin-filename",
            util.get_current_buffer_file_path(),
            "-",
          },
          stdin = true,
        }
      end,
    },
    php = {
      function()
        return {
          exe = "phpcbf",
          args = {
            "--standard=PSR12",
            "--stdin-path=" .. util.get_current_buffer_file_path(),
            "-",
          },
          stdin = true,
        }
      end,
    },
    javascript = {
      function()
        return {
          exe = "prettier",
          args = {
            "--stdin-filepath",
            util.get_current_buffer_file_path(),
            "--single-quote",
            "--trailing-comma",
            "all",
            "--print-width",
            "80",
          },
          stdin = true,
        }
      end,
    },
    typescript = {
      function()
        return {
          exe = "prettier",
          args = {
            "--stdin-filepath",
            util.get_current_buffer_file_path(),
            "--single-quote",
            "--trailing-comma",
            "all",
            "--print-width",
            "80",
          },
          stdin = true,
        }
      end,
    },
    javascriptreact = {
      function()
        return {
          exe = "prettier",
          args = {
            "--stdin-filepath",
            util.get_current_buffer_file_path(),
            "--single-quote",
            "--trailing-comma",
            "all",
            "--print-width",
            "80",
          },
          stdin = true,
        }
      end,
    },
    typescriptreact = {
      function()
        return {
          exe = "prettier",
          args = {
            "--stdin-filepath",
            util.get_current_buffer_file_path(),
            "--single-quote",
            "--trailing-comma",
            "all",
            "--print-width",
            "80",
          },
          stdin = true,
        }
      end,
    },
    ["*"] = {
      require("formatter.filetypes.any").remove_trailing_whitespace,
    },
  },
})

vim.api.nvim_create_autocmd({ "BufWritePost" }, {
  command = "FormatWriteLock",
})
