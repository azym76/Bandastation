/obj/item/organ/tongue/resomi
	name = "long tongue"
	desc = "Длинный и более чувствительный язык, может различить больше вкусов."
	icon_state = "tongue"
	taste_sensitivity = 10
	say_mod = "щебечет"
	verb_ask = "чирикает"
	verb_exclaim = "верещит"
	verb_whisper = "тихо щебечет"
	modifies_speech = TRUE
	languages_native = list(/datum/language/resomi)
	liked_foodtypes = RAW | MEAT | SEAFOOD
	disliked_foodtypes =  FRUIT | NUTS | GROSS | GRAIN
	var/static/list/speech_replacements = list(
		new /regex("з+", "g") = "с",
		new /regex("ч+", "g") = "щ",
		new /regex("ж+", "g") = "ш",
	)
/obj/item/organ/tongue/resomi/get_possible_languages()
	return ..() + /datum/language/resomi


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
	desc = "ДОБАВИТЬ ОПИСАНИЕ И СПРАЙТЫ."
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
