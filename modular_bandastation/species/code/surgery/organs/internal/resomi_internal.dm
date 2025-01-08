/obj/item/organ/tongue/resomi
	name = "long tongue"
	desc = "Длинный и более чувствительный язык, может различить больше вкусов."
	icon_state = "tongue"
	taste_sensitivity = 10
	modifies_speech = FALSE
	languages_native = list(/datum/language/canilunzt)
	liked_foodtypes = RAW | MEAT | SEAFOOD
	disliked_foodtypes =  FRUIT | NUTS | GROSS | GRAIN

/obj/item/organ/tongue/resomi/get_possible_languages()
	return ..() + /datum/language/canilunzt


/obj/item/organ/stomach/resomi
	hunger_modifier = 2

/obj/item/organ/liver/resomi
	name = "resomi liver"
	icon = 'modular_bandastation/species/icons/mob/species/resomi/organs.dmi'
	alcohol_tolerance = ALCOHOL_RATE * 2.5

/obj/item/organ/eyes/resomi
	name = "resomi eyeballs"
	icon = 'modular_bandastation/species/icons/mob/species/resomi/organs.dmi'

/obj/item/organ/ears/resomi
	desc = "Большие ушки позволяют легче слышать шепот."
	damage_multiplier = 2

/obj/item/organ/ears/resomi/on_mob_insert(mob/living/carbon/ear_owner)
	. = ..()
	ADD_TRAIT(ear_owner, TRAIT_GOOD_HEARING, ORGAN_TRAIT)

/obj/item/organ/ears/resomi/on_mob_remove(mob/living/carbon/ear_owner)
	. = ..()
	REMOVE_TRAIT(ear_owner, TRAIT_GOOD_HEARING, ORGAN_TRAIT)

/obj/item/organ/heart/resomi
	name = "resomi heart"
	icon = 'modular_bandastation/species/icons/mob/species/resomi/organs.dmi'

/obj/item/organ/brain/resomi
	icon = 'modular_bandastation/species/icons/mob/species/resomi/organs.dmi'
	actions_types = list(/datum/action/cooldown/sniff)

/obj/item/organ/lungs/resomi
	name = "resomi lungs"
	icon = 'modular_bandastation/species/icons/mob/species/resomi/organs.dmi'

/obj/item/organ/kidneys/resomi
	name = "resomi kidneys"
	icon = 'modular_bandastation/species/icons/mob/species/resomi/organs.dmi'
