--------------------------------------------------------------------------------
--  Function......... : LookTowardsTarget
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function DMF_CameraAI.LookTowardsTarget ( nTPosX, nTPosY, nTPosZ, nTDirX, nTDirY, nTDirZ, bReverse )
    -- Gira a câmera em direção ao objeto
    local x, y, z = object.getTranslation ( this.getObject ( ), object.kGlobalSpace )
    local nDistance = math.sqrt ( math.pow ( nTPosX - x , 2 ) + math.pow ( nTPosY - y , 2 ) + math.pow ( nTPosZ - z , 2 ) )
    
    local nFactor = 10 * this.nMoveSpeed ( ) / nDistance
    
    if ( bReverse ) then
        nTDirX, nTDirY, nTDirZ = math.vectorScale ( nTDirX, nTDirY, nTDirZ, -1 )
    end
    
    object.lookAt ( this.getObject ( ), nTPosX, nTPosY, nTPosZ, object.kGlobalSpace, nFactor * application.getLastFrameTime ( ) )

    -- Verifica condição de término
    local x, y, z = object.getDirection ( this.getObject ( ), object.kGlobalSpace )
    x, y, z = math.vectorAdd ( x, y, z, nTDirX, nTDirY, nTDirZ )
    
    x = math.trunc ( x, 0 )
    y = math.trunc ( y, 0 )
    z = math.trunc ( z, 0 )
    
    if ( x <= 1 and y <= 1 and z <= 1 ) then
        return true
    else
        return false
    end
end
--------------------------------------------------------------------------------
