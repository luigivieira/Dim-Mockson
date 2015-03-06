--------------------------------------------------------------------------------
--  Function......... : StartGame
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function DMF_MainAI.StartGame ( )
    local hScene = application.getCurrentUserScene ( )

    -- Fecha a tela do menu principal
    hud.destroyTemplateInstance ( this.getUser ( ), "main" )
    music.stop ( hScene, 0 )

    -- Exibe a cena do jogo
    hud.newTemplateInstance ( this.getUser ( ), "HUD_Game", "game" )
    music.play ( hScene, 1, 0 )

    local hCam = scene.getTaggedObject ( hScene, "MainCamera" )
    application.setCurrentUserActiveCamera ( hCam )
    
    scene.setPaused ( hScene, false )
    this.bInGame ( true )
    
    user.sendEvent ( this.getUser ( ), "DMF_PuzzleBilheteriaAI", "onComment", "Intro1" )
end
--------------------------------------------------------------------------------
