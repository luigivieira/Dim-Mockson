--------------------------------------------------------------------------------
--  Handler.......... : onShowMenu
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function DMF_MenuActionsAI.onShowMenu ( sHUDName, sComponentName, nNumberFrames )
    -- Carrega o HUD
    hud.newTemplateInstance ( this.getUser ( ), sHUDName, "menu_tag" )

    -- Armazena as variáveis importantes
    this.nMenuFrames ( nNumberFrames )
    this.sMenuTag ( "menu_tag." .. sComponentName ) 

    local hMenu = hud.getComponent ( this.getUser ( ), this.sMenuTag ( ) )

    if ( hMenu == nil ) then
        log.error ( "Erro carregando componente [" .. sComponentName .. "] do HUD [" .. sHUDName .. "]" )
        return
    end

    -- Ajuta a textura de fundo para o primeiro quadro
    hud.setComponentBackgroundImageUVOffset ( hMenu, 0, 0 )
    
    -- Inicia a animação de abertura
    this.SHOWING_MENU ( )
end
--------------------------------------------------------------------------------
