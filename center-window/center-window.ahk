#NoTrayIcon

; Win+C
#c::

; Creates variables Mon#Left, Mon#Right, Mon#Top, Mon#Bottom
SysGet, Mon1, MonitorWorkArea, 1
SysGet, Mon2, MonitorWorkArea, 2

WinExist("A")
WinGetPos, posX, posY, sizeX, sizeY

if Mon2Left
{
	; Active window's centre is on the first monitor - center on first monitor
	if ((posX + (sizeX / 2)) < Mon2Left)
	{
		targetX := ((Mon1Right - Mon1Left) / 2) - (sizeX / 2)
		targetY := ((Mon1Bottom - Mon1Top) / 2) - (sizeY / 2)
		WinMove, %targetX%, %targetY%
	}

	; Active window's centre is past the first monitor boundary - center on second monitor
	else
	{
		targetX := Mon2Left + ((Mon2Right - Mon2Left) / 2) - (sizeX / 2)
		targetY := Mon2Top + ((Mon2Bottom - Mon2Top) / 2) - (sizeY / 2)
		WinMove, %targetX%, %targetY%
	}
}

else
{
	targetX := ((Mon1Right - Mon1Left) / 2) - (sizeX / 2)
	targetY := ((Mon1Bottom - Mon1Top) / 2) - (sizeY / 2)
	WinMove, %targetX%, %targetY%
}
