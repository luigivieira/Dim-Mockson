--------------------------------------------------------------------------------
--  State............ : ZOOMING_OUT
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function DMF_CameraAI.ZOOMING_OUT_onLeave ( )
    this.hTargetObj ( nil )
    -- Envia o evento indicando o t�rmino do afastamento da c�mera
    user.sendEvent ( application.getCurrentUser ( ), this.sTargetAI ( ), "onZoomOutConcluded" )
end
--------------------------------------------------------------------------------
