// BODY

/datum/bodypart_overlay/simple/body_marking/resomi
	dna_feature_key = "resomi_body_markings"
	applies_to = list(/obj/item/bodypart/chest/resomi, /obj/item/bodypart/arm/left/resomi, /obj/item/bodypart/arm/right/resomi, /obj/item/bodypart/leg/left/resomi, /obj/item/bodypart/leg/right/resomi)
	var/aux_color_paw = null

/datum/bodypart_overlay/simple/body_marking/resomi/get_accessory(name)
	return SSaccessories.resomi_body_markings_list[name]

/datum/bodypart_overlay/simple/body_marking/resomi/modify_bodypart_appearance(datum/appearance)
	var/image/a = appearance
	if(a.appearance_flags == 0 && aux_color_paw && (a.icon_state == "resoni_l_hand" || a.icon_state == "resoni_r_hand"))
		a.color = aux_color_paw
	return

/datum/sprite_accessory/resomi_body_markings
	icon = 'modular_bandastation/species/icons/mob/species/resomi/sprite_accessories/body_markings.dmi'
	name = "None"
	icon_state = "none"
	color_src = "resomi_body_markings_color"
	em_block = TRUE
	var/colored_paws = FALSE

/datum/sprite_accessory/resomi_body_markings/resomi_fluff_groin
	name = "Resomi fluff groin"
	icon_state = "resomi_fluff_groin"

/datum/sprite_accessory/resomi_body_markings/resomi_fluff_r_foot
	name = "Resomi fluff r foot"
	icon_state = "resomi_fluff_r_foot"

/datum/sprite_accessory/resomi_body_markings/resomi_fluff_l_foot
	name = "Resomi fluff l foot"
	icon_state = "resomi_fluff_l_foot"

/datum/sprite_accessory/resomi_body_markings/resomi_sf_chest
	name = "Resomi sf chest"
	icon_state = "resomi_sf_chest"

/datum/sprite_accessory/resomi_body_markings/resomi_sf_r_hand
	name = "Resomi sf r hand"
	icon_state = "resomi_sf_r_hand"

/datum/sprite_accessory/resomi_body_markings/resomi_sf_l_hand
	name = "Resomi sf l hand"
	icon_state = "resomi_sf_l_hand"

/datum/sprite_accessory/resomi_body_markings/resomi_sf_r_foot
	name = "Resomi sf r foot"
	icon_state = "resomi_sf_r_foot"

/datum/sprite_accessory/resomi_body_markings/resomi_sf_l_foot
	name = "Resomi sf l foot"
	icon_state = "resomi_sf_l_foot"

/datum/sprite_accessory/resomi_body_markings/resomi_fluff_chest
	name = "Resomi fluff chest"
	icon_state = "resomi_fluff_chest"

/datum/sprite_accessory/resomi_body_markings/resomi_fluff_head
	name = "Resomi fluff head"
	icon_state = "resomi_fluff_head"
