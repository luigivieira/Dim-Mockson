--------------------------------------------------------------------------------
--  State............ : ARRIVED
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function DMF_RunBehaviourAI.ARRIVED_onEnter ( )
    object.sendEvent ( this.getObject ( ), "DMF_Animation", "onStop" )
    user.sendEvent ( application.getCurrentUser ( ), this.sCallbackAI ( ), "onRunEnded", this.getObject ( ), this.hTarget ( ) )
    
    this.IDLE ( )
end
--------------------------------------------------------------------------------
