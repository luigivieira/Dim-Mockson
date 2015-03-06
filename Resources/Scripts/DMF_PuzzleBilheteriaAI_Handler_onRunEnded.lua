--------------------------------------------------------------------------------
--  Handler.......... : onRunEnded
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function DMF_PuzzleBilheteriaAI.onRunEnded ( hRunner, hTarget )

    local hScene = application.getCurrentUserScene ( )
    local hSmoke = scene.getTaggedObject ( hScene, "Smoke" )
    object.sendEvent ( hSmoke, "DMF_Fight", "onPlay", hRunner, hTarget )

end
--------------------------------------------------------------------------------
