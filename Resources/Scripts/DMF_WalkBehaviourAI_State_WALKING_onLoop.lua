--------------------------------------------------------------------------------
--  State............ : WALKING
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function DMF_WalkBehaviourAI.WALKING_onLoop ( )

    if ( not this.bPaused ( ) ) then
        local nTgtX, nTgtY, nTgtZ = object.getTranslation ( this.hCurTarget ( ), object.kGlobalSpace )
        object.lookAt( this.getObject ( ), nTgtX, nTgtY, nTgtZ, object.kGlobalSpace, application.getLastFrameTime ( ) )

        local nSrcX, nSrcY, nSrcZ = object.getTranslation ( this.getObject ( ), object.kGlobalSpace )
        local x, y, z = math.vectorNormalize ( math.vectorSubtract ( nTgtX, nTgtY, nTgtZ, nSrcX, nSrcY, nSrcZ ) )
        local nMove = this.nSpeed ( ) * application.getLastFrameTime ( )
        local x, y, z = math.vectorSetLength ( x, y, z, nMove )
        
        object.translate ( this.getObject ( ), x, y, z, object.kGlobalSpace )

        nSrcX, nSrcY, nSrcZ = object.getTranslation ( this.getObject ( ), object.kGlobalSpace )
        local nDist = object.getDistanceToObject ( this.getObject ( ), this.hCurTarget ( ) )
        if ( nDist <= 0.1 ) then
            
            this.nCurTarget ( this.nCurTarget ( ) + 1 )
            local nSize = table.getSize ( this.tPath ( ) )
            if ( this.nCurTarget ( ) >= nSize ) then
                this.nCurTarget ( 0 )
            end
            
            local hScene = application.getCurrentUserScene ( )
            local hTarget = scene.getTaggedObject ( hScene, table.getAt ( this.tPath ( ), this.nCurTarget ( ) ) )
            this.hCurTarget ( hTarget )        
        end
    end

end
--------------------------------------------------------------------------------
