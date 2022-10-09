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
  firefoxExecutable = '/usr/bin/firefox'
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
    firefoxExecutable = '/usr/bin/firefox'
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
    firefoxExecutable = '/usr/bin/firefox'
  }
}
