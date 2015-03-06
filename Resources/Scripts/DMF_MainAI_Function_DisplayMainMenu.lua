--------------------------------------------------------------------------------
--  Function......... : DisplayMainMenu
--  Author........... : Luiz C. Vieira
--  Description...... : Exibe o menu inicial do jogo
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function DMF_MainAI.DisplayMainMenu ( )
    local hScene = application.getCurrentUserScene ( )

    -- Termina a cena do jogo
    hud.destroyTemplateInstance ( this.getUser ( ), "game" )
    scene.setPaused ( hScene, true )
    music.stop ( hScene, 0 )

    -- Fecha o menu de escolha de bandeiras, se aberto
    hud.destroyTemplateInstance ( this.getUser ( ), "choice" )

    -- Exibe a tela do menu principal
    hud.newTemplateInstance ( this.getUser ( ), "DMF_HUDMain", "main" )
    music.play ( hScene, 0, 0 )
    
    this.bInGame ( false )
    this.bInCredits ( false )
    this.bChoosing ( false )
end
--------------------------------------------------------------------------------