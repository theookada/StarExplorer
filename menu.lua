
local composer = require( "composer" )

local scene = composer.newScene()

-- -----------------------------------------------------------------------------------
-- Code outside of the scene event functions below will only be executed ONCE unless
-- the scene is removed entirely (not recycled) via "composer.removeScene()"
-- -----------------------------------------------------------------------------------

local function gotoGame()
	composer.gotoScene( "game" )
end

local function gotoHighScores()
	composer.gotoScene( "highscores" )
end


-- -----------------------------------------------------------------------------------
-- Scene event functions
-- -----------------------------------------------------------------------------------

-- create()
function scene:create( event )

	local sceneGroup = self.view
	-- Code here runs when the scene is first created but has not yet appeared on screen

	local background = display.newImageRect( sceneGroup, "background.png", 800, 1400 )
	background.x = display.contentCenterX
	background.y = display.contentCenterY

	local title = display.newImageRect( sceneGroup, "title.png", 500, 80 )
	title.x = display.contentCenterX
	title.y = 200

	local playButton = display.newText( sceneGroup, "Play", display.contentCenterX, 700, native.systemFont, 44 )
	playButton:setFillColor( 0.82, 0.86, 1 )

	local highScoresButton = display.newText( sceneGroup, "High Scores", display.contentCenterX, 810, native.systemFont, 44 )
	highScoresButton:setFillColor( 0.75, 0.78, 1 )
end
