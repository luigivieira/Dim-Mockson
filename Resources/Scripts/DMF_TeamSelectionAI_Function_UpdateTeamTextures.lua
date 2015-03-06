--------------------------------------------------------------------------------
--  Function......... : UpdateTeamTextures
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function DMF_TeamSelectionAI.UpdateTeamTextures ( )
    local sPlayerTeam = application.getCurrentUserEnvironmentVariable ( "PlayerTeam" )
    local sDimTeam = application.getCurrentUserEnvironmentVariable ( "DimTeam" )

    local hPlayerTeam = hud.getComponent ( this.getUser ( ), "choice.PlayerTeam" )
    local hDimTeam = hud.getComponent ( this.getUser ( ), "choice.DimTeam" )
    
    hud.setComponentBackgroundImage ( hPlayerTeam, "DMF_" .. sPlayerTeam )
    hud.setComponentBackgroundImage ( hDimTeam, "DMF_" .. sDimTeam )
end
--------------------------------------------------------------------------------
