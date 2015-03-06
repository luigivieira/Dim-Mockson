--------------------------------------------------------------------------------
--  Function......... : MoveTowardsTarget
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function DMF_CameraAI.MoveTowardsTarget ( nTargetX, nTargetY, nTargetZ  )
    -- Move a câmera em direção ao destino
    local nCamX, nCamY, nCamZ = object.getTranslation ( this.getObject ( ), object.kGlobalSpace )
    local x, y, z = math.vectorSubtract ( nTargetX, nTargetY, nTargetZ, nCamX, nCamY, nCamZ )
    
    x, y, z = math.vectorNormalize ( x, y, z )    
    x, y, z = math.vectorScale ( x, y, z, this.nMoveSpeed ( ) * application.getLastFrameTime ( ) )
    
    object.translate ( this.getObject ( ), x, y, z, object.kGlobalSpace )

    -- Verifica a condição de término
    nCamX, nCamY, nCamZ = object.getTranslation ( this.getObject ( ), object.kGlobalSpace )
    local nDiffX = math.abs ( nCamX - nTargetX )
    local nDiffY = math.abs ( nCamY - nTargetY )
    local nDiffZ = math.abs ( nCamZ - nTargetZ )
    
    nDiffX = math.trunc ( nDiffX, 0 )
    nDiffY = math.trunc ( nDiffY, 0 )
    nDiffZ = math.trunc ( nDiffZ, 0 )
    
    if( nDiffX <= 1 and nDiffY <= 1 and nDiffZ <= 1 ) then
        return true
    else
        return false
    end
end
--------------------------------------------------------------------------------
