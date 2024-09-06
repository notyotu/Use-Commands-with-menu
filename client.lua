RegisterCommand("misiones", function()
    lib.showContext('missions_menu')
end)

AddEventHandler('activateCommand', function(data)
    local command = data.command
    if command then
        ExecuteCommand(command)
    end
end)

AddEventHandler('onResourceStart', function(resource)
    if resource ~= cache.resource then return end

    local options = {}

    for i, option in ipairs(Config.MenuOptions) do
        table.insert(options, {
            title = option.label,
            description = "Click para ver el cooldown",
            event = "activateCommand",
            args = {
                command = option.command
            }
        })
    end

    lib.registerContext({
        id = 'missions_menu',
        title = Config.MenuTitle,
        options = options
    })
end)
