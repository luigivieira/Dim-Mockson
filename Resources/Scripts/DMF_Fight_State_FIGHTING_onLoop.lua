--------------------------------------------------------------------------------
--  State............ : FIGHTING
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function DMF_Fight.FIGHTING_onLoop ( )

    local bNext = false
    
    this.nTimeSinceLastFrame ( this.nTimeSinceLastFrame ( ) + application.getLastFrameTime ( ) )
    if ( this.nTimeSinceLastFrame ( ) > 0.065 ) then
        this.nTimeSinceLastFrame ( 0 )
        bNext = true
    end

    if ( bNext ) then
        shape.setMeshSubsetMaterialEffectMap0AdditionalUVOffset ( this.getObject ( ), 0, this.nUOffset ( ), this.nVOffset ( ) )
        
        this.nUOffset ( this.nUOffset ( ) + ( 1 / this.nUSize ( ) ) )
        
        if( this.nUOffset ( ) >= 1 ) then
            this.nUOffset ( 0 )
            this.nVOffset ( this.nVOffset ( ) + ( 1 / this.nVSize ( ) ) )
            
            if( this.nVOffset ( ) >= 1 ) then
                this.nVOffset ( 0 )
            end
        end
    end
    
    -- Para a animação da luta quando o efeito sonoro terminar
    if ( not sound.isPlaying ( this.getObject ( ), 11 ) ) then
        this.FINISHED ( )
    end

end
--------------------------------------------------------------------------------
