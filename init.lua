S = core.get_translator("sundial")

core.register_node("sundial:sundial", {
	paramtype = "light",
	paramtype2 = "facedir",
	tiles = {"sundial_sundial.png"},
	drawtype = "mesh",
	mesh = "sundial.obj",
	groups = {cracky=1},
	description = S("Sundial"),
})

if core.get_modpath("basic_materials") then
	if core.get_modpath("dye") then
		core.register_craft({
			output = "sundial:sundial",
			recipe = {
				{"dye:black"},
				{"basic_materials:plastic_sheet"},
				{"basic_materials:plastic_sheet"}
			},
		})
	else
		core.register_craft({
			output = "sundial:sundial",
			recipe = {
				{"basic_materials:plastic_sheet"},
				{"basic_materials:plastic_sheet"},
				{"basic_materials:plastic_sheet"}
			},
		})
	end
end
