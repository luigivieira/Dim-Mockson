--------------------------------------------------------------------------------
--  Function......... : SelectObject
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function DMF_MainAI.SelectObject ( hObject )

    if( this.hSelObj ( ) == nil ) then

        local hScene = application.getCurrentUserScene ( )
        local sTag = scene.getObjectTag ( hScene, hObject )

        if ( this.sItem ( ) ~= "" ) then
        
            user.sendEvent ( this.getUser ( ), "DMF_PuzzleBilheteriaAI", "onUseItem", this.sItem ( ), sTag, hObject )

            -- Deseleciona o objeto usado
            this.sItem ( "" )
            hud.callAction ( this.getUser ( ), "game.HideItemSelection" )

        else

            -- Por garantia, deseleciona qualquer objeto já selecionado
            this.sItem ( "" )
            hud.callAction ( this.getUser ( ), "game.HideItemSelection" )

            -- Fecha o HUD de itens, se estiver aberto
            hud.callAction ( this.getUser ( ), "item_hud.BtItems" )

            -- Abre o menu para o objeto selecionado
            if ( hObject and not string.isEmpty ( sTag ) ) then
                this.hSelObj ( hObject )
                
                -- Para a animação de caminhada, se for o caso
                if ( object.hasAIModel ( hObject, "DMF_WalkBehaviourAI" ) ) then
                    object.sendEvent ( hObject, "DMF_WalkBehaviourAI", "onPause" )
                end
                
                -- Fecha o diálogo do botelho, se estiver aberto
                hud.callAction ( this.getUser ( ), "game.CloseSpeechBalloon" )
                
                local hCam = application.getCurrentUserActiveCamera ( )
                object.sendEvent ( hCam, "DMF_CameraAI", "onZoomIn", hObject )
            end
            
        end
        
    end
end
--------------------------------------------------------------------------------
