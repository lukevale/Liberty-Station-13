/obj/item/gun/projectile/shotgun/pump/hunter_crossbow
	name = "bolt lance"
	desc = "A modified crossbow powered by an internal battery device that rapidly winds up a hydraulic winch to deliver a devastating, superheated bolt shot. \
			Hand-produced by Fontain Logistics this crossbow sports a few odd corporate markings. Outfitted commonly to trappers to avoid tainting meat with bullets."
	icon = 'icons/obj/guns/projectile/old/hunter_crossbow.dmi'
	icon_state = "hunter_crossbow"
	item_state = "hunter_crossbow"
	fire_sound = 'sound/weapons/guns/fire/hydra_crossbow_fire.ogg' // TODO: Decent THWOK noise.
	origin_tech = list(TECH_COMBAT = 4, TECH_MATERIAL = 2)
	max_shells = 7
	caliber = CAL_CROSSBOW
	damage_multiplier = 1
	ammo_type = /obj/item/ammo_casing/crossbow_bolts
	matter = list(MATERIAL_PLASTEEL = 20, MATERIAL_PLASTIC = 6)
	price_tag = 750
	init_recoil = RIFLE_RECOIL(0.3)
	saw_off = FALSE
	gun_tags = list(GUN_PROJECTILE, GUN_INTERNAL_MAG, GUN_SCOPE)
	pumpshotgun_sound = 'sound/weapons/guns/interact/hydra_crossbow_load.ogg'
	serial_type = "INDEX"
	serial_shown = FALSE

/obj/item/gun/projectile/shotgun/pump/hunter_crossbow/handle_post_fire()
	..()
	to_chat(usr, SPAN_WARNING("The bolt inside heats up to a dull red glow before being fired."))

/obj/item/gun/projectile/shotgun/pump/hunter_crossbow/update_icon()
	..()

	var/iconstring = initial(icon_state)
	var/itemstring = ""

	if (chambered)
		iconstring += "-drawn_extra"
		itemstring += "-drawn_extra"

	icon_state = iconstring
	set_item_state(itemstring)

/obj/item/gun/projectile/shotgun/pump/hunter_crossbow/Initialize()
	. = ..()
	update_icon()

/*
/obj/item/gun/projectile/shotgun/pump/hunter_crossbow_implanted
	name = "'Shooting Star' implanted bolt lance"
	desc = "A bolt lance modified to fit inside a prosthetic, this one is painted purple and appears to have an inscription that reads 'Shooting Star'. An effort by a prominent hunt master to be even more edgy."
	icon = 'icons/obj/guns/projectile/shooting_star.dmi'
	icon_state = "shooting_star"
	item_state = "shooting_star"
	fire_sound = 'sound/weapons/guns/fire/hydra_crossbow_fire.ogg' // TODO: Decent THWOK noise.
	origin_tech = list(TECH_COMBAT = 4, TECH_MATERIAL = 2)
	max_shells = 7
	caliber = CAL_CROSSBOW
	damage_multiplier = 1
	ammo_type = /obj/item/ammo_casing/crossbow_bolts
	matter = list(MATERIAL_PLASTEEL = 20, MATERIAL_PLASTIC = 6)
	price_tag = 750
	init_recoil = EMBEDDED_RECOIL(0.1)
	saw_off = FALSE
	gun_tags = list(GUN_PROJECTILE, GUN_INTERNAL_MAG, GUN_SCOPE)
	pumpshotgun_sound = 'sound/weapons/guns/interact/hydra_crossbow_load.ogg'

/obj/item/gun/projectile/shotgun/pump/hunter_crossbow_implanted/handle_post_fire()
	..()
	to_chat(usr, SPAN_WARNING("The bolt inside heats up to a dull red glow before being fired."))

/obj/item/gun/projectile/shotgun/pump/hunter_crossbow_implanted/update_icon()
	..()

	var/iconstring = initial(icon_state)
	var/itemstring = ""

	if (chambered)
		iconstring += "_drawn"
		itemstring += "_drawn"

	icon_state = iconstring
	set_item_state(itemstring)

/obj/item/gun/projectile/shotgun/pump/hunter_crossbow_implanted/Initialize()
	. = ..()
	update_icon()
*/
