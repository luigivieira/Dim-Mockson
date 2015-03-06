--------------------------------------------------------------------------------
--  Handler.......... : onTerminate
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function DMF_MainAI.onTerminate (  )

    hud.destroyTemplateInstance ( application.getCurrentUser ( ), "game" )
    user.sendEvent ( application.getCurrentUser ( ), "DMF_MainAI", "onShowCredits" )

end
--------------------------------------------------------------------------------
