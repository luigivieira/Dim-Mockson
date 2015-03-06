--------------------------------------------------------------------------------
--  State............ : ZOOMING_IN
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function DMF_CameraAI.ZOOMING_IN_onLeave ( )
    -- Envia o evento indicando o término da aproximação da câmera
    user.sendEvent ( application.getCurrentUser ( ), this.sTargetAI ( ), "onZoomInConcluded" )
end
--------------------------------------------------------------------------------
