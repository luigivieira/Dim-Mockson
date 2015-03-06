--------------------------------------------------------------------------------
--  Handler.......... : onKeyboardKeyDown
--  Author........... : Luiz C. Vieira
--  Description...... : Captura e trata a tecla de retorno (back) do celular
--                      para permitir voltar ao menu principal ou sair do jogo.
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function DMF_MainAI.onKeyboardKeyDown ( kKeyCode )
    local hScene = application.getCurrentUserScene ( )
    
    if ( kKeyCode == input.kKeyEscape ) then -- Tecla voltar (back) no celular, e Esc no PC
        if ( this.bInCredits ( ) ) then
            user.sendEvent ( this.getUser ( ), "DMF_Credits", "onClose" )
            this.DisplayMainMenu ( )
        elseif( this.bInGame ( ) or this.bChoosing ( ) ) then
            this.DisplayMainMenu ( )
        else
            application.quit ( )
        end
    end
end
--------------------------------------------------------------------------------
