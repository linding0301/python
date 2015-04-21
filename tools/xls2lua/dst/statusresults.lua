-- excel xlstable format (sparse 3d matrix)
--{	[sheet1] = { [row1] = { [col1] = value, [col2] = value, ...},
--					 [row5] = { [col3] = value, }, },
--	[sheet2] = { [row9] = { [col9] = value, }},
--}
-- nameindex table
--{ [sheet,row,col name] = index, .. }
sheetname = {
["statusresults"] = 1,
};

sheetindex = {
[1] = "statusresults",
};

local statusresults = {
[1] = {
	[6001] = {
		["id"] = 6001,
		["effect_type"] = 2,
		["arg1"] = 10,
		["arg2"] = 300,
		["arg3"] = 1,
		["arg4"] = 0,
		["arg5"] = 0,
		["arg6"] = 0,
		["arg7"] = 0,
	},
	[6002] = {
		["id"] = 6002,
		["effect_type"] = 5,
		["arg1"] = 8001,
		["arg2"] = 50,
		["arg3"] = 10,
		["arg4"] = 0,
		["arg5"] = 0,
		["arg6"] = 0,
		["arg7"] = 0,
	},
	[6003] = {
		["id"] = 6003,
		["effect_type"] = 1,
		["arg1"] = 0,
		["arg2"] = 0,
		["arg3"] = 0,
		["arg4"] = 0,
		["arg5"] = 0,
		["arg6"] = 0,
		["arg7"] = 0,
	},
	[6004] = {
		["id"] = 6004,
		["effect_type"] = 9,
		["arg1"] = 8001,
		["arg2"] = 20,
		["arg3"] = 0,
		["arg4"] = 0,
		["arg5"] = 0,
		["arg6"] = 0,
		["arg7"] = 0,
	},
	[6005] = {
		["id"] = 6005,
		["effect_type"] = 8,
		["arg1"] = 0,
		["arg2"] = 0,
		["arg3"] = 0,
		["arg4"] = 0,
		["arg5"] = 0,
		["arg6"] = 0,
		["arg7"] = 0,
	},
},
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

return statusresults[1]
