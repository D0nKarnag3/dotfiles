return {
  'nvim-telescope/telescope.nvim',
  dependencies = {'nvim-lua/popup.nvim', 'nvim-lua/plenary.nvim'},
  config = function ()
    local telescope = require("telescope")
    require'telescope'.setup{
      defaults = {
        file_ignore_patterns = {
          "node_modules/.*"
        }
      }
    }

    -- set keymaps
    local keymap = vim.keymap

    keymap.set('n', '<leader>fe', '<CMD>lua require("telescope.builtin").file_browser{ cwd = vim.fn.expand("%:p:h") }<CR>')
    keymap.set('n', '<leader>fg', '<CMD>lua require("telescope.builtin").git_files{}<CR>')
    keymap.set('n', '<leader>ff', '<CMD>lua require("telescope.builtin").find_files{ hidden = true }<CR>')
    keymap.set('n', '<leader>fl', '<CMD>lua require("telescope.builtin").live_grep()<CR>')
    keymap.set('n', '<leader>fb', '<CMD>lua require("telescope.builtin").buffers()<CR>')
    keymap.set('n', '<leader>fh', '<CMD>lua require("telescope.builtin").help_tags()<CR>')
    keymap.set('n', '<leader>fd', '<CMD>lua require("telescope.builtin").lsp_workspace_diagnostics()<CR>')
  end
}
