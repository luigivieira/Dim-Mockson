--------------------------------------------------------------------------------
--  Handler.......... : onMenuStartClicked
--  Author........... : Luiz C. Vieira
--  Description...... : Quando o menu iniciar é selecionado, carrega a fase
--                      inicial do jogo
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function DMF_MainAI.onMenuStartClicked ( bChoose )
    if ( bChoose ) then
        this.bChoosing ( true )
        hud.newTemplateInstance ( this.getUser ( ), "DMF_HUDChoice", "choice" )
    else
        hud.destroyTemplateInstance ( this.getUser ( ), "choice" )
        this.bChoosing ( false )
        this.StartGame ( )
    end
end
--------------------------------------------------------------------------------
