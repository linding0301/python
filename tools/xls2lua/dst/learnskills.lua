-- excel xlstable format (sparse 3d matrix)
--{	[sheet1] = { [row1] = { [col1] = value, [col2] = value, ...},
--					 [row5] = { [col3] = value, }, },
--	[sheet2] = { [row9] = { [col9] = value, }},
--}
-- nameindex table
--{ [sheet,row,col name] = index, .. }
sheetname = {
["Sheet1"] = 4,
["10001"] = 1,
["10002"] = 2,
["10003"] = 3,
};

sheetindex = {
[4] = "Sheet1",
[1] = "10001",
[2] = "10002",
[3] = "10003",
};

local learnskills = {
[1] = {
	[30001] = {
		["ID"] = 30001,
		["character_level"] = 1,
		["cost"] = 0,
		["next_skill"] = 0,
	},
	[30002] = {
		["ID"] = 30002,
		["character_level"] = 1,
		["cost"] = 0,
		["next_skill"] = 0,
	},
	[30003] = {
		["ID"] = 30003,
		["character_level"] = 1,
		["cost"] = 0,
		["next_skill"] = 0,
	},
	[30004] = {
		["ID"] = 30004,
		["character_level"] = 1,
		["cost"] = 0,
		["next_skill"] = 0,
	},
	[30005] = {
		["ID"] = 30005,
		["character_level"] = 1,
		["cost"] = 0,
		["next_skill"] = 0,
	},
},
[2] = {
	[30006] = {
		["ID"] = 30006,
		["character_level"] = 1,
		["cost"] = 0,
		["next_skill"] = 0,
	},
	[30007] = {
		["ID"] = 30007,
		["character_level"] = 1,
		["cost"] = 0,
		["next_skill"] = 0,
	},
	[30008] = {
		["ID"] = 30008,
		["character_level"] = 1,
		["cost"] = 0,
		["next_skill"] = 0,
	},
	[30009] = {
		["ID"] = 30009,
		["character_level"] = 1,
		["cost"] = 0,
		["next_skill"] = 0,
	},
	[30010] = {
		["ID"] = 30010,
		["character_level"] = 1,
		["cost"] = 0,
		["next_skill"] = 0,
	},
},
[3] = {
	[30011] = {
		["ID"] = 30011,
		["character_level"] = 1,
		["cost"] = 0,
		["next_skill"] = 0,
	},
	[30012] = {
		["ID"] = 30012,
		["character_level"] = 1,
		["cost"] = 0,
		["next_skill"] = 0,
	},
	[30013] = {
		["ID"] = 30013,
		["character_level"] = 1,
		["cost"] = 0,
		["next_skill"] = 0,
	},
	[30014] = {
		["ID"] = 30014,
		["character_level"] = 1,
		["cost"] = 0,
		["next_skill"] = 0,
	},
	[30015] = {
		["ID"] = 30015,
		["character_level"] = 1,
		["cost"] = 0,
		["next_skill"] = 0,
	},
},
[4] = {
};

-- functions for xlstable read
local __getcell = function (t, a,b,c) return t[a][b][c] end
function GetCell(sheetx, rowx, colx)
	rst, v = pcall(__getcell, xlstable, sheetx, rowx, colx)
	if rst then return v
	else return nil
	end
end

function GetCellBySheetName(sheet, rowx, colx)
	return GetCell(sheetname[sheet], rowx, colx)
end

__XLS_END = true

return learnskills[1]
