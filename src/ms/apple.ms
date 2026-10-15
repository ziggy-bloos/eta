apple_logic = function()
  if not gui.show_credits and not gui.show_shop then
    if mouse.x>-40 and mouse.x<40 and mouse.y>-40 and mouse.y<40 then
      clicked_apple=true
      
      local apples=["apple.0", "apple.1", "apple.2", "apple.3", "apple.4", "apple.5"]
      apple_index+=1
      if apple_index>=apples.length then
        apple_index=0
      end
      apple=apples[apple_index]
      
      if apple == "apple.0" then
        score+=1
      end
    end
  end
end

draw_apple = function()
  if clicked_apple then
    for i=1 to 10
      local s=i/120
      screen.setScale(1-s,1-s)
    end
    screen.setRotation(random.nextInt(-5))
    
    clicked_apple=false
  end
  screen.drawSprite(apple,0,0,80,80)
  screen.setScale(1,1)
  screen.setRotation(0)
end
