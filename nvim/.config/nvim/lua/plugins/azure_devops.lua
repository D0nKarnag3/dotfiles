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
      show_work_item_icon = true,
      enable_work_item_details_auto_command = true
    })
  end
}
