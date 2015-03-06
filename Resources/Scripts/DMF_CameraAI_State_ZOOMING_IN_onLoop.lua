--------------------------------------------------------------------------------
--  State............ : ZOOMING_IN
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function DMF_CameraAI.ZOOMING_IN_onLoop ( )
    -- Move e foca a câmera em direção ao objeto
    local xmin, ymin, zmin = object.getBoundingBoxMin ( this.hTargetObj ( ) )
    local xmax, ymax, zmax = object.getBoundingBoxMax ( this.hTargetObj ( ) )
    
    local nCX = xmin + ((xmax - xmin)  / 2)
    local nCY = ymin + ((ymax - ymin)  / 2)
    local nCZ = zmin + ((zmax - zmin)  / 2)
    
    local nDX, nDY, nDZ = this.GetObjectDirection ( this.hTargetObj ( ) )
    local bStopLooking = this.LookTowardsTarget ( nCX, nCY, nCZ, nDX, nDY, nDZ )
    
    local x, y, z = math.vectorScale ( nDX, nDY, nDZ, this.nCloseDistance ( ) )
    x, y, z = math.vectorScale ( x, y, z, -1 )
    x, y, z = math.vectorAdd ( x, y, z, nCX, nCY, nCZ )
    local bStopMoving = this.MoveTowardsTarget ( x, y, z, false )

    if(bStopLooking and bStopMoving) then
        this.CLOSING_TARGET ( )
    end
end
--------------------------------------------------------------------------------
