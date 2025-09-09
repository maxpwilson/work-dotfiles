-- Lualine Configuration
-- This configuration is mainly implemented from their github repository.

local function get_venv(variable)
    local venv = os.getenv(variable)
    if venv ~= nil and string.find(venv, "/") then
        local orig_venv = venv
        for w in orig_venv:gmatch("([^/]+)") do
            venv = w
        end
        venv = string.format("%s", venv)
    end
    return venv
end

require('lualine').setup {
    options = {
        icons_enabled = false,
        theme = 'auto',
        component_separators = { left = '|', right = '|' },
        section_separators = { left = '|', right = '|' },
        disabled_filetypes = {
            statusline = {},
            winbar = {},
        },
        ignore_focus = {},
        always_divide_middle = true,
        globalstatus = false,
        refresh = {
            statusline = 1000,
            tabline = 1000,
            winbar = 1000,
        }
    },
    sections = {
        lualine_a = { 'mode' },
        lualine_b = { 'branch', 'diff', 'diagnostics' },
        lualine_c = {
            { function()
                local venv = get_venv("CONDA_DEFAULT_ENV") or get_venv("VIRTUAL_ENV") or "NO ENV"
                return "(" .. venv .. ")"
            end,
            }, 'filename' },
        lualine_x = { 'encoding', 'fileformat', 'filetype' },
        lualine_y = { 'progress' },
        lualine_z = { 'location' }
    },
    inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = { 'filename' },
        lualine_x = { 'location' },
        lualine_y = {},
        lualine_z = {}
    },
    tabline = {},
    winbar = {},
    inactive_winbar = {},
    extensions = {}
}
