local wstc = WindowSetTintColor
WindowSetTintColor = function(window, r, g, b)
	if DoesWindowExist(window) then
		wstc(window, r, g, b)
	else
		d("Failed to set tint color on "..window)
	end
end
local dist = DynamicImageSetTexture
DynamicImageSetTexture = function(window, texture, num1, num2)
	if DoesWindowExist(window) then
		dist(window, texture, num1, num2)
	else
		d("Failed to set texture on "..window)
	end
end
local bsdf = ButtonSetDisabledFlag;
ButtonSetDisabledFlag = function(button, able)
	if DoesWindowExist(button) then
		bsdf(button, able)
	else
		d("Failed to set disabled on "..button)
	end
end
local wss = WindowSetShowing;
WindowSetShowing = function(window, able)
	if DoesWindowExist(window) then
		wss(window, able)
	else
		d("Failed to set showing on "..window)
	end
end
local wreh = WindowRegisterEventHandler;
WindowRegisterEventHandler = function(window, event, handler)
	if DoesWindowExist(window) then
		wreh(window, event, handler)
	else
		d("Failed to register event handler on "..window)
	end
end
local dw = DestroyWindow
DestroyWindow = function(window)
	if DoesWindowExist(window) then
		dw(window)
	else
		d("Failed to destroy "..window)
	end
end
local wga = WindowGetAlpha
WindowGetAlpha = function(window)
	if DoesWindowExist(window) then
		return wga(window)
	else
		d("Failed to get alpha of "..window)
		return 0
	end
end
local wsa = WindowSetAlpha
WindowSetAlpha = function(window, alpha)
	if DoesWindowExist(window) then
		return wsa(window, alpha)
	else
		d("Failed to set alpha of "..window)
	end
end
local wgs = WindowGetScale
WindowGetScale = function(window)
	if DoesWindowExist(window) then
		return wgs(window)
	else
		d("Failed to get scale of "..window)
		return 0
	end
end
local wss = WindowSetScale
WindowSetScale = function(window, scale)
	if DoesWindowExist(window) then
		return wss(window, scale)
	else
		d("Failed to set scale of "..window)
	end
end
local wgd = WindowGetDimensions
WindowGetDimensions = function(window)
	if DoesWindowExist(window) then
		return wgd(window)
	else
		d("Failed to get dimensions of "..window)
		return 0, 0
	end
end
local wsd = WindowSetDimensions
WindowSetDimensions = function(window, x, y)
	if DoesWindowExist(window) then
		return wsd(window, x, y)
	else
		d("Failed to set dimensions of "..window)
	end
end
local wgac = WindowGetAnchorCount
WindowGetAnchorCount = function(window)
	if DoesWindowExist(window) then
		return wgac(window)
	else
		d("Failed to get dimensions of "..window)
		return 0
	end
end
local wgofp = WindowGetOffsetFromParent
WindowGetOffsetFromParent = function(window)
	if DoesWindowExist(window) then
		return wgofp(window)
	else
		d("Failed to get offset of parent of "..window)
		return 0, 0
	end
end
local wsofp = WindowSetOffsetFromParent
WindowSetOffsetFromParent = function(window, x, y)
	if DoesWindowExist(window) then
		return wsofp(window, x, y)
	else
		d("Failed to set offset of parent of "..window)
	end
end
local wgsp = WindowGetScreenPosition
WindowGetScreenPosition = function(window)
	if DoesWindowExist(window) then
		return wgsp(window)
	else
		d("Failed to get screen position of "..window)
		return 0,0,0,0
	end
end
local wgp = WindowGetParent
WindowGetParent = function(window)
	if DoesWindowExist(window) then
		return wgp(window)
	else
		d("Failed to get screen position of "..window)
		return "Root"
	end
end
local waa = WindowAddAnchor
WindowAddAnchor = function(window, anchor, point, refpoint, offsetX, offsetY)
	if DoesWindowExist(window) then
		return waa(window, anchor, point, refpoint, offsetX, offsetY)
	else
		d("Failed to add anchor to "..window)
	end
end
local wca = WindowClearAnchors
WindowClearAnchors = function(window)
	if DoesWindowExist(window) then
		return wca(window)
	else
		d("Failed to clear anchor of "..window)
	end
end