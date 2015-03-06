--------------------------------------------------------------------------------
--  Handler.......... : onComment
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function DMF_PuzzleBilheteriaAI.onComment ( sTag, hObj )
    local sPlayerTeam = application.getCurrentUserEnvironmentVariable ( "PlayerTeam" )
    local sDimTeam = application.getCurrentUserEnvironmentVariable ( "DimTeam" )

    if ( string.compare ( sTag, "Dim Mockson" ) == 0 ) then
        if ( string.compare ( sDimTeam, "Bananeiras" ) == 0 ) then
            sound.play ( hObj, 1, 255, false, 1 )
        elseif ( string.compare ( sDimTeam, "Curingas" ) == 0 ) then
            sound.play ( hObj, 2, 255, false, 1 )
        elseif ( string.compare ( sDimTeam, "Bicolor" ) == 0 ) then
            sound.play ( hObj, 3, 255, false, 1 )
        else --if ( string.compare ( sDimTeam, "Bicolor" ) == 0 ) then
            sound.play ( hObj, 4, 255, false, 1 )
        end
        local sKey = "Dim " .. sDimTeam
        this.Say ( sKey )        
    elseif ( string.compare ( sTag, "Patty" ) == 0 ) then
        sound.play ( hObj, 5, 255, false, 1 )
        this.Say ( "Patty" )
    elseif ( string.compare ( sTag, "Dona Berê" ) == 0  and hashtable.getSize ( this.htMindinhos ( ) ) >= 5 ) then
        this.Say ( "Dona Berê Feliz" )
        sound.play ( hObj, 9, 255, false, 1 )
        shape.overrideMeshSubsetMaterialEffectMap0 ( hObj, 1, "PERSONA_BERE_SKIN_BERE_HAPPY" )
    else
        this.Say ( sTag )
    end
end
--------------------------------------------------------------------------------
