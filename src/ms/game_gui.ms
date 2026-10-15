game_gui_logic = function()
  if mouse.x>-125 and mouse.x<-115 and mouse.y>85 and mouse.y<95 then
    start_y=0
    gui.start_game=false
  end
end

draw_game_gui = function()
  screen.drawText(score,0,60,20,"#000")
  
  screen.drawSprite("buttons.4",90,20,50,20)
  screen.drawText("SHOP",90,20,12,"#222")
  
  screen.drawSprite("buttons.4",90,-10,50,20)
  screen.drawText("INDEX",90,-10,12,"#222")
  
  if gui.show_shop then
    screen.fillRect(0,0,150,100,"#AAA")
    screen.drawSprite("buttons.0",69,44,12,12)
  end
  
  screen.drawText("apples eaten:",0,80,10,"#888")
  screen.drawSprite("buttons.5",-120,90,10)
end

