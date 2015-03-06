--------------------------------------------------------------------------------
--  State............ : FINISHED
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function DMF_Fight.FINISHED_onEnter ( )

    local hWinner = table.getFirst ( this.tCharacters ( ) )
    
    if ( object.hasAIModel ( hWinner, "DMF_WalkBehaviourAI" ) ) then
        object.sendEvent ( hWinner, "DMF_WalkBehaviourAI", "onResume" )
    end
    
    local hLoser = table.getLast ( this.tCharacters ( ) )
    
    object.sendEvent ( hLoser, "DMF_Animation", "onStop" )
    object.sendEvent ( hLoser, "DMF_Animation", "onLose", 6, 60 )
    
    hud.callAction ( application.getCurrentUser ( ), "game.Say", "Parabéns. Ê. Agora eu vou fazer algo melhor da minha vida. Tchau. Quando o jogo ficar pronto, me avisa via twitter, ok?" )
    user.postEvent ( application.getCurrentUser ( ), 5, "DMF_MainAI", "onTerminate" )


end
--------------------------------------------------------------------------------
