function patch() --fast loading
	if mem.getuint8(0x748C2B) == 0xE8 then
		mem.fill(0x748C2B, 0x90, 5, true)
	elseif mem.getuint8(0x748C7B) == 0xE8 then
		mem.fill(0x748C7B, 0x90, 5, true)
	end
	if mem.getuint8(0x5909AA) == 0xBE then
		mem.write(0x5909AB, 1, 1, true)
	end
	if mem.getuint8(0x590A1D) == 0xBE then
		mem.write(0x590A1D, 0xE9, 1, true)
		mem.write(0x590A1E, 0x8D, 4, true)
	end
	if mem.getuint8(0x748C6B) == 0xC6 then
		mem.fill(0x748C6B, 0x90, 7, true)
	elseif mem.getuint8(0x748CBB) == 0xC6 then
		mem.fill(0x748CBB, 0x90, 7, true)
	end
	if mem.getuint8(0x590AF0) == 0xA1 then
		mem.write(0x590AF0, 0xE9, 1, true)
		mem.write(0x590AF1, 0x140, 4, true)
	end
end
patch()

require('memory').setuint32((0x0052228C + 0x2), 0xB6EC1C) -- ptr to vertical mouse acceleration -> ptr to horizontal
require('memory').fill(0x00531155, 0x90, 5, true) -- shift afk fix
require('memory').fill(sampGetBase() + 0x2D3C45, 0, 2, true) -- fast connect
require('memory').fill(0x555854, 0x90, 5, true) -- fix interior
-- fix interior
--writeMemory(0x555854, 4, -1869574000, true)
--writeMemory(0x555858, 1, 144, true)
require('memory').setuint32((0x0052228C + 0x2), 0xB6EC1C) -- ptr to vertical mouse acceleration -> ptr to horizontal
require('memory').fill(0x00531155, 0x90, 5, true) -- shift afk fix
require('memory').fill(sampGetBase() + 0x2D3C45, 0, 2, true) -- fast connect
require('memory').fill(0x555854, 0x90, 5, true) -- fix interior
-- fix interior
--writeMemory(0x555854, 4, -1869574000, true)
--writeMemory(0x555858, 1, 144, true)
