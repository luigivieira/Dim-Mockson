--------------------------------------------------------------------------------
--  Handler.......... : onPickUp
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function DMF_PuzzleBilheteriaAI.onPickUp ( sTag, hObj )

    local sModel = object.getModelName ( hObj )
    if ( string.compare ( sModel, "Item" ) == 0 ) then
    
        sound.play ( hObj, 8, 255, false, 1 )
        object.setVisible ( hObj, false )
        hashtable.add ( this.htItems ( ), sTag, hObj )
        user.sendEvent ( this.getUser ( ), "DMF_PuzzleBilheteriaAI", "onEscape", sTag )
        
    else
    
        local sPlayerTeam = application.getCurrentUserEnvironmentVariable ( "PlayerTeam" )
        local sDimTeam = application.getCurrentUserEnvironmentVariable ( "DimTeam" )

        if ( string.compare ( sTag, "Dim Mockson" ) == 0 ) then
            if ( string.compare ( sDimTeam, "Bananeiras" ) == 0 ) then
                this.Say ( "Dim Pegar Bananeiras" )
            elseif ( string.compare ( sDimTeam, "Curingas" ) == 0 ) then
                this.Say ( "Dim Pegar Curingas" )
            elseif ( string.compare ( sDimTeam, "Bicolor" ) == 0 ) then
                this.Say ( "Dim Pegar Bicolor" )
                sound.play ( hObj, 5, 255, false, 1 )
            else --if ( string.compare ( sDimTeam, "Peche" ) == 0 ) then
                this.Say ( "Dim Pegar Peche" )
            end
            local sKey = "Dim " .. sDimTeam
            this.Say ( sKey )
        else
            local sKey = sTag .. " Pegar"
            this.Say ( sKey )
        end
    
    end

end
--------------------------------------------------------------------------------
