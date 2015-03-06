--------------------------------------------------------------------------------
--  State............ : FIGHTING
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function DMF_Fight.FIGHTING_onLeave ( )

    object.setVisible ( this.getObject ( ), false )
    object.setVisible ( table.getFirst ( this.tCharacters ( ) ), true )
    object.setVisible ( table.getLast ( this.tCharacters ( ) ), true )
    
    music.setVolume ( application.getCurrentUserScene ( ), 1, 0 )
end
--------------------------------------------------------------------------------
