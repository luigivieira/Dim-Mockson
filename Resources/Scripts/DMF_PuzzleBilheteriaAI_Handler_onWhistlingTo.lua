--------------------------------------------------------------------------------
--  Handler.......... : onWhistlingTo
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function DMF_PuzzleBilheteriaAI.onWhistlingTo ( sTag, hObj )

    log.message ( sTag )
    if ( string.compare ( sTag, "Elvis" ) == 0 ) then
    
        sound.play ( hObj, 10, 255, false, 1 )
        
        if ( not this.bDimIngresso ( ) ) then
            object.sendEvent ( hObj, "DMF_Animation", "onStop" )
            object.sendEvent ( hObj, "DMF_Animation", "onAngry" )
            this.Say ( "Elvis Sem Ingresso" )
        else
            
            user.sendEvent ( this.getUser ( ), "DMF_PuzzleBilheteriaAI", "onEscape", sTag )
            
            local hScene = application.getCurrentUserScene ( )
            local hDim = scene.getTaggedObject ( hScene, "Dim Mockson" )
            object.sendEvent ( hObj, "DMF_RunBehaviourAI", "onRunTo", hDim, "DMF_PuzzleBilheteriaAI" )
            
        end
    else
        sound.play ( hObj, 10, 255, false, 1 )
    end

end
--------------------------------------------------------------------------------
