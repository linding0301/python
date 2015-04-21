-- excel xlstable format (sparse 3d matrix)
--{	[sheet1] = { [row1] = { [col1] = value, [col2] = value, ...},
--					 [row5] = { [col3] = value, }, },
--	[sheet2] = { [row9] = { [col9] = value, }},
--}
-- nameindex table
--{ [sheet,row,col name] = index, .. }
sheetname = {
["status"] = 1,
};

sheetindex = {
[1] = "status",
};

local status = {
[1] = {
	[60001] = {
		["ID"] = 60001,
		["name"] = "大气护盾",
		["icon"] = 0,
		["desc"] = "大气护盾可以保护你免受伤害",
		["staturesults_id"] = 6001,
		["status_type"] = 1,
		["Overlapping"] = 1,
		["replace"] = 1,
		["Duration"] = 4,
		["effective_times"] = 4,
		["trigger_resultid"] = {0,0},
		["trigger_condition"] = 0,
		["dispel"] = 1,
	},
	[60002] = {
		["ID"] = 60002,
		["name"] = "增幅",
		["icon"] = 0,
		["desc"] = "每当友方释放技能时，增加属性",
		["staturesults_id"] = 0,
		["status_type"] = 1,
		["Overlapping"] = 1,
		["replace"] = 0,
		["Duration"] = 4,
		["effective_times"] = 4,
		["trigger_resultid"] = {0,60006},
		["trigger_condition"] = 9008,
		["dispel"] = 1,
	},
	[60003] = {
		["ID"] = 60003,
		["name"] = "飞行",
		["icon"] = 0,
		["desc"] = "角色拥有飞行状态，飞行状态可以穿越非飞行状态的召唤物直接攻击英雄",
		["staturesults_id"] = 6003,
		["status_type"] = 1,
		["Overlapping"] = 1,
		["replace"] = 0,
		["Duration"] = 4,
		["effective_times"] = 4,
		["trigger_resultid"] = {0,0},
		["trigger_condition"] = 0,
		["dispel"] = 0,
	},
	[60004] = {
		["ID"] = 60004,
		["name"] = "力竭",
		["icon"] = 0,
		["desc"] = "降低目标的攻击力",
		["staturesults_id"] = 6004,
		["status_type"] = 2,
		["Overlapping"] = 1,
		["replace"] = 1,
		["Duration"] = 2,
		["effective_times"] = 4,
		["trigger_resultid"] = {0,0},
		["trigger_condition"] = 0,
		["dispel"] = 1,
	},
	[60005] = {
		["ID"] = 60005,
		["name"] = "晕眩",
		["icon"] = 0,
		["desc"] = "晕眩后无法做任何事情",
		["staturesults_id"] = 6005,
		["status_type"] = 2,
		["Overlapping"] = 1,
		["replace"] = 3,
		["Duration"] = 1,
		["effective_times"] = 4,
		["trigger_resultid"] = {0,0},
		["trigger_condition"] = 0,
		["dispel"] = 1,
	},
	[60006] = {
		["ID"] = 60006,
		["name"] = "攻击力增加",
		["icon"] = 0,
		["desc"] = "增加攻击力",
		["staturesults_id"] = 6002,
		["status_type"] = 1,
		["Overlapping"] = 5,
		["replace"] = 0,
		["Duration"] = 3,
		["effective_times"] = 4,
		["trigger_resultid"] = {0,0},
		["trigger_condition"] = 0,
		["dispel"] = 1,
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

return status[1]
