--------------------------------------------------------------------------------
--  Handler.......... : onMouseButtonDown
--  Author........... : Luiz C. Vieira
--  Description...... : Trata o pressionamento do botão do mouse.
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function DMF_MainAI.onMouseButtonDown ( nButton, nPointX, nPointY, nRayPntX, nRayPntY, nRayPntZ, nRayDirX, nRayDirY, nRayDirZ )
    -- Redireciona o mouse para a função de tratamento de toques na tela do celular, se o jogador não estiver tocando um componente de HUD
    local bOk = not this.IsTouchingHUD ( nPointX, nPointY )
    if ( bOk and this.bInGame ( ) and not this.bMultitouchEnabled ( ) ) then
        this.bSelecting ( true )
        this.sendEvent ( "onTouchSequenceChange", 1, nPointX, nPointY, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 )
    end
end
--------------------------------------------------------------------------------