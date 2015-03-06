--------------------------------------------------------------------------------
--  Handler.......... : onDisplayItems
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function DMF_PuzzleBilheteriaAI.onDisplayItems (  )
    local bStone = ( hashtable.get ( this.htItems ( ), "Pedra" ) ~= nil )
    local bCan = ( hashtable.get ( this.htItems ( ), "Latinha" ) ~= nil )
    local bTicket = ( hashtable.get ( this.htItems ( ), "Ingresso" ) ~= nil )
    
    local hStone = hud.getComponent ( this.getUser ( ), "item_hud.BtStone" )
    local hCan = hud.getComponent ( this.getUser ( ), "item_hud.BtCan" )
    local hTicket = hud.getComponent ( this.getUser ( ), "item_hud.BtTicket" )

    hud.setComponentVisible ( hStone, bStone )
    hud.setComponentVisible ( hCan, bCan )
    hud.setComponentVisible ( hTicket, bTicket )
end
--------------------------------------------------------------------------------
