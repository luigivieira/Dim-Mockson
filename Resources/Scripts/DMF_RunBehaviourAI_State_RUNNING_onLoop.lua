--------------------------------------------------------------------------------
--  State............ : RUNNING
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function DMF_RunBehaviourAI.RUNNING_onLoop ( )

    local x, y, z = object.getTranslation ( this.hTarget ( ), object.kGlobalSpace )
    object.lookAt ( this.getObject ( ), x, y, z, object.kGlobalSpace, application.getLastFrameTime ( ) )
    object.translateTo ( this.getObject ( ), x, y, z, object.kGlobalSpace, application.getLastFrameTime ( ) )

    local nDist = object.getDistanceToObject ( this.getObject ( ), this.hTarget ( ) )
    if ( nDist < 7 ) then
        this.ARRIVED ( )
    end

end
--------------------------------------------------------------------------------
