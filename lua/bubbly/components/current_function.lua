-- ===============
-- CURRENT_FUNCTION BUBBLE
-- ===============
-- Created by Ratheesh <github.com/ratheesh>

local settings = {
   color = vim.g.bubbly_colors.current_function,
   style = vim.g.bubbly_styles.current_function,
}

if not settings.color then
   require'bubbly.utils.io'.warning[[[BUBBLY.NVIM] => [WARNING] Couldn't load color configuration for the component 'current_function', the default color will be used.]]
   settings.color = vim.g.bubbly_colors.default
end
if not settings.style then
   require'bubbly.utils.io'.warning[[[BUBBLY.NVIM] => [WARNING] Couldn't load style configuration for the component 'current_function', the default style will be used.]]
   settings.style = vim.g.bubbly_styles.default
end

return function(inactive)
  return {{
    data = vim.call('tagbar#currenttag', '%s', ''),
    color = inactive and settings.inactive_color or settings.color.current_function,
    style = inactive and settings.inactive_style or settings.style.current_function,
  }}
end
-- End of File
