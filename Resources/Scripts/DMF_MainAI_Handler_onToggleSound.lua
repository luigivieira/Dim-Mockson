--------------------------------------------------------------------------------
--  Handler.......... : onToggleSound
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function DMF_MainAI.onToggleSound ( bValue )
    local hBackground = hud.getComponent ( this.getUser ( ), "main.Background" )

    if ( bValue ) then
        this.nVolume ( 1 )
        if ( hBackground ~= nil ) then
            hud.setComponentBackgroundImage ( hBackground, "MAIN_MENU_ON" )
        end
    else
        this.nVolume ( 0 )
        if ( hBackground ~= nil ) then
            hud.setComponentBackgroundImage ( hBackground, "MAIN_MENU_OFF" )
        end
    end
    
    music.setVolume ( application.getCurrentUserScene ( ), this.nVolume ( ), 0 )
end
--------------------------------------------------------------------------------
