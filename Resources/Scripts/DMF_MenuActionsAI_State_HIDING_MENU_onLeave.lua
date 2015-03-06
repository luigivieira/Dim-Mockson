--------------------------------------------------------------------------------
--  State............ : HIDING_MENU
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function DMF_MenuActionsAI.HIDING_MENU_onLeave ( )
    hud.destroyTemplateInstance ( this.getUser ( ), "menu_tag" )
    user.sendEvent ( this.getUser ( ), this.sTargetAI ( ), "onMenuClosed" )
end
--------------------------------------------------------------------------------
