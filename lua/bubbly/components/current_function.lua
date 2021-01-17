-- =================================================
-- BUBBLY.NVIM TAG BAR BASED CURRENT FUNCTION BUBBLE
-- =================================================
-- Created by: Ratheesh [github.com/ratheesh]

local bubble_factory = require'bubbly.factories.bubble'
local settings = {
   color = vim.g.bubbly_colors.current_function,
   style = vim.g.bubbly_styles.current_function,
}

if not settings.color then
   print[[[BUBBLY.NVIM] => [WARNING] Couldn't load color configuration for the component 'current_function', the default color will be used.]]
   settings.color = vim.g.bubbly_colors.default
end

if not settings.style then
   print[[[BUBBLY.NVIM] => [WARNING] Couldn't load style configuration for the component 'current_function', the default style will be used.]]
   settings.style = vim.g.bubbly_styles.default
end

return function(inactive)
   if inactive then return '' end
   -- local data = 'test()'-- vim.b.bubbly_current_function
   -- local data = vim.call('tagbar#currenttag('[%s]','')')
   local data = vim.call('tagbar#currenttag', '%s', '')
   return bubble_factory{{
         data = data,
         color = settings.color,
         style = settings.style,
   }}
end
