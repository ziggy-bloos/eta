start_logic = function()
  if mouse.x>-25 and mouse.x<25 and mouse.y>start_y-60 and mouse.y<start_y-40 then
    gui.start_game=true
  end
end

start_anim = function()
  if start_y <= 10 then
    start_y+=0.5
  end
end

draw_start_gui = function()
  screen.drawSprite("icon",0,start_y+20,100,100)
  screen.drawText("Eat apples. Complete the apple index.",0,start_y-30,8,"#888")
  screen.drawSprite("buttons.4",0,start_y-50,50,20)
  screen.drawText("PLAY",0,start_y-50,14,"#222")
  
  draw_credits()
  screen.drawSprite("buttons.3",-48,92,8)
  screen.drawText("Made with microStudio",-92,92,8,"#888")
  screen.drawText("by Ziggy Bloos!!",102,92,9,"#08F")
end
