local dap = require('dap')
dap.adapters.lldb = {
  type = 'executable',
  command = 'lldb-vscode', -- adjust as needed
  name = "lldb",
}
dap.configurations.cpp = {
  {
    name = "Launch",
    type = "lldb",
    request = "launch",
		--program = {'${relativeFileDirname}/${fileBasenameNoextension}.o'},
    --program = function()
    --  return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
    --end,
    program = function()
      return vim.fn.expand('%:r').. '.o'
    end,
    cwd = '${workspaceFolder}',
    stopOnEntry = false,
    args = {},

    -- if you change `runInTerminal` to true, you might need to change the yama/ptrace_scope setting:
    --
    --    echo 0 | sudo tee /proc/sys/kernel/yama/ptrace_scope
    --
    -- Otherwise you might get the following error:
    --
    --    Error on launch: Failed to attach to the target process
    --
    -- But you should be aware of the implications:
    -- https://www.kernel.org/doc/html/latest/admin-guide/LSM/Yama.html
    runInTerminal = false,
		env = function()
    local variables = {}
    for k, v in pairs(vim.fn.environ()) do
      table.insert(variables, string.format("%s=%s", k, v))
    end
    return variables
  end,
  },
}
dap.set_log_level('TRACE')
--dap.configurations.cpp = {
--    {
--      -- If you get an "Operation not permitted" error using this, try disabling YAMA:
--      --  echo 0 | sudo tee /proc/sys/kernel/yama/ptrace_scope
--      name = "Attach to process",
--      type = 'cpp',  -- Adjust this to match your adapter name (`dap.adapters.<name>`)
--      request = 'attach',
--      pid = require('dap.utils').pick_process,
--      args = {},
--    },
--}
-- If you want to use this for rust and c, add something like this:
dap.configurations.c = dap.configurations.cpp
dap.configurations.rust = dap.configurations.cpp


