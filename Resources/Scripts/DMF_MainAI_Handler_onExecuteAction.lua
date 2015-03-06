--------------------------------------------------------------------------------
--  Handler.......... : onExecuteAction
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function DMF_MainAI.onExecuteAction ( sActionName )

    local hScene = application.getCurrentUserScene ( )
    local sTag = ""
    if ( this.hSelObj ( ) ~= nil ) then
        sTag = scene.getObjectTag ( hScene, this.hSelObj ( ) )
    end

    if ( string.compare ( sActionName, "OpenItems" ) == 0 ) then
    
        -- Por garantia, deseleciona qualquer objeto já selecionado
        this.sItem ( "" )
        hud.callAction ( this.getUser ( ), "game.HideItemSelection" )
    
        hud.newTemplateInstance ( this.getUser ( ), "DMF_HUDItems", "item_hud" )
        local hObj = hud.getComponent ( this.getUser ( ), "game.BtItems" )
        hud.setComponentActive ( hObj, false )
        
    elseif ( string.compare ( sActionName, "CloseItems" ) == 0 ) then
    
        hud.destroyTemplateInstance ( this.getUser ( ), "item_hud" )
        local hObj = hud.getComponent ( this.getUser ( ), "game.BtItems" )
        hud.setComponentActive ( hObj, true )
        
    elseif ( string.compare ( sActionName, "Ingresso" ) == 0 or string.compare ( sActionName, "Pedra" ) == 0 or string.compare ( sActionName, "Latinha" ) == 0) then
    
        user.sendEvent ( this.getUser ( ), "DMF_PuzzleBilheteriaAI", "onItemSelected", sActionName )
        this.sItem ( sActionName )
        local sTexture = "OBJETOS_BILLBOARD_" .. string.upper ( sActionName )
        hud.callAction ( this.getUser ( ), "game.ShowItemSelection", sTexture )
        
    elseif ( string.compare ( sActionName, "Vazar" ) == 0 ) then
    
        user.sendEvent ( this.getUser ( ), "DMF_PuzzleBilheteriaAI", "onEscape", sTag )

    elseif ( string.compare ( sActionName, "Comentar" ) == 0 ) then

        user.sendEvent ( this.getUser ( ), "DMF_PuzzleBilheteriaAI", "onComment", sTag, this.hSelObj ( ) )
        object.sendEvent ( this.hSelObj ( ), "DMF_Animation", "onPresent" )

    elseif ( string.compare ( sActionName, "Assobiar" ) == 0 ) then

        user.sendEvent ( this.getUser ( ), "DMF_PuzzleBilheteriaAI", "onWhistlingTo", sTag, this.hSelObj ( ) )

    elseif ( string.compare ( sActionName, "Chutar" ) == 0 ) then

        user.sendEvent ( this.getUser ( ), "DMF_PuzzleBilheteriaAI", "onKick", sTag, this.hSelObj ( ) )
        
    elseif ( string.compare ( sActionName, "Pegar" ) == 0 ) then

        user.sendEvent ( this.getUser ( ), "DMF_PuzzleBilheteriaAI", "onPickUp", sTag, this.hSelObj ( ) )

    elseif ( string.compare ( sActionName, "Empurrar" ) == 0 ) then

        user.sendEvent ( this.getUser ( ), "DMF_PuzzleBilheteriaAI", "onPush", sTag, this.hSelObj ( ) )
        
    elseif ( string.compare ( sActionName, "Gritar" ) == 0 ) then

        user.sendEvent ( this.getUser ( ), "DMF_PuzzleBilheteriaAI", "onShoutingAt", sTag, this.hSelObj ( ) )

    elseif ( string.compare ( sActionName, "Cuspir" ) == 0 ) then

        user.sendEvent ( this.getUser ( ), "DMF_PuzzleBilheteriaAI", "onSpitOn", sTag, this.hSelObj ( ) )

    end
end
--------------------------------------------------------------------------------
