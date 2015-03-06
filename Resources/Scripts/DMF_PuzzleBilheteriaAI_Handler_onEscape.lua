--------------------------------------------------------------------------------
--  Handler.......... : onEscape
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function DMF_PuzzleBilheteriaAI.onEscape ( sTag )
    hud.callAction ( this.getUser ( ), "obj_hud.CloseMenu", 10 )

    -- Fecha o diálogo do botelho, se estiver aberto
    hud.callAction ( this.getUser ( ), "game.CloseSpeechBalloon" )

    local hCam = application.getCurrentUserActiveCamera ( )
    object.sendEvent ( hCam, "DMF_CameraAI", "onZoomOut" )

    local hScene = application.getCurrentUserScene ( )
    local hObj = scene.getTaggedObject ( hScene, sTag )
    if ( object.hasAIModel ( hObj, "DMF_WalkBehaviourAI" ) ) then
        object.sendEvent ( hObj, "DMF_WalkBehaviourAI", "onResume" )
    end
end
--------------------------------------------------------------------------------
