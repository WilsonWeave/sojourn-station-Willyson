//Loadout
/obj/item/modular_computer/tablet/preset/custom_loadout/cheap/install_default_hardware()
	..()
	processor_unit = new/obj/item/pc_part/processor_unit/small(src)
	tesla_link = new/obj/item/pc_part/tesla_link(src)
	hard_drive = new/obj/item/pc_part/drive/micro(src)
	network_card = new/obj/item/pc_part/network_card(src)

/obj/item/modular_computer/tablet/preset/custom_loadout/advanced/install_default_hardware()
	..()
	processor_unit = new/obj/item/pc_part/processor_unit/small(src)
	tesla_link = new/obj/item/pc_part/tesla_link(src)
	hard_drive = new/obj/item/pc_part/drive/small/adv(src)
	network_card = new/obj/item/pc_part/network_card/advanced(src)
	printer = new/obj/item/pc_part/printer(src)
	card_slot = new/obj/item/pc_part/card_slot(src)

/obj/item/modular_computer/tablet/preset/custom_loadout/standard/install_default_hardware()
	..()
	processor_unit = new/obj/item/pc_part/processor_unit/small(src)
	tesla_link = new/obj/item/pc_part/tesla_link(src)
	hard_drive = new/obj/item/pc_part/drive/small(src)
	network_card = new/obj/item/pc_part/network_card(src)

/obj/item/modular_computer/tablet/preset/custom_loadout/install_default_programs()
	..()
	install_default_programs_by_job(get(src, /mob/living/carbon/human))
	hard_drive.store_file(new/datum/computer_file/program/wordprocessor())

//Map presets

/obj/item/modular_computer/tablet/lease/preset/command/install_default_hardware()
	..()
	processor_unit = new/obj/item/pc_part/processor_unit/adv/small(src)
	tesla_link = new/obj/item/pc_part/tesla_link(src)
	hard_drive = new/obj/item/pc_part/drive/small/adv(src)
	network_card = new/obj/item/pc_part/network_card/advanced(src)
	printer = new/obj/item/pc_part/printer(src)
	card_slot = new/obj/item/pc_part/card_slot(src)
	cell = new/obj/item/cell/small(src)
	scanner = new /obj/item/pc_part/scanner/paper(src)

/obj/item/modular_computer/tablet/lease/preset/command/install_default_programs()
	..()
	hard_drive.store_file(new/datum/computer_file/program/email_client())
	hard_drive.store_file(new/datum/computer_file/program/chatclient())
	hard_drive.store_file(new/datum/computer_file/program/wordprocessor())
	hard_drive.store_file(new/datum/computer_file/program/newsbrowser())
	hard_drive.store_file(new/datum/computer_file/program/camera_monitor())
	hard_drive.store_file(new/datum/computer_file/program/records())
	hard_drive.store_file(new/datum/computer_file/program/tax())

/obj/item/modular_computer/tablet/lease/preset/medical/install_default_hardware()
	..()
	processor_unit = new/obj/item/pc_part/processor_unit/small(src)
	tesla_link = new/obj/item/pc_part/tesla_link(src)
	hard_drive = new/obj/item/pc_part/drive(src)
	network_card = new/obj/item/pc_part/network_card(src)
	printer = new/obj/item/pc_part/printer(src)
	cell = new /obj/item/cell/small(src)
	scanner = new /obj/item/pc_part/scanner/paper(src)
	gps_sensor = new /obj/item/pc_part/gps_sensor(src)

/obj/item/modular_computer/tablet/lease/preset/medical/install_default_programs()
	..()
	hard_drive.store_file(new/datum/computer_file/program/email_client())
	hard_drive.store_file(new/datum/computer_file/program/chatclient())
	hard_drive.store_file(new/datum/computer_file/program/wordprocessor())
	hard_drive.store_file(new/datum/computer_file/program/newsbrowser())
	hard_drive.store_file(new/datum/computer_file/program/camera_monitor())
	hard_drive.store_file(new/datum/computer_file/program/suit_sensors())
	hard_drive.store_file(new/datum/computer_file/program/records())
	set_autorun("sensormonitor")

/obj/item/modular_computer/tablet/lease/preset/chemistry/install_default_hardware()
	..()
	processor_unit = new/obj/item/pc_part/processor_unit/small(src)
	tesla_link = new/obj/item/pc_part/tesla_link(src)
	hard_drive = new/obj/item/pc_part/drive(src)
	network_card = new/obj/item/pc_part/network_card(src)
	printer = new/obj/item/pc_part/printer(src)
	cell = new /obj/item/cell/small(src)
	scanner = new /obj/item/pc_part/scanner/paper(src)
	gps_sensor = new /obj/item/pc_part/gps_sensor(src)

/obj/item/modular_computer/tablet/lease/preset/chemistry/install_default_programs()
	..()
	hard_drive.store_file(new/datum/computer_file/program/email_client())
	hard_drive.store_file(new/datum/computer_file/program/chatclient())
	hard_drive.store_file(new/datum/computer_file/program/wordprocessor())
	hard_drive.store_file(new/datum/computer_file/program/newsbrowser())
	hard_drive.store_file(new/datum/computer_file/program/camera_monitor())
	hard_drive.store_file(new/datum/computer_file/program/chem_catalog())
	hard_drive.store_file(new/datum/computer_file/program/records())
//	hard_drive.store_file(new/datum/computer_file/program/chem_catalog_debug())
	set_autorun("chemCatalog")


/obj/item/modular_computer/tablet/moebius/preset/install_default_hardware()
	..()
	processor_unit = new/obj/item/pc_part/processor_unit/small(src)
	hard_drive = new/obj/item/pc_part/drive(src)
	network_card = new/obj/item/pc_part/network_card(src)
	cell = new /obj/item/cell/small/moebius/high(src)
	scanner = new /obj/item/pc_part/scanner/medical(src)
	gps_sensor = new /obj/item/pc_part/gps_sensor(src)
	tesla_link = new/obj/item/pc_part/tesla_link(src)

/obj/item/modular_computer/tablet/moebius/preset/install_default_programs()
	..()
	hard_drive.store_file(new/datum/computer_file/program/suit_sensors())
	hard_drive.store_file(new/datum/computer_file/program/chem_catalog())
