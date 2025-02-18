/decl/hierarchy/outfit/job/medical
	hierarchy_type = /decl/hierarchy/outfit/job/medical
	l_ear = /obj/item/device/radio/headset/headset_med
	shoes = /obj/item/clothing/shoes/reinforced/medical
	id_type = /obj/item/card/id/med
	pda_type = /obj/item/modular_computer/pda/science/medical
	pda_slot = slot_l_store

/decl/hierarchy/outfit/job/medical/New()
	..()
	BACKPACK_OVERRIDE_MEDICAL

/decl/hierarchy/outfit/job/medical/cso
	name = OUTFIT_JOB_NAME("CAPSA Group - Biolab Overseer")
	l_ear  =/obj/item/device/radio/headset/heads/cmo
	uniform = /obj/item/clothing/under/rank/moebius_biolab_officer
	suit = /obj/item/clothing/suit/storage/toggle/labcoat/cmo
	id_type = /obj/item/card/id/cmo
	pda_type = /obj/item/modular_computer/pda/heads/cmo
	r_ear  = /obj/item/reagent_containers/syringe/large
	belt = /obj/item/storage/belt/medical
	glasses = /obj/item/clothing/glasses/hud/health
	backpack_contents = list(/obj/item/storage/hcases/med/medical_job_cbo = 1)

/decl/hierarchy/outfit/job/medical/doctor
	name = OUTFIT_JOB_NAME("CAPSA Group - Medical Doctor")
	uniform = /obj/item/clothing/under/rank/medical
	suit = /obj/item/clothing/suit/storage/toggle/labcoat
	r_ear  = /obj/item/reagent_containers/syringe/large
	belt = /obj/item/storage/belt/medical
	backpack_contents = list(/obj/item/storage/hcases/med/medical_job = 1)

/decl/hierarchy/outfit/job/medical/medic
	name = OUTFIT_JOB_NAME("CAPSA Group - Emergency Medical Technician")
	uniform = /obj/item/clothing/under/rank/paramedic
	id_type = /obj/item/card/id/med
	pda_type = /obj/item/modular_computer/pda/science/medical
	suit =  /obj/item/clothing/suit/armor/vest
	shoes = /obj/item/clothing/shoes/jackboots
	belt = /obj/item/storage/belt/medical/emt
	flags = OUTFIT_HAS_BACKPACK|OUTFIT_EXTENDED_SURVIVAL
	head = /obj/item/clothing/head/soft/medical
	r_ear  = /obj/item/reagent_containers/syringe/large
	l_pocket = /obj/item/device/flash
	r_pocket = /obj/item/handcuffs
	backpack_contents = list(/obj/item/storage/hcases/med/medical_job_trama = 1) // Weapon selection moved inside the hardcase.

/decl/hierarchy/outfit/job/medical/psychiatrist
	name = OUTFIT_JOB_NAME("CAPSA Group - Psychiatrist")
	uniform = /obj/item/clothing/under/rank/psych
	suit = /obj/item/clothing/suit/storage/toggle/labcoat
	r_ear  = /obj/item/reagent_containers/syringe/large
	backpack_contents = list(/obj/item/storage/hcases/med/medical_job_psyco = 1)

/decl/hierarchy/outfit/job/medical/doctor/medStudent
	name = OUTFIT_JOB_NAME("CAPSA Group - CAPSA Medical Student")
	suit =  /obj/item/clothing/suit/armor/vest

/decl/hierarchy/outfit/job/medical/doctor/medSurgeon
	name = OUTFIT_JOB_NAME("CAPSA Group - CAPSA Medical Surgeon")
	suit = /obj/item/clothing/suit/storage/hazardvest
