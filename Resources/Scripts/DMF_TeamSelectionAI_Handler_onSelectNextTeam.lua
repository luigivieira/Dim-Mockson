--------------------------------------------------------------------------------
--  Handler.......... : onSelectNextTeam
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function DMF_TeamSelectionAI.onSelectNextTeam ( sWhoseTeam )

    -- Primeiro, altera os times de acordo com a ordem dos cliques
    local sPlayerTeam = application.getCurrentUserEnvironmentVariable ( "PlayerTeam" )
    local sDimTeam = application.getCurrentUserEnvironmentVariable ( "DimTeam" )

    if ( string.compare ( sWhoseTeam, "Player" ) == 0 ) then
        sPlayerTeam = this.GetNextTeam ( sPlayerTeam, true )
        if ( string.compare ( sPlayerTeam, sDimTeam ) == 0 ) then
            sDimTeam = this.GetNextTeam ( sDimTeam, false )
        end
    else
        sDimTeam = this.GetNextTeam ( sDimTeam, false )
        if ( string.compare ( sPlayerTeam, sDimTeam ) == 0 ) then
            sPlayerTeam = this.GetNextTeam ( sPlayerTeam, true )
        end        
    end

    application.setCurrentUserEnvironmentVariable ( "PlayerTeam", sPlayerTeam )
    application.setCurrentUserEnvironmentVariable ( "DimTeam", sDimTeam )
    
    -- Então, atualiza as texturas
    this.UpdateTeamTextures (  )

end
--------------------------------------------------------------------------------
