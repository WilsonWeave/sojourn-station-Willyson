/obj/structure/closet/secure_closet/personal/botanist
	name = "botanist's locker"
	req_access = list(access_hydroponics)
	access_occupy = list(access_hydroponics)
	icon_state = "hydro"

/obj/structure/closet/secure_closet/personal/hydroponics/populate_contents()
	if(populated_contents)
		return
	populated_contents = TRUE
	if(prob(25))
		new /obj/item/storage/backpack/botanist(src)
	else if(prob(25))
		new /obj/item/storage/backpack/sport/botanist(src)
	else
		new /obj/item/storage/backpack/satchel/botanist(src)

	new /obj/item/clothing/suit/rank/botanist(src)
	new /obj/item/storage/bag/produce(src)
	new /obj/item/clothing/under/rank/botanist(src)
	new /obj/item/device/scanner/plant(src)
	new /obj/item/device/radio/headset/headset_service(src)
	new /obj/item/clothing/mask/rank/botanist(src)
	new /obj/item/tool/minihoe(src)
	new /obj/item/tool/hatchet(src)
	new /obj/item/tool/wirecutters(src)
	new /obj/item/reagent_containers/spray/plantbgone(src)
	new /obj/item/clothing/gloves/botanic_leather(src)
	new /obj/item/clothing/mask/gas(src)
	new /obj/item/tank/air(src)

/obj/structure/closet/secure_closet/personal/hydroponics/
	name = "botanist's locker"
	req_access = list(access_hydroponics)
	access_occupy = list()
	icon_state = "hydro"

/obj/structure/closet/secure_closet/personal/agrolyte
	name = "agrolyte's locker"
	req_access = list(access_nt_disciple)
	access_occupy = list(access_nt_disciple)
	icon_state = "botanist"

/obj/structure/closet/secure_closet/personal/agrolyte/populate_contents()
	if(populated_contents)
		return
	populated_contents = TRUE
	new /obj/item/clothing/suit/rank/botanist(src)
	new /obj/item/storage/belt/utility/neotheology(src)
	new /obj/item/storage/bag/produce(src)
	new /obj/item/clothing/under/rank/botanist(src)
	new /obj/item/device/scanner/plant(src)
	new /obj/item/device/radio/headset/church(src)
	new /obj/item/clothing/mask/rank/botanist(src)
	new /obj/item/tool/minihoe(src)
	new /obj/item/tool/hatchet(src)
	new /obj/item/tool/wirecutters(src)
	new /obj/item/reagent_containers/spray/plantbgone(src)
	new /obj/item/clothing/suit/armor/vest/botanist(src)
	new /obj/item/clothing/head/helmet/botanist(src)
	new /obj/item/clothing/gloves/botanic_leather(src)
	new /obj/item/clothing/suit/storage/neotheosports(src)
