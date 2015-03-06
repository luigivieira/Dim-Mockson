--------------------------------------------------------------------------------
--  Handler.......... : onDone
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function DMF_TeamSelectionAI.onDone (  )

    local sPlayerTeam = application.getCurrentUserEnvironmentVariable ( "PlayerTeam" )
    local sDimTeam = application.getCurrentUserEnvironmentVariable ( "DimTeam" )

    sPlayerTeam = "BASE_NORMAL_PIN_" .. string.upper ( sPlayerTeam )
    sDimTeam = "BASE_NORMAL_PIN_" .. string.upper ( sDimTeam )

    local hScene = application.getCurrentUserScene ( )
    local hDim = scene.getTaggedObject ( hScene, "Dim Mockson" )
    local hPlayer = scene.getTaggedObject ( hScene, "Avatar" )
    
    shape.overrideMeshSubsetMaterialEffectMap0 ( hDim, 0, sDimTeam )
    shape.overrideMeshSubsetMaterialEffectMap0 ( hPlayer, 0, sPlayerTeam )

end
--------------------------------------------------------------------------------
