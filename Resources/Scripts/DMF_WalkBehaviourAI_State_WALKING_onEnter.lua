--------------------------------------------------------------------------------
--  State............ : WALKING
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function DMF_WalkBehaviourAI.WALKING_onEnter ( )

    local nSize = table.getSize ( this.tPath ( ) )
    
    if ( nSize < 2 ) then
        log.warning ( "A animação de caminhada requer ao menos dois destinos no caminho. Por favor, verifique a configuração do jogo." )
        this.IDLE ( )
        return
    end
    
    local hScene = application.getCurrentUserScene ( )
    local hHelper = scene.getTaggedObject ( hScene, table.getAt ( this.tPath ( ), 1 ) )
    
    this.nCurTarget ( 0 )
    this.hCurTarget( hHelper )
    object.sendEvent ( this.getObject ( ), "DMF_Animation", "onWalk", this.nAnimationSpeed ( ) )

end
--------------------------------------------------------------------------------
