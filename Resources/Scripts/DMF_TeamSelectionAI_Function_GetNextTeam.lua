--------------------------------------------------------------------------------
--  Function......... : GetNextTeam
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function DMF_TeamSelectionAI.GetNextTeam ( sTeamName, bUp )

    -- Procura o time informado
    local nSize = table.getSize ( this.tTeams ( ) )
    local nFound = -1
    for i = 0, nSize - 1 do
        local sTeam = table.getAt ( this.tTeams ( ), i )
        if ( string.compare ( sTeamName, sTeam ) == 0 ) then
            nFound = i
            break
        end
    end

    -- Se achou, retorna o próximo na lista (de acordo com a variável bUp).
    -- Senão, retorna o primeiro. Em caso de erro, não retorna nada.
    if ( nFound ~= -1 ) then
        if ( bUp ) then
            nFound = nFound + 1
            if ( nFound >= nSize ) then
                nFound = 0
            end
        else
            nFound = nFound - 1
            if ( nFound < 0 ) then
                nFound = nSize - 1
            end
        end
    elseif ( nSize > 0 ) then
        nFound = 0
    else
        log.error ( "Erro: não há nenhum time definido pro jogo." )
        return ""
    end
    
    return table.getAt ( this.tTeams ( ), nFound )
end
--------------------------------------------------------------------------------
