--------------------------------------------------------------------------------
--  State............ : ZOOMING_IN
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function DMF_CameraAI.ZOOMING_IN_onLeave ( )
    -- Envia o evento indicando o t�rmino da aproxima��o da c�mera
    user.sendEvent ( application.getCurrentUser ( ), this.sTargetAI ( ), "onZoomInConcluded" )
end
--------------------------------------------------------------------------------
