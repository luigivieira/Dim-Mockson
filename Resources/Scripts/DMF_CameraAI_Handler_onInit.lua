--------------------------------------------------------------------------------
--  Handler.......... : onInit
--  Author........... : Luiz C. Vieira
--  Description...... : Inicializa a automação da câmera
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function DMF_CameraAI.onInit (  )
    -- Armazena os vetores da posição e da direção da câmera
    local x, y, z = object.getTranslation ( this.getObject ( ), object.kGlobalSpace )
    this.nX ( x )
    this.nY ( y )
    this.nZ ( z )

    x, y, z = object.getDirection ( this.getObject ( ), object.kGlobalSpace )
    this.nDirX ( x )
    this.nDirY ( y )
    this.nDirZ ( z )

    x, y, z = math.vectorSetLength( this.nDirX ( ), this.nDirY ( ), this.nDirZ ( ), 100 )
    x, y, z = math.vectorAdd ( this.nX ( ), this.nY ( ), this.nZ ( ), x, y, z )
    this.nLookX ( x )
    this.nLookY ( y )
    this.nLookZ ( z )
    
    this.LookTowardsTarget ( this.nLookX ( ), this.nLookY ( ), this.nLookZ ( ), this.nDirX ( ), this.nDirY ( ), this.nDirZ ( ), true )
end
--------------------------------------------------------------------------------