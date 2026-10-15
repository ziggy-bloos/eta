local license_text="
-------------------------------------------------
Made with microStudio
website: (https://microstudio.dev)

microStudio license (MIT LICENSE):
Copyright (c) 2021 Gilles Pommereuil

Permission is hereby granted, free of charge,
to any person obtaining a copy of this software
and associated documentation files (the
\"Software\"), to deal in the Software without
restriction, including without limitation the
rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of
the Software, and to permit persons to whom
the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission
notice shall be included in all copies or
substantial portions of the Software.

THE SOFTWARE IS PROVIDED \"AS IS\", WITHOUT
WARRANTY OF ANY KIND, EXPRESS OR IMPLIED,
INCLUDING BUT NOT LIMITED TO THE WARRANTIES
OF MERCHANTABILITY, FITNESS FOR A PARTICULAR
PURPOSE AND NONINFRINGEMENT. IN NO EVENT
SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
TORT OR OTHERWISE, ARISING FROM, OUT OF OR
IN CONNECTION WITH THE SOFTWARE OR THE USE
OR OTHER DEALINGS IN THE SOFTWARE.
-------------------------------------------------"

local license_lines=license_text.split("\n")
local license_x=-90

local draw_license = function()
  local l_y=license_y
  
  for ln in license_lines
    local ln_x=license_x+screen.textWidth(ln) / 2
    
    screen.drawText(ln,ln_x,l_y,8,"#222")
    l_y-=9
  end
end

draw_credits = function()
  if gui.show_credits then
    screen.fillRect(0,0,200,150,"#AAA")
    screen.drawSprite("buttons.0",94,69,12,12)
    screen.drawSprite("buttons.1",92,-45,10,10)
    screen.drawSprite("buttons.2",92,-60,10,10)
    
    draw_license()
    screen.fillRect(0,87.9,200,27,"#FFF")
    screen.fillRect(0,-87.9,200,27,"#FFF")
  end
end

credits_logic = function()
  if mouse.x>-52 and mouse.x<-44 and mouse.y>88 and mouse.y<96 then
    gui.show_shop=false
    gui.show_credits=true
  end
  
  if gui.show_credits then
    if mouse.x>-40 and mouse.x<101 and mouse.y>64 and mouse.y<75 then
      gui.show_credits=false
    end
    
    if mouse.x>87 and mouse.x<97 and mouse.y>-65 and mouse.y<-55 then
      if license_y<245 then
        license_y+=35
      end
    end
    if mouse.x>87 and mouse.x<97 and mouse.y>-50 and mouse.y<-40 then
      if license_y>70 then
        license_y-=35
      end
    end
  end
end
