--------------------------------------------------------------------------------
--  Handler.......... : onZoomInConcluded
--  Author........... : Luiz C. Vieira
--  Description...... : Evento indicativo do encerramento da aproximação da câmera
--                      no momento da seleção de um objeto.
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function DMF_MainAI.onZoomInConcluded ( )    

    local hScene = application.getCurrentUserScene ( )
    local sTag = scene.getObjectTag ( hScene, this.hSelObj ( ) )

    user.sendEvent ( this.getUser ( ), "DMF_PuzzleBilheteriaAI", "onCheckHiddenMindinho", sTag, this.hSelObj ( ) )
        
    object.sendEvent ( this.hSelObj ( ), "DMF_Animation", "onStop" )
    
    local hItems = hud.getComponent ( this.getUser ( ), "game.BtItems" )
    if ( hItems ) then
        hud.setComponentVisible ( hItems, false )
    end
    
    hud.newTemplateInstance ( this.getUser ( ), "DMF_HUDObject", "obj_hud" )
    
    sound.play( this.hSelObj ( ), 0, 255, false, 1 )
    
    if ( string.compare ( sTag, "Avatar" ) == 0 and this.bFirstTime ( ) ) then
        user.sendEvent ( this.getUser ( ), "DMF_PuzzleBilheteriaAI", "onComment", "Intro2" )
        this.bFirstTime ( false )
    end
    
end
--------------------------------------------------------------------------------
