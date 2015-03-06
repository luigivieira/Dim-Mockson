--------------------------------------------------------------------------------
--  Handler.......... : onShowFrame
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function DMF_MenuActionsAI.onShowFrame ( nFrameIndex )
    -- Ajusta o UV da textura de acordo com o frame atual
    local hMenu = hud.getComponent ( this.getUser ( ), this.sMenuTag ( ) )
    if ( hMenu ~= nil ) then
        hud.setComponentBackgroundImageUVOffset ( hMenu, nFrameIndex / this.nMenuFrames ( ), 0 )
    end
end
--------------------------------------------------------------------------------
