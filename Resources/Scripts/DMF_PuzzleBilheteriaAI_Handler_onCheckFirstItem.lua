--------------------------------------------------------------------------------
--  Handler.......... : onCheckFirstItem
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function DMF_PuzzleBilheteriaAI.onCheckFirstItem (  )
    if ( this.bFirstItem() and hashtable.getSize ( this.htItems ( ) ) == 1 ) then
        this.bFirstItem ( false )
        this.Say ( "Primeiro Item" )
    end
end
--------------------------------------------------------------------------------
