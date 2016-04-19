# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#Sheet1
Sheet.create({ name: "1", backgound: "lamina1/model_grey/img/Fondo.png"})

#add areas
Area.create({sheet_id: 1, code:	"D1",	numZones: 1})
Area.create({sheet_id: 1, code:	"Dd24",	numZones: 4})
Area.create({sheet_id: 1, code:	"DdS30", numZones: 1})
Area.create({sheet_id: 1, code:	"DdS26", numZones: 2})
Area.create({sheet_id: 1, code:	"DdS29", numZones: 1})
Area.create({sheet_id: 1, code:	"DdS27", numZones: 1})
Area.create({sheet_id: 1, code:	"D4", numZones: 7})
Area.create({sheet_id: 1, code:	"Dd25", numZones: 1})
Area.create({sheet_id: 1, code:	"Dd23", numZones: 1})
Area.create({sheet_id: 1, code:	"Dd28", numZones: 1})
Area.create({sheet_id: 1, code:	"Dd22", numZones: 1})
Area.create({sheet_id: 1, code:	"D2", numZones: 5})
Area.create({sheet_id: 1, code:	"D3", numZones: 2})
Area.create({sheet_id: 1, code:	"Dd31", numZones: 1})
Area.create({sheet_id: 1, code:	"DdS32", numZones: 1})
Area.create({sheet_id: 1, code:	"D7", numZones: 2})
Area.create({sheet_id: 1, code:	"Dd35", numZones: 1})
Area.create({sheet_id: 1, code:	"Dd21", numZones: 3})
Area.create({sheet_id: 1, code:	"Dd33", numZones: 1})
Area.create({sheet_id: 1, code:	"Dd34", numZones: 1})

#add zones
Zone.create({coord_x: 591, coord_y: 233, width: 59, height: 47, z_index: 17, bg_image: "lamina1/model_grey/img/Capa_1.png"})
Zone.create({coord_x: 597, coord_y: 133, width: 151, height: 82, z_index: 16, bg_image: "lamina1/model_grey/img/Capa_2.png"})
Zone.create({coord_x: 584, coord_y: 349, width: 31, height: 43, z_index: 18, bg_image: "lamina1/model_grey/img/Capa_3.png"})
Zone.create({coord_x: 515, coord_y: 384, width: 100, height: 42, z_index: 19, bg_image: "lamina1/model_grey/img/Capa_4.png"})
Zone.create({coord_x: 448, coord_y: 37, width: 198, height: 382, z_index: 8, bg_image: "lamina1/model_grey/img/Capa_5.png"})
Zone.create({coord_x: 339, coord_y: 137, width: 111, height: 30, z_index: 9, bg_image: "lamina1/model_grey/img/Capa_6.png"})
Zone.create({coord_x: 367, coord_y: 157, width: 55, height: 31, z_index: 23, bg_image: "lamina1/model_grey/img/Capa_7.png"})
Zone.create({coord_x: 338, coord_y: 161, width: 115, height: 109, z_index: 11, bg_image: "lamina1/model_grey/img/Capa_8.png"})
Zone.create({coord_x: 374, coord_y: 325, width: 45, height: 134, z_index: 13, bg_image: "lamina1/model_grey/img/Capa_9.png"})
Zone.create({coord_x: 319, coord_y: 266, width: 152, height: 194, z_index: 12, bg_image: "lamina1/model_grey/img/Capa_10.png"})
Zone.create({coord_x: 391, coord_y: 270, width: 13, height: 22, z_index: 22, bg_image: "lamina1/model_grey/img/Capa_11.png"})
Zone.create({coord_x: 373, coord_y: 454, width: 46, height: 54, z_index: 15, bg_image: "lamina1/model_grey/img/Capa_12.png"})
Zone.create({coord_x: 187, coord_y: 45, width: 91, height: 67, z_index: 5, bg_image: "lamina1/model_grey/img/Capa_13.png"})
Zone.create({coord_x: 144, coord_y: 238, width: 56, height: 115, z_index: 6, bg_image: "lamina1/model_grey/img/Capa_14.png"})
Zone.create({coord_x: 44, coord_y: 108, width: 250, height: 130, z_index: 7, bg_image: "lamina1/model_grey/img/Capa_15.png"})
Zone.create({coord_x: 310, coord_y: 225, width: 170, height: 71, z_index: 20, bg_image: "lamina1/model_grey/img/Capa_16.png"})
Zone.create({coord_x: 287, coord_y: 316, width: 218, height: 65, z_index: 21, bg_image: "lamina1/model_grey/img/Capa_17.png"})
Zone.create({coord_x: 257, coord_y: 61, width: 272, height: 115, z_index: 2, bg_image: "lamina1/model_grey/img/Capa_18.png"})

#add relations areas_zones
Area.find_by_id(1).zones<Zone.find_by_id(1)
Area.find_by_id(3).zones<Zone.find_by_id(3)
Area.find_by_id(5).zones<Zone.find_by_id(5)
Area.find_by_id(6).zones<Zone.find_by_id(6)
Area.find_by_id(8).zones<Zone.find_by_id(8)
Area.find_by_id(9).zones<Zone.find_by_id(9)
Area.find_by_id(10).zones<Zone.find_by_id(10)
Area.find_by_id(11).zones<Zone.find_by_id(11)
Area.find_by_id(14).zones<Zone.find_by_id(14)
Area.find_by_id(15).zones<Zone.find_by_id(15)
Area.find_by_id(17).zones<Zone.find_by_id(17)
Area.find_by_id(19).zones<Zone.find_by_id(19)
Area.find_by_id(20).zones<Zone.find_by_id(20)
Area.find_by_id(2).zones<Zone.find_by_id(9)
Area.find_by_id(2).zones<Zone.find_by_id(10)
Area.find_by_id(2).zones<Zone.find_by_id(11)
Area.find_by_id(2).zones<Zone.find_by_id(12)
Area.find_by_id(4).zones<Zone.find_by_id(16)
Area.find_by_id(4).zones<Zone.find_by_id(17)
Area.find_by_id(7).zones<Zone.find_by_id(6)
Area.find_by_id(7).zones<Zone.find_by_id(7)
Area.find_by_id(7).zones<Zone.find_by_id(8)
Area.find_by_id(7).zones<Zone.find_by_id(9)
Area.find_by_id(7).zones<Zone.find_by_id(10)
Area.find_by_id(7).zones<Zone.find_by_id(11)
Area.find_by_id(7).zones<Zone.find_by_id(12)
Area.find_by_id(12).zones<Zone.find_by_id(19)
Area.find_by_id(12).zones<Zone.find_by_id(20)
Area.find_by_id(12).zones<Zone.find_by_id(5)
Area.find_by_id(13).zones<Zone.find_by_id(9)
Area.find_by_id(13).zones<Zone.find_by_id(12)
Area.find_by_id(16).zones<Zone.find_by_id(13)
Area.find_by_id(16).zones<Zone.find_by_id(15)
Area.find_by_id(18).zones<Zone.find_by_id(6)
Area.find_by_id(18).zones<Zone.find_by_id(7)
Area.find_by_id(18).zones<Zone.find_by_id(8)