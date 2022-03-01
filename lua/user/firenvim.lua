local blacklistedSites = {".*twitch\\.tv.*", ".*twitter\\.com.*"}

local localSettings = {
    [".*"] = {
        cmdline = "firenvim",
        content = "text",
        priority = 0,
        takeover = "never"
    }
}
for _, site in pairs(blacklistedSites) do
    localSettings[site] = { takeover = "never" }
end

vim.g.firenvim_config = {
    localSettings = localSettings
}

vim.cmd[[
if exists('g:started_by_firenvim')
  set laststatus=0
  let g:material_style = "darker"
  colorscheme material
else
  set laststatus=2
endif
]]
