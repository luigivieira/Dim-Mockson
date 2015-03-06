--------------------------------------------------------------------------------
--  State............ : RUNNING
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function DMF_RunBehaviourAI.RUNNING_onEnter ( )
    if ( object.hasAIModel ( this.getObject ( ), "DMF_WalkBehaviourAI" ) ) then
        object.sendEvent ( this.getObject ( ), "DMF_WalkBehaviourAI", "onPause" )
    end
    
    object.sendEvent ( this.getObject ( ), "DMF_Animation", "onStop" )
    object.sendEvent ( this.getObject ( ), "DMF_Animation", "onWalk", 30 )
end
--------------------------------------------------------------------------------
