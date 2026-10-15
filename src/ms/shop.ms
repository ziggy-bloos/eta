shop_logic = function()
  if mouse.x>65 and mouse.x<115 and mouse.y>10 and mouse.y<30 then
      gui.show_credits=false
      gui.show_shop=true
  end
  
  if gui.show_shop then
    if mouse.x>63 and mouse.x<75 and mouse.y>38 and mouse.y<50 then
      gui.show_shop=false
    end
  end
end
