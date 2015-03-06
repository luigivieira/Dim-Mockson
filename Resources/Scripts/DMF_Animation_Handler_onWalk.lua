--------------------------------------------------------------------------------
--  Handler.......... : onWalk
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function DMF_Animation.onWalk ( nSpeed )
    animation.setCurrentClip ( this.getObject ( ), 0, 2 )
    animation.setPlaybackMode ( this.getObject ( ), 0, animation.kPlaybackModeLoop )
    animation.setPlaybackSpeed ( this.getObject ( ), 0, nSpeed )
end
--------------------------------------------------------------------------------
