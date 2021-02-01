require('memory').setuint32((0x0052228C + 0x2), 0xB6EC1C) -- ptr to vertical mouse acceleration -> ptr to horizontal
require('memory').fill(0x00531155, 0x90, 5, true) -- shift afk fix
require('memory').fill(sampGetBase() + 0x2D3C45, 0, 2, true) -- fast connect
require('memory').fill(0x555854, 0x90, 5, true) -- fix interior
-- fix interior
--writeMemory(0x555854, 4, -1869574000, true)
--writeMemory(0x555858, 1, 144, true)
