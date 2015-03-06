--------------------------------------------------------------------------------
--  Handler.......... : onWait
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function DMF_Animation.onWait ( nType, nSpeed, bLoop )
    if ( nType < 1 or nType > 4 ) then
        log.error ( "Tipo de animação de espera inválido: " .. nType )
        return
    end

    animation.setCurrentClip ( this.getObject ( ), 0, 3 + nType )
    animation.setPlaybackSpeed ( this.getObject ( ), 0, nSpeed )
    
    if ( bLoop ) then
        animation.setPlaybackMode ( this.getObject ( ), 0, animation.kPlaybackModeLoop )
    end
end
--------------------------------------------------------------------------------
