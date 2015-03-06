--------------------------------------------------------------------------------
--  Handler.......... : onPlay
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function DMF_Fight.onPlay ( hWinner, hLoser )

    if ( hWinner ~= nil and hLoser ~= nil ) then
        table.add ( this.tCharacters ( ), hWinner )
        table.add ( this.tCharacters ( ), hLoser )
        
        this.FIGHTING ( )
    end

end
--------------------------------------------------------------------------------
