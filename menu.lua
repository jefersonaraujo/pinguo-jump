----local   background_menu   =  display.newImageRect ("img/criff.png" , screenW * 2 , screenH * 2) 

local screenW, screenH = display.contentWidth, display.contentHeight
local composer = require( "composer" )
local neve = require("neve")


local scene = composer.newScene()
local physics = require("physics")

-- somFundo = audio.loadSound("music/happy.mp3")
physics.setGravity( 0,9.8 )

-- -----------------------------------------------------------------------------------------------------------------
-- All code outside of the listener functions will only be executed ONCE unless "composer.removeScene()" is called.
-- -----------------------------------------------------------------------------------------------------------------

-- local forward references should go here

-- -------------------------------------------------------------------------------


print("this is the menu file")
-- "scene:create()"
function scene:create(event)

    local sceneGroup = self.view

    local background_menu = display.newImageRect("img/bgplay4.png", screenW *2 , screenH * 2)    
    sceneGroup:insert(background_menu)

    local texto = display.newText("Pinguo Jump", screenW /2 , screenH / 4 , "snow.ttf", 60)
    texto:setFillColor(0,0,200)
    sceneGroup:insert(texto)


    audio.play(somFundo)

    local placa_menu = display.newImage("img/placa.png")
    placa_menu.width=700
    placa_menu.height=900
    placa_menu.x = 370
    placa_menu.y = screenH * 0.7   
    sceneGroup:insert(placa_menu)
    ----------------------

     --  local colisaobloco = display.newRect(300,1400,display.contentWidth,3)
     --  colisaobloco.y= 1300
     --  physics.addBody( colisaobloco, "static",{bounce=0.6 })
     -- colisaobloco:setFillColor( 0.5,0.255 )
     -- sceneGroup:insert(colisaobloco)


     -- Runtime:addEventListener("enterFrame",neve)
     
     -- sceneGroup:insert(colisaobloco)
     --   local  sheet1 = graphics.newImageSheet( "imagens/sprite.png", { width=90, height=90, numFrames=4})
     --   local   pinguo = display.newSprite(sheet1,{name="man", start=1, count=5, time=300,loopCount=1} )
     --  -- local rec
  
     --    physics.addBody( pinguo,"dynamic", {  bounce=1.2, friction=0.3} )
     --     pinguo.x = 150 ; pinguo.y = 1000
     --   pinguo.width = 90
     --    pinguo.height= 150
        
     --    -- pinguo.isFixedRotation = true
        
      
     --     sceneGroup:insert(pinguo)

    --------------



    local startButton = display.newImage("img/play.png")
    startButton.width=300
    startButton.height=100
    startButton.x = 370
    startButton.y = screenH * 0.46
    sceneGroup:insert(startButton)

    local optionsButton = display.newImage("img/options.png", 370, 900)
    optionsButton.width=300
    optionsButton.height=100
    optionsButton.x=370
    optionsButton.y=screenH * 0.54
    sceneGroup:insert(optionsButton)

  

    local creditsButton = display.newImage("img/credits.png", 370, 1100)
    creditsButton.width=300
    creditsButton.height=100
    creditsButton.x=370
    creditsButton.y=screenH * 0.7
    sceneGroup:insert(creditsButton)

    local scoresButton = display.newImage("img/scores.png", 370, 1100)
    scoresButton.width=300
    scoresButton.height=100
    scoresButton.x=370
    scoresButton.y=screenH * 0.62
    sceneGroup:insert(scoresButton)


    local function goToStartGame(event)
        print("start button has been tapped")
        composer.gotoScene( "game", {effect = "fade"} )
        return true
    end
    startButton:addEventListener("tap", goToStartGame)

    local function goToOptions(event)
        print("options button has been tapped")
        composer.gotoScene("options", {effect = "fade"})
        return true
    end
    optionsButton:addEventListener("tap", goToOptions)

     local function goToScores(event)
        print("score button has been tapped")
        composer.gotoScene("scores", {effect = "fade"})
        return true
    end
    scoresButton:addEventListener("tap", goToScores)


    local function goToCredits(event)
        print("credits button has been tapped")
        composer.gotoScene("credits", {effect = "fade"})
        return true
    end
    creditsButton:addEventListener("tap", goToCredits)

    
    

end


-- "scene:show()"
function scene:show( event )

    local sceneGroup = self.view
    local phase = event.phase

    if ( phase == "will" ) then
        -- Called when the scene is still off screen (but is about to come on screen).
    elseif ( phase == "did" ) then
        -- Called when the scene is now on screen.
        -- Insert code here to make the scene come alive.
        -- Example: start timers, begin animation, play audio, etc.
    end
end


-- "scene:hide()"
function scene:hide( event )

    local sceneGroup = self.view
    local phase = event.phase

    if ( phase == "will" ) then
        -- Called when the scene is on screen (but is about to go off screen).
        -- Insert code here to "pause" the scene.
        -- Example: stop timers, stop animation, stop audio, etc.
    elseif ( phase == "did" ) then
        -- Called immediately after scene goes off screen.
    end
end


-- "scene:destroy()"
function scene:destroy( event )

    local sceneGroup = self.view

    -- Called prior to the removal of scene's view ("sceneGroup").
    -- Insert code here to clean up the scene.
    -- Example: remove display objects, save state, etc.
end


-- -------------------------------------------------------------------------------

-- Listener setup
scene:addEventListener( "create", scene )
scene:addEventListener( "show", scene )
scene:addEventListener( "hide", scene )
scene:addEventListener( "destroy", scene )

-- -------------------------------------------------------------------------------

return scene