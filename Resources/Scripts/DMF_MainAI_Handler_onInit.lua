--------------------------------------------------------------------------------
--  Handler.......... : onInit
--  Author........... : Luiz C. Vieira
--  Description...... : Prepara o jogo ao iniciar
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function DMF_MainAI.onInit (  )
    -- Habilita o multitouch no dispositivo que executa o jogo (se disponível)
    -- Se não estiver disponível, o jogo usará o mouse
    this.bMultitouchEnabled ( input.enableMultiTouch ( this.getUser ( ), true ) )

    -- Configura a orientação de exibição do jogo, de acordo com o sistema operacional
    local vOSType = system.getOSType ( )
    if ( vOSType == system.kOSTypeAndroid or vOSType == system.kOSTypeIPhone ) then
        application.setOption ( application.kOptionViewportRotation, 3)
    else
        application.setOption ( application.kOptionViewportRotation, 0)
    end

    -- Carrega e configura a cena inicial do jogo
    application.setCurrentUserScene ( "DMF_LVL1_BuyingTicket" )
    local hScene = application.getCurrentUserScene ( )
    music.setVolume ( hScene, 1, 0 )

    -- Exibe o HUD do menu inicial do jogo
    hud.setSoundBank ( this.getUser ( ), "HUDEffects" )    
    this.DisplayMainMenu ( )
end
--------------------------------------------------------------------------------
