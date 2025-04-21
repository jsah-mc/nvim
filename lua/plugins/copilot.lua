return {
  {
    "CopilotC-Nvim/CopilotChat.nvim",
    dependencies = {
      { "github/copilot.vim" }, -- or zbirenbaum/copilot.lua
      { "nvim-lua/plenary.nvim", branch = "master" }, -- for curl, log and async functions
    },
    build = "make tiktoken", -- Only on MacOS or Linux
    opts = {
      -- See Configuration section for options
      mappings = {
      submit_prompt = {
        normal = '<Leader>s',
        insert = '<Leader>zs'
      }
    },
    -- See Commands section for default commands if you want to lazy load on them
    --config = function()
    --vim.api.nvim_set_keymap("n", "<leader>o", ":CopilotChatOpen", { noremap = true, silent = true })
    --end,
  },
}
