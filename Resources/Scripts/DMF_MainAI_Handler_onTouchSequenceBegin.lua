--------------------------------------------------------------------------------
--  Handler.......... : onTouchSequenceBegin
--  Author........... : Luiz C. Vieira
--  Description...... : Trata o início do toque na tela
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function DMF_MainAI.onTouchSequenceBegin (  )
    -- Ao iniciar, marca o início da seleção por toque (se o jogador não estiver tocando um componente do HUD)
    local bOk = not this.IsTouchingHUD ( nPointX, nPointY )
    if ( bOk and this.bInGame ( ) and application.getCurrentUserScene ( ) ) then
        this.bSelecting ( true )
    end
end
--------------------------------------------------------------------------------
