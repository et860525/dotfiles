local status, lspkind = pcall(require, "lspkind")
if (not status) then return end

lspkind.init({
  -- enables text annotations
  --
  -- default: true
  mode = 'symbol',

  -- default symbol map
  -- can be either 'default' (requires nerd-fonts font) or
  -- 'codicons' for codicon preset (requires vscode-codicons font)
  --
  -- default: 'default'
  preset = 'codicons',

  -- override preset symbols
  --
  -- default: {}
  symbol_map = {
    Text = "♯",
    Method = "",
    Function = "ƒ",
    Constructor = "",
    Field = "→",
    Variable = "α",
    Class = "",
    Interface = "",
    Module = "",
    Property = "∷",
    Unit = "()",
    Value = "v",
    Enum = "",
    Keyword = "",
    Snippet = "",
    Color = "",
    File = "→",
    Reference = "⊷",
    Folder = "'",
    EnumMember = "",
    Constant = "π",
    Struct = "'",
    Event = "",
    Operator = "±",
    TypeParameter = ""
  },
})
