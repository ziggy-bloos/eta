init = function()
  score=0
  
  gui=[]
  gui.show_credits=false
  gui.show_shop=false
  gui.start_game=false
  
  apple="apple.0"
  apple_index=0
  clicked_apple=false
  
  license_y=70
  
  start_y=0
end

update = function()
  if gui.start_game then
    if mouse.press and mouse.left then
      game_gui_logic()
      apple_logic()
      shop_logic()
      credits_logic()
    end
  else
    start_anim()
    if mouse.press and mouse.left then
      credits_logic()
      start_logic()
    end
  end
end

draw = function()
  screen.fillRect(0,0,400,400,"#FFF")
  
  if gui.start_game then
    draw_apple()
    draw_game_gui()
  else
    draw_start_gui()
  end
end
