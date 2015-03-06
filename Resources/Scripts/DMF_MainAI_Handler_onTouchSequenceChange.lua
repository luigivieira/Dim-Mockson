--------------------------------------------------------------------------------
--  Handler.......... : onTouchSequenceChange
--  Author........... : Luiz C. Vieira
--  Description...... : Trata a movimentação do toque na tela.
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function DMF_MainAI.onTouchSequenceChange ( nTaps0, nX0, nY0, nTaps1, nX1, nY1, nTaps2, nX2, nY2, nTaps3, nX3, nY3, nTaps4, nX4, nY4 )
    -- Apenas permite a seleção para o primeiro toque na tela
    if ( this.bInGame ( ) and this.bSelecting ( ) ) then
        this.bSelecting ( false )
        
        local hCam = application.getCurrentUserActiveCamera ( )
        local hScene = application.getCurrentUserScene ( )
        
        -- Projeta um raio na câmera segundo a posição do toque para tentar encontrar um objeto
        if ( hCam and hScene ) then
            local nCamX, nCamY, nCamZ  = object.getTranslation ( hCam, object.kGlobalSpace )
            local nRayPntX, nRayPntY, nRayPntZ = camera.unprojectPoint ( hCam, nX0, nY0, 0 )
            local vX, vY, vZ = math.vectorSubtract ( nRayPntX, nRayPntY, nRayPntZ, nCamX, nCamY, nCamZ )
            local nRayDirX, nRayDirY, nRayDirZ = math.vectorNormalize ( vX, vY, vZ )
                
            local hHitObject, nHitDist, nHitSID = scene.getFirstHitSensor( hScene, nRayPntX, nRayPntY, nRayPntZ, nRayDirX, nRayDirY, nRayDirZ, 2000)
            
            -- Se encontrar um objeto, trata sua seleção
            if ( hHitObject ) then
                this.SelectObject ( hHitObject )
            end
        end
    end
end
--------------------------------------------------------------------------------
