return {
  name = 'Azure DevOps WI',
  dir = '~/repos/azure_devops.nvim',
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-telescope/telescope.nvim",
  },
  config = function()
    require("azure_devops").setup({
      personal_access_token = os.getenv("AZURE_PAT"),
      organization = os.getenv("AZURE_ORG"),
      project = os.getenv("AZURE_PROJ"),
      enable_work_item_details_auto_command = true
    })

    -- set keymaps
    local keymap = vim.keymap -- for conciseness

    keymap.set("n", "<leader>as", function()
        require('azure_devops').prompt_search_work_items()
    end, { noremap = true, silent = true, desc = "Azure DevOps Search Work Items" })
    keymap.set("n", "<leader>ad", ':AzureGetWorkItem<CR>', { noremap = true, silent = true, desc = "Azure DevOps show detailed informail of work item" })
    keymap.set("n", "<leader>av", ':AzureShowWorkItemVirtualText<CR>', { noremap = true, silent = true, desc = "Azure DevOps Add work item details" })
    keymap.set("n", "<leader>ac", ':AzureClearWorkItemVirtualText<CR>', { noremap = true, silent = true, desc = "Azure DevOps Open work item in browser" })
    keymap.set("n", "<leader>ao", ':AzureOpenWorkItemInBrowser<CR>', { noremap = true, silent = true, desc = "Azure DevOps Open work item in browser" })
  end
}
