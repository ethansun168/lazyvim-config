-- bootstrap lazy.nvim, LazyVim and your plugins
vim.g.clipboard = {
  name = "WSLClipboard",
  copy = {
    ["+"] = "clip.exe",
    ["*"] = "clip.exe",
  },
  paste = {
    ["+"] = 'powershell.exe -NoLogo -NoProfile -c [Console]::Out.Write($(Get-Clipboard -Raw).ToString().replace("`r", ""))',
    ["*"] = 'powershell.exe -NoLogo -NoProfile -c [Console]::Out.Write($(Get-Clipboard -Raw).ToString().replace("`r", ""))',
  },
  cache_enabled = 0,
}
require("config.lazy")
