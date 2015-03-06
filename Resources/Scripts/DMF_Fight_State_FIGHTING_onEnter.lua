--------------------------------------------------------------------------------
--  State............ : FIGHTING
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function DMF_Fight.FIGHTING_onEnter ( )

    this.nTimeSinceLastFrame ( 0 )
    this.nUOffset ( 0 )
    this.nVOffset ( 0 )

    shape.setMeshSubsetMaterialEffectMap0AdditionalUVOffset ( this.getObject ( ), 1, this.nUOffset ( ), this.nVOffset ( ) )

    object.setVisible ( table.getFirst ( this.tCharacters ( ) ), false )
    object.setVisible ( table.getLast ( this.tCharacters ( ) ), false )
    
    music.setVolume ( application.getCurrentUserScene ( ), 0, 0 )
    
    object.setVisible ( this.getObject ( ), true )
    sound.play ( this.getObject ( ), 11, 1, false, 1 )

end
--------------------------------------------------------------------------------
