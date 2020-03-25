setscreen ("graphics:900;700")
var bgx : int := 100
var bgy : int := 100
var bgxspeed : int := 0
var bgyspeed : int := 0
var bgx2 : int := 600
var bgy2 : int := 75
var bgxspeed2 : int := 0
var bgyspeed2 : int := 0
var bgx3 : int := 0
var bgy3 : int := 0
var bgxspeed3 : int := 0
var bgyspeed3 : int := 0
var bgx4 : int := 100
var bgy4 : int := 100
var bgxspeed4 : int := 0
var bgyspeed4 : int := 0
var x : int := 800
var y : int := 350
var dsx : int := 300
var dsy : int := 300
var pic1 : int := Pic.FileNew ("BeastMaster64_SpriteLOWRES(2).jpg")
pic1 := Pic.Scale (pic1, 88, 71)
Pic.SetTransparentColor (pic1, white)
Pic.Draw (pic1, x, y, 0)
var pic2 : int := Pic.FileNew ("baldiSprite.jpg")
pic2 := Pic.Scale (pic2, 100, 150)
var pic4 : int := Pic.FileNew ("Creeper.jpg")
pic4 := Pic.Scale (pic4, 100, 150)
var pic5 : int := Pic.FileNew ("Combine_1.jpg")
pic5 := Pic.Scale (pic5, 100, 150)


var pic3 : int := Pic.FileNew ("diamondSword.gif")

pic3 := Pic.Scale (pic3, 100, 100)
Pic.Draw (pic3, dsx, dsy, picCopy)
Pic.Draw (pic2, bgx, bgy, picCopy)
Pic.Draw (pic4, bgx2, bgy2, picCopy)
Draw.FillBox (bgx - 5, bgy - 5, bgx + 105, bgy + 170, white)
put "Level 1"

