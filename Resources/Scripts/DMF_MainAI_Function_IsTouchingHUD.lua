--------------------------------------------------------------------------------
--  Function......... : IsTouchingHUD
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function DMF_MainAI.IsTouchingHUD ( x, y )
    -- Converte as coordenadas da tela para coordenadas do HUD
    x = x * 50 + 50
    y = y * 50 + 50
    
    -- Verifica se há um componente de HUD nessas coordenadas
    local hComp = hud.getComponentAtPoint ( this.getUser ( ), x, y )
    return hComp ~= nil
end
--------------------------------------------------------------------------------
