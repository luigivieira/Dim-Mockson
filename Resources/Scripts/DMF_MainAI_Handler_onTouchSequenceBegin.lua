--------------------------------------------------------------------------------
--  Handler.......... : onTouchSequenceBegin
--  Author........... : Luiz C. Vieira
--  Description...... : Trata o in�cio do toque na tela
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function DMF_MainAI.onTouchSequenceBegin (  )
    -- Ao iniciar, marca o in�cio da sele��o por toque (se o jogador n�o estiver tocando um componente do HUD)
    local bOk = not this.IsTouchingHUD ( nPointX, nPointY )
    if ( bOk and this.bInGame ( ) and application.getCurrentUserScene ( ) ) then
        this.bSelecting ( true )
    end
end
--------------------------------------------------------------------------------
