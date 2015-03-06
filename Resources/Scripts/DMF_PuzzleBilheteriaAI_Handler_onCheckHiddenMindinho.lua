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
                sMessage = "Olha, vou te contar, mais chato do que o meu trabalho é só você procurando esses moleque. Achou mais um. Ê... que legal... viva..."
            elseif ( this.nMindinhos ( ) == 2 ) then
                sMessage = "Pô, tá mandando bem heim? Até parece que foi você quem pariu esses barrigudos... Agora só falta achar mais um pra você ganhar aquele prêmio especial da Dona Berê! hehehe"
            elseif ( this.nMindinhos ( ) == 1 ) then
                sMessage = "Caracas bródi! Esse último ai eu tava procurando desde a Copa de 70! Se bobear você achou foi o filho do cabeçudinho original!"
            else
                sMessage = "Achou mais um moleque. Você devia jogar bagaraleo o Jogo da Vida na infância, né não? Agora só falta achar mais " .. (this.nMindinhos ( ) - 1)
            end
            
            this.nMindinhos ( this.nMindinhos ( ) - 1 )
            hud.callAction ( this.getUser ( ), "game.Say", sMessage )
        end
        
    end

end
--------------------------------------------------------------------------------
