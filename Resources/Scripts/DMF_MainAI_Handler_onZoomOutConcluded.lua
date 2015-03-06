--------------------------------------------------------------------------------
--  Handler.......... : onZoomOutConcluded
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function DMF_MainAI.onZoomOutConcluded (  )
    hud.destroyTemplateInstance ( this.getUser ( ), "obj_hud" )
    local hItems = hud.getComponent ( this.getUser ( ), "game.BtItems" )
    if ( hItems ) then
        hud.setComponentVisible ( hItems, true )
    end
    this.hSelObj ( nil )
    
    user.sendEvent ( this.getUser ( ), "DMF_PuzzleBilheteriaAI", "onCheckFirstItem" )

end
--------------------------------------------------------------------------------
