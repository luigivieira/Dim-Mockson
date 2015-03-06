--------------------------------------------------------------------------------
--  Function......... : GetObjectDirection
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function DMF_CameraAI.GetObjectDirection ( hObj )

    local nDX, nDY, nDZ = object.getDirection ( hObj, object.kGlobalSpace )
    return math.vectorCrossProduct ( nDX, nDY, nDZ, 0, 1, 0 )

end
--------------------------------------------------------------------------------
