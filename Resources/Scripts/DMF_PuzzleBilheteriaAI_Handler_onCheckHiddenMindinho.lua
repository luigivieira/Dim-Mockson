--------------------------------------------------------------------------------
--  Handler.......... : onCheckHiddenMindinho
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function DMF_PuzzleBilheteriaAI.onCheckHiddenMindinho ( sTag, hObj )

    if ( string.contains ( sTag, "Mindinho Escondido" ) ) then
        
        local hExt = hashtable.get ( this.htMindinhos ( ), sTag )
        if ( hExt == nil ) then
            hashtable.add ( this.htMindinhos ( ), sTag, hObj )
            sound.play ( hObj, 7, 255, false, 1 )
            
            local sMessage
            if ( this.nMindinhos ( ) == 3 ) then
                sMessage = "Olha, vou te contar, mais chato do que o meu trabalho � s� voc� procurando esses moleque. Achou mais um. �... que legal... viva..."
            elseif ( this.nMindinhos ( ) == 2 ) then
                sMessage = "P�, t� mandando bem heim? At� parece que foi voc� quem pariu esses barrigudos... Agora s� falta achar mais um pra voc� ganhar aquele pr�mio especial da Dona Ber�! hehehe"
            elseif ( this.nMindinhos ( ) == 1 ) then
                sMessage = "Caracas br�di! Esse �ltimo ai eu tava procurando desde a Copa de 70! Se bobear voc� achou foi o filho do cabe�udinho original!"
            else
                sMessage = "Achou mais um moleque. Voc� devia jogar bagaraleo o Jogo da Vida na inf�ncia, n� n�o? Agora s� falta achar mais " .. (this.nMindinhos ( ) - 1)
            end
            
            this.nMindinhos ( this.nMindinhos ( ) - 1 )
            hud.callAction ( this.getUser ( ), "game.Say", sMessage )
        end
        
    end

end
--------------------------------------------------------------------------------
