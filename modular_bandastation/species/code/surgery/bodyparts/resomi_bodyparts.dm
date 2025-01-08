/obj/item/bodypart/head/resomi
	icon_greyscale = 'modular_bandastation/species/icons/mob/species/resomi/sprite_accessories/body.dmi'
	limb_id = SPECIES_RESOMI
	is_dimorphic = TRUE
	head_flags = HEAD_LIPS|HEAD_EYESPRITES|HEAD_EYECOLOR|HEAD_EYEHOLES|HEAD_DEBRAIN|HEAD_HAIR|HEAD_VULPKANIN
	species_bodytype = SPECIES_RESOMI

/obj/item/bodypart/chest/resomi
	icon_greyscale = 'modular_bandastation/species/icons/mob/species/resomi/sprite_accessories/body.dmi'
	limb_id = SPECIES_RESOMI
	is_dimorphic = TRUE
	wing_types = list(/obj/item/organ/wings/functional/dragon)
	species_bodytype = SPECIES_RESOMI

/obj/item/bodypart/chest/resomi/get_butt_sprite()
	return BUTT_SPRITE_RESOMI

/obj/item/bodypart/arm/left/resomi
	icon_greyscale = 'modular_bandastation/species/icons/mob/species/resomi/sprite_accessories/body.dmi'
	limb_id = SPECIES_RESOMI
	unarmed_attack_verbs = list("slash")
	grappled_attack_verb = "lacerate"
	unarmed_attack_effect = ATTACK_EFFECT_CLAW
	unarmed_attack_sound = 'sound/items/weapons/slice.ogg'
	unarmed_miss_sound = 'sound/items/weapons/slashmiss.ogg'

/obj/item/bodypart/arm/right/resomi
	icon_greyscale = 'modular_bandastation/species/icons/mob/species/resomi/sprite_accessories/body.dmi'
	limb_id = SPECIES_RESOMI
	unarmed_attack_verbs = list("slash")
	grappled_attack_verb = "lacerate"
	unarmed_attack_effect = ATTACK_EFFECT_CLAW
	unarmed_attack_sound = 'sound/items/weapons/slice.ogg'
	unarmed_miss_sound = 'sound/items/weapons/slashmiss.ogg'

/obj/item/bodypart/leg/left/resomi
	icon_greyscale = 'modular_bandastation/species/icons/mob/species/resomi/sprite_accessories/body.dmi'
	limb_id = SPECIES_RESOMI

/obj/item/bodypart/leg/right/resomi
	icon_greyscale = 'modular_bandastation/species/icons/mob/species/resomi/sprite_accessories/body.dmi'
	limb_id = SPECIES_RESOMI