var c : string (1)
loop
    if hasch then
        getch (c)
        if c = KEY_UP_ARROW then
            y := y + 5
        elsif c = KEY_DOWN_ARROW then
            y := y - 5
        elsif c = KEY_LEFT_ARROW then
            x := x - 5
        elsif c = KEY_RIGHT_ARROW then
            x := x + 5
        end if
        if bgx = 100 and bgy = 100 then
            bgxspeed := 10
            bgyspeed := 0
        elsif bgx = 500 and bgy = 100 then
            bgyspeed := 10
            bgxspeed := 0
        elsif bgx = 500 and bgy = 400 then
            bgxspeed := -10
            bgyspeed := 0
        elsif bgx = 100 and bgy = 400 then
            bgyspeed := -10
            bgxspeed := 0
        end if
        if bgx2 = 600 and bgy2 = 75 then
            bgxspeed2 := 0
            bgyspeed2 := 10
        elsif bgx2 = 600 and bgy2 = 625 then
            bgyspeed2 := -10
            bgxspeed2 := 0
        end if
        Draw.FillBox (x - 5, y - 5, x + 93, y + 76, white)
        Pic.Draw (pic1, x, y, picCopy)
        Pic.Draw (pic3, dsx, dsy, picCopy)
        bgx += bgxspeed
        bgy += bgyspeed
        Draw.FillBox (bgx - 15, bgy - 15, bgx + 115, bgy + 160, white)
        Pic.Draw (pic2, bgx, bgy, picCopy)
        bgx2 += bgxspeed2
        bgy2 += bgyspeed2
        Draw.FillBox (bgx2 - 20, bgy2 - 20, bgx2 + 105, bgy2 + 170, white)
        Pic.Draw (pic4, bgx2, bgy2, picCopy)
        if x <= dsx + 50 and x >= dsx - 50 and y >= dsy - 50 and y <= dsy + 50 then
            cls
            put "Level 2"
            bgx := 300
            bgy := 700
            bgx2 := 100
            bgy2 := 300
            bgx3 := 100
            bgy3 := 50
            dsx := 100
            dsy := 300
            x := 800
            y := 350
            pic3 := Pic.Scale (pic3, 100, 100)
            Pic.Draw (pic3, dsx, dsy, picCopy)
            Pic.Draw (pic2, bgx, bgy, picCopy)
            Pic.Draw (pic4, bgx2, bgy2, picCopy)
            Pic.Draw (pic5, bgx3, bgy3, picCopy)
            Draw.FillBox (bgx - 5, bgy - 5, bgx + 105, bgy + 170, white)
            loop
                Pic.Draw (pic3, dsx, dsy, picCopy)
                if hasch then
                    getch (c)
                    if c = KEY_UP_ARROW then
                        y := y + 5
                    elsif c = KEY_DOWN_ARROW then
                        y := y - 5
                    elsif c = KEY_LEFT_ARROW then
                        x := x - 5
                    elsif c = KEY_RIGHT_ARROW then
                        x := x + 5
                    end if
                    if bgx = 300 and bgy = 700 then
                        bgxspeed := 10
                        bgyspeed := -10
                    elsif bgx = 800 and bgy = 200 then
                        bgyspeed := 0
                        bgxspeed := -10
                    elsif bgx = 500 and bgy = 200 then
                        bgxspeed := -10
                        bgyspeed := 0
                    elsif bgx = 300 and bgy = 200 then
                        bgyspeed := 10
                        bgxspeed := 0
                    end if
                    if bgx2 = 100 and bgy2 = 300 then
                        bgxspeed2 := 10
                        bgyspeed2 := -10
                    elsif bgx2 = 300 and bgy2 = 100 then
                        bgyspeed2 := 10
                        bgxspeed2 := 10
                    elsif bgx2 = 500 and bgy2 = 300 then
                        bgyspeed2 := 0
                        bgxspeed2 := -20
                    end if
                    if y = 100 then
                        bgxspeed3 := 20
                    end if
                    Draw.FillBox (x - 5, y - 5, x + 93, y + 76, white)
                    Pic.Draw (pic1, x, y, picCopy)
                    bgx += bgxspeed
                    bgy += bgyspeed
                    Draw.FillBox (bgx - 15, bgy - 15, bgx + 115, bgy + 160, white)
                    Pic.Draw (pic2, bgx, bgy, picCopy)
                    bgx2 += bgxspeed2
                    bgy2 += bgyspeed2
                    Draw.FillBox (bgx2 - 20, bgy2 - 20, bgx2 + 120, bgy2 + 170, white)
                    Pic.Draw (pic4, bgx2, bgy2, picCopy)
                    bgx3 += bgxspeed3
                    bgy3 += bgyspeed3
                    Draw.FillBox (bgx3 - 20, bgy3 - 20, bgx3 + 120, bgy3 + 170, white)
                    Pic.Draw (pic5, bgx3, bgy3, picCopy)
                    if x <= dsx + 50 and x >= dsx - 50 and y >= dsy - 50 and y <= dsy + 50 then
                        cls
                        put "You Win"
                        exit
                    elsif x >= 0 and x <= 900 and y = 0 then
                        cls
                        put "Game Over"
                        exit
                    elsif x >= 0 and x <= 900 and y = 650 then
                        cls
                        put "Game Over"
                        exit
                    elsif y >= 0 and y <= 650 and x = 0 then
                        cls
                        put "Game Over"
                        exit
                    elsif y >= 0 and y <= 650 and x = 850 then
                        cls
                        put "Game Over"
                        exit
                    elsif x <= bgx3 + 50 and x >= bgx3 - 50 and y <= bgy3 + 120 and y >= bgy3 - 120 then
                        cls
                        put "Game Over"
                        exit
                    elsif x <= bgx2 + 50 and x >= bgx2 - 50 and y <= bgy2 + 120 and y >= bgy2 - 120 then
                        cls
                        put "Game Over"
                        exit
                    elsif x <= bgx + 50 and x >= bgx - 50 and y <= bgy + 90 and y >= bgy - 90 then
                        cls
                        put "Game Over"
                        exit
                    end if
                end if
            end loop
            exit
        end if
        if x >= 0 and x <= 900 and y = 0 then
            cls
            put "Game Over"
            exit
        elsif x >= 0 and x <= 900 and y = 650 then
            cls
            put "Game Over"
            exit
        elsif y >= 0 and y <= 650 and x = 0 then
            cls
            put "Game Over"
            exit
        elsif y >= 0 and y <= 650 and x = 850 then
            cls
            put "Game Over"
            exit
        elsif x <= bgx2 + 50 and x >= bgx2 - 50 and y <= bgy2 + 75 and y >= bgy2 - 75 then
            cls
            put "Game Over"
            exit
        elsif x <= bgx + 50 and x >= bgx - 50 and y <= bgy + 90 and y >= bgy - 90 then
            cls
            put "Game Over"
            exit
        end if
    end if
end loop

