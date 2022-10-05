local dap = require('dap')

-- Debugger installation location
local HOME = os.getenv "HOME"
local DEBUGGER_LOCATION = HOME .. "/.local/share/nvim/netcoredbg"

dap.adapters.chrome = {
  type = "executable",
  command = "node",
  args = { os.getenv("HOME") .. "/.config/nvim/vscode-chrome-debug/out/src/chromeDebug.js" } -- TODO adjust
}

dap.configurations.javascriptreact = { -- change this to javascript if needed
  {
    type = "chrome",
    request = "attach",
    program = "${file}",
    cwd = vim.fn.getcwd(),
    sourceMaps = true,
    protocol = "inspector",
    port = 9222,
    webRoot = "${workspaceFolder}"
  }
}

dap.configurations.typescriptreact = { -- change to typescript if needed
  {
    type = "chrome",
    request = "attach",
    program = "${file}",
    cwd = vim.fn.getcwd(),
    sourceMaps = true,
    protocol = "inspector",
    port = 9222,
    webRoot = "${workspaceFolder}"
  }
}

-- Adapter configuration
dap.adapters.coreclr = {
  type = "executable",
  command = DEBUGGER_LOCATION .. "/netcoredbg",
  args = { "--interpreter=vscode" },
}

-- Configuration
dap.configurations.cs = {
  {
    type = "coreclr",
    name = "launch - netcoredbg",
    request = "launch",
    program = function()
      return vim.fn.input('Path to DLL > ', vim.fn.getcwd() .. '/bin/Debug/', 'file')
    end,
  },
}
