Inventory = {}

-- private variables
local inventoryWindow
local inventoryPanel
local inventoryButton

-- public functions
function Inventory.init()
  connect(LocalPlayer, { onInventoryChange = Inventory.onInventoryChange,
                         onFreeCapacityChange = Inventory.onFreeCapacityChange })
  connect(g_game, { onGameEnd = Inventory.clear })

  Keyboard.bindKeyDown('Ctrl+I', Inventory.toggle)

  inventoryWindow = displayUI('inventory.otui', GameInterface.getRightPanel())
  inventoryWindow.onClose = Inventory.toggle
  inventoryPanel = inventoryWindow:getChildById('contentsPanel')
  inventoryButton = TopMenu.addGameToggleButton('inventoryButton', tr('Inventory') .. ' (Ctrl+I)', 'inventory.png', Inventory.toggle)
  inventoryButton:setOn(true)

  Inventory.refresh()
end

function Inventory.terminate()
  disconnect(LocalPlayer, { onInventoryChange = Inventory.onInventoryChange,
                         onFreeCapacityChange = Inventory.onFreeCapacityChange })
  disconnect(g_game, { onGameEnd = Inventory.clear })

  Keyboard.unbindKeyDown('Ctrl+I')

  inventoryWindow:destroy()
  inventoryButton:destroy()
  inventoryWindow = nil
  inventoryButton = nil
  inventoryPanel = nil

  Inventory = nil
end

function Inventory.refresh()
  local player = g_game.getLocalPlayer()
  if not player then return end

  for i=1,10 do
    Inventory.onInventoryChange(player, i, player:getInventoryItem(i))
  end
end

function Inventory.toggle()
  local visible = not inventoryWindow:isExplicitlyVisible()
  inventoryWindow:setVisible(visible)
  inventoryButton:setOn(visible)
end

-- hooked events
function Inventory.onInventoryChange(player, slot, item)
  local itemWidget = inventoryPanel:getChildById('slot' .. slot)
  itemWidget:setItem(item)
end

function Inventory.onFreeCapacityChange(player, freeCapacity)
  local widget = inventoryPanel:getChildById('capacity')
  widget:setText("Cap:\n" .. freeCapacity)
end

