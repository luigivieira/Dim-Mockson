--------------------------------------------------------------------------------
--  Handler.......... : onEnterFrame
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function DMF_MenuActionsAI.onEnterFrame (  )

    -- Processa apenas se o estado atual não for Idle
    local sState = application.getCurrentUserAIState ( "DMF_MenuActionsAI" )        
    if ( string.compare ( sState, "IDLE" ) ~= 0 ) then
    
        -- Primeiramente, incrementa a contagem de ticks.
        this.nLastTick ( this.nLastTick ( ) + application.getLastFrameTime ( ) )
        
        -- Se a contagem excedeu o número de ticks por quadro, exibe o próximo quadro ou termina.
        if ( this.nLastTick ( ) >= this.nTicksPerFrame ( ) ) then
            this.nLastTick ( 0 )
            
            local bExit
            if ( string.compare ( sState, "SHOWING_MENU" ) == 0 ) then
                this.nFrameCounter ( this.nFrameCounter ( ) + 1 )
                bExit = ( this.nFrameCounter ( ) >= this.nMenuFrames ( ) )
            else -- HIDING_MENU
                this.nFrameCounter ( this.nFrameCounter ( ) - 1 )
                bExit = ( this.nFrameCounter ( ) < 0 )
            end
            
            if ( bExit ) then
                this.IDLE ( )
            else
                user.sendEvent ( this.getUser ( ), "DMF_MenuActionsAI", "onShowFrame", this.nFrameCounter ( ) )
            end
        end        
        
    end
end
--------------------------------------------------------------------------------
