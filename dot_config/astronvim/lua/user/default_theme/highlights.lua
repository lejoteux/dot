-- Modify the color palette for the default theme
return function(hl) -- or a function that returns a new table of colors to set
  local C = require "default_theme.colors"

  hl.Normal = { fg = C.fg, bg = C.bg }

  -- New approach instead of diagnostics_style
  hl.DiagnosticError.bold = true
  hl.DiagnosticHint.bold = true
  hl.DiagnosticInfo.bold = true
  hl.DiagnosticWarn.bold = true

  return hl
end
