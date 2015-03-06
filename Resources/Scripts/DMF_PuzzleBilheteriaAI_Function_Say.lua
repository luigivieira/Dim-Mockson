--------------------------------------------------------------------------------
--  Function......... : Say
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function DMF_PuzzleBilheteriaAI.Say ( sKey )
    local sMessage = hashtable.get ( this.htRemarks ( ), sKey )
    
    if ( sMessage ~= nil ) then
        hud.callAction ( this.getUser ( ), "game.Say", sMessage )
    else
        hud.callAction ( this.getUser ( ), "game.Say", "Hum... Acho que o programador desse jogo fez mer... Me mandaram falar uma frase que não faz sentido. Deixa pra lá, vai." )
    end
end
--------------------------------------------------------------------------------
