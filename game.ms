text.clear
import "listUtil"
/////////////////////////////////////////////////////////////////////
// This is the display setting section.                           //
display(0).mode = displayMode.text //Sets display 0 as text mode.//
display(1).mode = displayMode.text                             //
display(3).mode = displayMode.sprite                         //
display(5).mode = displayMode.sprite                       //
display(6).mode = displayMode.sprite                     //
display(7).mode = displayMode.sprite                   //
//////////////////////////////////////////////////////////////
// Giveing a referance to it as cdp - chat display.        //
//cdp = display(0)
text = display(0)                                       //
// Giveing a referance to it as ldp - labels display.      //
//ldp = display(1)                                           //   
// Giveing a referance to it as uidp - ui display.         //
uidp = display(3)                                          //
// Giveing a referance to it as pdp - players display.     //
//pdp = display(5)                                           //
// Giveing a referance to it as ddp - decaration display.  //
//ddp = display(6)                                         //
// Giveing a referance to it as sdp - scenery display. //
//sdp = display(7)                                     //
// Giveing a referance to it as mdp - map display. //
//mdp = display(8)                                 //
/////////////////////////////////////////////////
//aop = {}
ui = {}

ui.main = function
	health_bar_200 = new Sprite
	health_bar_200.image = file.loadImage("/usr/Assets/UiWidgets/HealthBar/healthbar200.png")
	health_bar_200.x = 102; health_bar_200.y = 35
	uidp.sprites.push health_bar_200
	// This is the action bar section.
	xp_bar_0 = new Sprite
	xp_bar_0.image = file.loadImage("/usr/Assets/UiWidgets/XpBar/xpbar0.png")
	xp_bar_0.x = 480; xp_bar_0.y = 590
	uidp.sprites.push xp_bar_0
	// This is the Mini Map section.
	mini_map = new Sprite
	mini_map.image = file.loadImage("/usr/Assets/UiWidgets/minimap.png")
	mini_map.x = 860; mini_map.y = 95
	uidp.sprites.push mini_map
	// This is the action bar section.
	action_bar = new Sprite
	action_bar.image = file.loadImage("/usr/Assets/UiWidgets/quickbar.png")
	action_bar.x = 480; action_bar.y = 30
	uidp.sprites.push action_bar	
	
	// This is the resourses Bar Section.
	resourses_bar = new Sprite
	resourses_bar.image = file.loadImage("/usr/Assets/UiWidgets/resourcesbar.png")
	resourses_bar.x = 480; resourses_bar.y = 628
	uidp.sprites.push resourses_bar
	
	ttb = new Sprite
	ttb.image = file.loadImage("/usr/Assets/UiWidgets/techbutton.png")
	ttb.x = 70; ttb.y = 600
	ttb.localBounds = new Bounds 
	ttb.localBounds.width = ttb.image.width 
	ttb.localBounds.height = ttb.image.height
	ttb.check_mouse = function
		if self.contains(mouse) and mouse.button then
			ui.techtree
		end if
	end function
	uidp.sprites.push ttb
	
	invb = new Sprite
	invb.image = file.loadImage("/usr/Assets/UiWidgets/inventoryicon.png")
	invb.x = 45; invb.y = 600
	invb.localBounds = new Bounds 
	invb.localBounds.width = invb.image.width 
	invb.localBounds.height = invb.image.height
	invb.check_mouse = function
		if self.contains(mouse) and mouse.button then
			ui.smallinv
		end if
	end function
	uidp.sprites.push invb
	
	pstatsb = new Sprite
	pstatsb.image = file.loadImage("/usr/Assets/UiWidgets/playerstats.png")
	pstatsb.x = 95; pstatsb.y = 600
	pstatsb.localBounds = new Bounds 
	pstatsb.localBounds.width = pstatsb.image.width 
	pstatsb.localBounds.height = pstatsb.image.height
	pstatsb.check_mouse = function
		if self.contains(mouse) and mouse.button then
			ui.pstats
		end if
	end function
	uidp.sprites.push pstatsb
	
	stb = new Sprite
	stb.image = file.loadImage("/usr/Assets/UiWidgets/skillsbutton.png")
	stb.x = 120; stb.y = 600
	stb.localBounds = new Bounds 
	stb.localBounds.width = stb.image.width 
	stb.localBounds.height = stb.image.height
	stb.check_mouse = function
		if self.contains(mouse) and mouse.button then
			ui.st
		end if
	end function
	uidp.sprites.push stb
end function


ui.techtree = function
	tt = new Sprite
	tt.image = file.loadImage("/usr/Assets/UiWidgets/techtree.png")
	tt.x = 560; tt.y = 400
	uidp.sprites.push tt
	
	xbutton = new Sprite
	xbutton.image = file.loadImage("/usr/Assets/UiWidgets/xbutton.png")
	xbutton.x = 713; xbutton.y = 515
	xbutton.localBounds = new Bounds 
	xbutton.localBounds.width = xbutton.image.width 
	xbutton.localBounds.height = xbutton.image.height
	xbutton.check_mouse = function()
		if self.contains(mouse) and mouse.button then
			uidp.sprites.removeVal xbutton
			uidp.sprites.removeVal tt
		end if
	end function
	uidp.sprites.push xbutton
end function
ui.smallinv = function
	// This is the iventory Section. Small, Medium sizes.
	smallinventory = new Sprite
	smallinventory.image = file.loadImage("/usr/Assets/UiWidgets/smallinventory.png")
	smallinventory.x = 200; smallinventory.y = 468
	uidp.sprites.push smallinventory
	
	xbutton = new Sprite
	xbutton.image = file.loadImage("/usr/Assets/UiWidgets/xbutton.png")
	xbutton.x = 309; xbutton.y = 515
	xbutton.localBounds = new Bounds 
	xbutton.localBounds.width = xbutton.image.width 
	xbutton.localBounds.height = xbutton.image.height
	xbutton.check_mouse = function()
		if self.contains(mouse) and mouse.button then
			uidp.sprites.removeVal xbutton
			uidp.sprites.removeVal smallinventory
		end if
	end function
	uidp.sprites.push xbutton
end function
ui.pstats = function
	playerstats = new Sprite
	playerstats.image = file.loadImage("/usr/Assets/UiWidgets/playerstat.png")
	playerstats.x = 560; playerstats.y = 380
	uidp.sprites.push playerstats
	
	xbutton = new Sprite
	xbutton.image = file.loadImage("/usr/Assets/UiWidgets/xbutton.png")
	xbutton.x = 740; xbutton.y = 520
	xbutton.localBounds = new Bounds 
	xbutton.localBounds.width = xbutton.image.width 
	xbutton.localBounds.height = xbutton.image.height
	xbutton.check_mouse = function()
		if self.contains(mouse) and mouse.button then
			uidp.sprites.removeVal xbutton
			uidp.sprites.removeVal playerstats
		end if
	end function
	uidp.sprites.push xbutton
end function
ui.main
while true
	yield
	for ui_item in uidp.sprites
		if not ui_item.hasIndex("check_mouse") then continue
		ui_item.check_mouse
	end for
end while
