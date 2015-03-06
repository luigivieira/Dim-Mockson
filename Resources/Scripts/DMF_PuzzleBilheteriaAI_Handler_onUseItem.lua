--------------------------------------------------------------------------------
--  Handler.......... : onUseItem
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function DMF_PuzzleBilheteriaAI.onUseItem ( sItem, sTag, hObj )

    if ( string.compare ( sItem, "Ingresso" ) == 0 and string.compare ( sTag, "Dim Mockson" ) == 0 ) then
    
        this.Say ( "Dim Ingresso" )
        this.bDimIngresso ( true )
        object.sendEvent ( hObj, "DMF_Animation", "onStop" )
        object.sendEvent ( hObj, "DMF_Animation", "onHappy" )        
        
    else        
    
        this.Say ( "Objeto Potencial" )
    
    end

end
--------------------------------------------------------------------------------
