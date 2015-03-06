--------------------------------------------------------------------------------
--  State............ : ZOOMING_OUT
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function DMF_CameraAI.ZOOMING_OUT_onLoop ( )
    -- Move e foca a c�mera em dire��o a sua posi��o original
    local bStopLooking = this.LookTowardsTarget ( this.nLookX ( ), this.nLookY ( ), this.nLookZ ( ), this.nDirX ( ), this.nDirY ( ), this.nDirZ ( ), true )
    local bStopMoving = this.MoveTowardsTarget ( this.nX ( ), this.nY ( ), this.nZ ( ) )
    
    if(bStopLooking and bStopMoving) then
        this.BROAD_VIEW ( )
    end
end
--------------------------------------------------------------------------------
