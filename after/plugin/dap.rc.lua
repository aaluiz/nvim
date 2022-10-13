local dap = require('dap')

dap.adapters.chrome = {
  type = "executable",
  command = "node",
  args = { os.getenv("HOME") .. "/.config/nvim/vscode-chrome-debug/out/src/chromeDebug.js" } -- TODO adjust
}
-- React
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
-- Angular
dap.configurations.typescript = { -- change to typescript if needed
  {
    type = "chrome",
    request = "attach",
    cwd = vim.fn.getcwd(),
    port = 9222,
    webRoot = "${workspaceFolder}"
  }
}


-- C#
dap.adapters.coreclr = {
  type = 'executable',
  command = '/Users/aaluiz/.config/nvim/dotnet/netcoredbg/netcoredbg',
  args = { '--interpreter=vscode' }

}

dap.configurations.cs = {
  {
    type = "coreclr",
    name = "launch - netcoredbg",
    request = "launch",
    program = function()
      return vim.fn.input('Path to dll', vim.fn.getcwd() .. '/bin/Debug/', 'file')
    end,
  },
}

--[[
local dap = require('dap')
dap.adapters.firefox = {
  type = 'executable',
  command = 'node',
  args = { os.getenv('HOME') .. '/.config/nvim/vscode-firefox-debug/dist/adapter.bundle.js' },
}

dap.configurations.typescript = {
  name = 'Debug with Firefox',
  type = 'firefox',
  request = 'launch',
  reAttach = true,
  sourceMaps = true,
  url = 'http://localhost:4200',
  webRoot = '${workspaceFolder}/scr',
  firefoxExecutable = 'cd /Applications/Firefox.app/Contents/MacOS/ && .firefox'
}

dap.configurations.javascriptreact = { -- change this to javascript if needed
  {
    name = 'Debug with Firefox',
    type = 'firefox',
    request = 'launch',
    reAttach = true,
    sourceMaps = true,
    url = 'http://localhost:3000',
    webRoot = '${workspaceFolder}',
    firefoxExecutable = 'cd /Applications/Firefox.app/Contents/MacOS/ && .firefox'
  }
}

dap.configurations.typescriptreact = { -- change to typescript if needed
  {
    name = 'Debug with Firefox',
    type = 'firefox',
    request = 'launch',
    reAttach = true,
    sourceMaps = true,
    url = 'http://localhost:3000',
    webRoot = '${workspaceFolder}',
    firefoxExecutable = 'cd /Applications/Firefox.app/Contents/MacOS/ && .firefox'
  }
}
--]]
