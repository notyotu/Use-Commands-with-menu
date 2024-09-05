local ESX = exports["es_extended"]:getSharedObject()

-- Comando para abrir el menú
RegisterCommand("misiones", function()
    OpenMissionsMenu()
end)

-- Función para abrir el menú
function OpenMissionsMenu()
    local options = {}

    -- Crear opciones de menú basadas en el config.lua
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

    -- Mostrar el menú usando ox_lib
    lib.registerContext({
        id = 'missions_menu',
        title = Config.MenuTitle,
        options = options
    })

    lib.showContext('missions_menu')
end

-- Evento para activar el comando seleccionado
RegisterNetEvent('activateCommand')
AddEventHandler('activateCommand', function(data)
    local command = data.command
    if command then
        ExecuteCommand(command)
    end
end)
