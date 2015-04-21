-- excel xlstable format (sparse 3d matrix)
--{	[sheet1] = { [row1] = { [col1] = value, [col2] = value, ...},
--					 [row5] = { [col3] = value, }, },
--	[sheet2] = { [row9] = { [col9] = value, }},
--}
-- nameindex table
--{ [sheet,row,col name] = index, .. }
sheetname = {
["summons"] = 1,
};

sheetindex = {
[1] = "summons",
};

local summons = {
[1] = {
	[20001] = {
		["id"] = 20001,
		["name"] = "云原空卫",
		["hp"] = 400,
		["atk"] = 200,
		["defense"] = 0,
		["reduce_hurt"] = 20,
		["Penetration_level"] = 0,
		["increase_hurt"] = 0,
		["crit_level"] = 0,
		["crit_rate"] = 0,
		["tenacity_level"] = 0,
		["anticrit_rate"] = 0,
		["hit_level"] = 0,
		["hits"] = 90,
		["dodge_level"] = 0,
		["dodge_rate"] = 10,
		["cost"] = 1,
		["skill_ID"] = {30001,0},
		["conskill_ID"] = {40003,0},
	},
	[20002] = {
		["id"] = 20002,
		["name"] = "蛮荒巨汉",
		["hp"] = 600,
		["atk"] = 150,
		["defense"] = 0,
		["reduce_hurt"] = 10,
		["Penetration_level"] = 0,
		["increase_hurt"] = 0,
		["crit_level"] = 0,
		["crit_rate"] = 0,
		["tenacity_level"] = 0,
		["anticrit_rate"] = 0,
		["hit_level"] = 0,
		["hits"] = 90,
		["dodge_level"] = 0,
		["dodge_rate"] = 10,
		["cost"] = 3,
		["skill_ID"] = {30001,0},
		["conskill_ID"] = {40002,0},
	},
	[20003] = {
		["id"] = 20003,
		["name"] = "闪动刺客",
		["hp"] = 400,
		["atk"] = 150,
		["defense"] = 0,
		["reduce_hurt"] = 10,
		["Penetration_level"] = 0,
		["increase_hurt"] = 0,
		["crit_level"] = 0,
		["crit_rate"] = 0,
		["tenacity_level"] = 0,
		["anticrit_rate"] = 0,
		["hit_level"] = 0,
		["hits"] = 90,
		["dodge_level"] = 0,
		["dodge_rate"] = 10,
		["cost"] = 4,
		["skill_ID"] = {30001,0},
		["conskill_ID"] = {40002,0},
	},
	[20004] = {
		["id"] = 20004,
		["name"] = "狡诈术士",
		["hp"] = 600,
		["atk"] = 100,
		["defense"] = 0,
		["reduce_hurt"] = 10,
		["Penetration_level"] = 0,
		["increase_hurt"] = 0,
		["crit_level"] = 0,
		["crit_rate"] = 0,
		["tenacity_level"] = 0,
		["anticrit_rate"] = 0,
		["hit_level"] = 0,
		["hits"] = 90,
		["dodge_level"] = 0,
		["dodge_rate"] = 10,
		["cost"] = 4,
		["skill_ID"] = {30001,0},
		["conskill_ID"] = {40001,0},
	},
	[20005] = {
		["id"] = 20005,
		["name"] = "制裁者",
		["hp"] = 450,
		["atk"] = 100,
		["defense"] = 100,
		["reduce_hurt"] = 10,
		["Penetration_level"] = 0,
		["increase_hurt"] = 0,
		["crit_level"] = 0,
		["crit_rate"] = 0,
		["tenacity_level"] = 0,
		["anticrit_rate"] = 0,
		["hit_level"] = 0,
		["hits"] = 90,
		["dodge_level"] = 0,
		["dodge_rate"] = 10,
		["cost"] = 2,
		["skill_ID"] = {30001,0},
		["conskill_ID"] = {40004,0},
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

return summons[1]
