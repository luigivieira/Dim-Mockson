--------------------------------------------------------------------------------
--  Handler.......... : onLose
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function DMF_Animation.onLose ( nType, nSpeed )
    if ( nType < 5 or nType > 7 ) then
        log.error ( "Tipo de animação de perda inválido: " .. nType )
        return
    end

    animation.setCurrentClip ( this.getObject ( ), 0, nType )
    animation.setPlaybackMode ( this.getObject ( ), 0, animation.kPlaybackModeOnce )
    animation.setPlaybackSpeed ( this.getObject ( ), 0, nSpeed )
end
--------------------------------------------------------------------------------
