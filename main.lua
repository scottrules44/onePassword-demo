local onePassword = require( "plugin.onePassword" )

local function listener( e )
	if (e.username) then
		native.showAlert( "onePassword", "Your username:"..e.username..", Your password:"..e.password, {"Ok"} )
	else
		native.showAlert( "onePassword", "Error:"..e.error, {"Ok"} )
	end
end

local function handleTap( event )
	onePassword.show(listener, "http://coronalabs.com")
	return true
end
local myText = display.newText("Show 1password", display.contentCenterX, display.contentCenterY, native.systemFont, 20)
myText:addEventListener( "tap", handleTap )