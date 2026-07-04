-- ~/.wezterm.lua
-- Config minimalista, portátil, fundo preto clássico

local wezterm = require("wezterm")
local config = wezterm.config_builder()

-- Aparência: preto puro, sem frescura
config.color_scheme = "Builtin Solarized Dark" -- troque se quiser, veja nota abaixo
config.colors = {
  background = "#000000",
  foreground = "#e0e0e0",
}

-- Fonte (usa a que existir no sistema, com fallback)
config.font = wezterm.font_with_fallback({
  "JetBrains Mono",
  "Fira Code",
  "Menlo",
  "Consolas",
})
config.font_size = 13.0

-- Interface limpa, mas com barra de título nativa (fechar/minimizar/maximizar)
-- e aba sempre visível
config.enable_tab_bar = true
config.hide_tab_bar_if_only_one_tab = false
config.window_decorations = "TITLE|RESIZE" -- título nativo do SO + bordas redimensionáveis
config.window_padding = {
  left = 8,
  right = 8,
  top = 8,
  bottom = 8,
}

-- Performance / comportamento sensato
config.scrollback_lines = 5000
config.audible_bell = "Disabled"
config.check_for_updates = false

-- Atalhos básicos e rápidos (parecidos com o padrão, mas garantidos)
config.keys = {
  { key = "t", mods = "CTRL|SHIFT", action = wezterm.action.SpawnTab("CurrentPaneDomain") },
  { key = "w", mods = "CTRL|SHIFT", action = wezterm.action.CloseCurrentTab({ confirm = true }) },
  { key = "c", mods = "CTRL|SHIFT", action = wezterm.action.CopyTo("Clipboard") },
  { key = "v", mods = "CTRL|SHIFT", action = wezterm.action.PasteFrom("Clipboard") },
  { key = "=", mods = "CTRL", action = wezterm.action.IncreaseFontSize },
  { key = "-", mods = "CTRL", action = wezterm.action.DecreaseFontSize },
  { key = "0", mods = "CTRL", action = wezterm.action.ResetFontSize },
  -- Abre lazygit em um painel flutuante (fecha sozinho ao sair)
  {
    key = "g",
    mods = "CTRL|SHIFT",
    action = wezterm.action.SpawnCommandInNewTab({
      args = { "lazygit" },
    }),
  },
}

return config
