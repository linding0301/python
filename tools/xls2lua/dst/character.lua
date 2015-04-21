-- excel xlstable format (sparse 3d matrix)
--{	[sheet1] = { [row1] = { [col1] = value, [col2] = value, ...},
--					 [row5] = { [col3] = value, }, },
--	[sheet2] = { [row9] = { [col9] = value, }},
--}
-- nameindex table
--{ [sheet,row,col name] = index, .. }
sheetname = {
["character"] = 1,
};

sheetindex = {
[1] = "character",
};

local character = {
[1] = {
	[10001] = {
		["id"] = 10001,
		["name"] = "天马骑士",
		["hp"] = 100,
		["atk"] = 100,
		["defense"] = 100,
		["reduce_hurt"] = 10,
		["Penetration_level"] = 0,
		["increase_hurt"] = 0,
		["crit_level"] = 0,
		["crit_rate"] = 10,
		["tenacity_level"] = 0,
		["anticrit_rate"] = 0,
		["hit_level"] = 0,
		["hits"] = 80,
		["dodge_level"] = 0,
		["dodge_rate"] = 10,
		["skill_ID"] = {30001,30002,30003,30004,30005,30006},
		["conskill_ID"] = {0,0},
	},
	[10002] = {
		["id"] = 10002,
		["name"] = "突击兵",
		["hp"] = 100,
		["atk"] = 100,
		["defense"] = 100,
		["reduce_hurt"] = 10,
		["Penetration_level"] = 0,
		["increase_hurt"] = 0,
		["crit_level"] = 0,
		["crit_rate"] = 10,
		["tenacity_level"] = 0,
		["anticrit_rate"] = 0,
		["hit_level"] = 0,
		["hits"] = 90,
		["dodge_level"] = 0,
		["dodge_rate"] = 10,
		["skill_ID"] = {30001,30007,30008,30009,30010,30011},
		["conskill_ID"] = {0,0},
	},
	[10003] = {
		["id"] = 10003,
		["name"] = "指挥官",
		["hp"] = 100,
		["atk"] = 100,
		["defense"] = 100,
		["reduce_hurt"] = 10,
		["Penetration_level"] = 0,
		["increase_hurt"] = 0,
		["crit_level"] = 0,
		["crit_rate"] = 10,
		["tenacity_level"] = 0,
		["anticrit_rate"] = 0,
		["hit_level"] = 0,
		["hits"] = 90,
		["dodge_level"] = 0,
		["dodge_rate"] = 10,
		["skill_ID"] = {30001,30012,30013,30014,30015,30016},
		["conskill_ID"] = {0,0},
	},
	[10004] = {
		["id"] = 10004,
		["name"] = "圣殿刺客",
		["hp"] = 100,
		["atk"] = 100,
		["defense"] = 100,
		["reduce_hurt"] = 10,
		["Penetration_level"] = 0,
		["increase_hurt"] = 0,
		["crit_level"] = 0,
		["crit_rate"] = 10,
		["tenacity_level"] = 0,
		["anticrit_rate"] = 0,
		["hit_level"] = 0,
		["hits"] = 90,
		["dodge_level"] = 0,
		["dodge_rate"] = 10,
		["skill_ID"] = {30001,0},
		["conskill_ID"] = {0,0},
	},
	[10005] = {
		["id"] = 10005,
		["name"] = "圣殿骑士",
		["hp"] = 100,
		["atk"] = 100,
		["defense"] = 100,
		["reduce_hurt"] = 10,
		["Penetration_level"] = 0,
		["increase_hurt"] = 0,
		["crit_level"] = 0,
		["crit_rate"] = 10,
		["tenacity_level"] = 0,
		["anticrit_rate"] = 0,
		["hit_level"] = 0,
		["hits"] = 90,
		["dodge_level"] = 0,
		["dodge_rate"] = 10,
		["skill_ID"] = {30001,0},
		["conskill_ID"] = {0,0},
	},
	[10006] = {
		["id"] = 10006,
		["name"] = "圣殿祭祀",
		["hp"] = 100,
		["atk"] = 100,
		["defense"] = 100,
		["reduce_hurt"] = 10,
		["Penetration_level"] = 0,
		["increase_hurt"] = 0,
		["crit_level"] = 0,
		["crit_rate"] = 10,
		["tenacity_level"] = 0,
		["anticrit_rate"] = 0,
		["hit_level"] = 0,
		["hits"] = 90,
		["dodge_level"] = 0,
		["dodge_rate"] = 10,
		["skill_ID"] = {30001,0},
		["conskill_ID"] = {0,0},
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

return character[1]
