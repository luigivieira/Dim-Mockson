--------------------------------------------------------------------------------
--  Handler.......... : onOpen
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function DMF_Credits.onOpen (  )

    hud.newTemplateInstance ( this.getUser ( ), "DMF_HUDCredits", "credits" )

end
--------------------------------------------------------------------------------