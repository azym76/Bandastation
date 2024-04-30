/datum/mutation/human/biotechcompat
	name = "Biotech Compatibility"
	desc = "Субъект становится более совместимым с биотехнологиями например чипы навыка."
	quality = POSITIVE
	instability = 5

/datum/mutation/human/biotechcompat/on_acquiring(mob/living/carbon/human/owner)
	. = ..()
	owner.adjust_skillchip_complexity_modifier(1)

/datum/mutation/human/biotechcompat/on_losing(mob/living/carbon/human/owner)
	owner.adjust_skillchip_complexity_modifier(-1)
	return ..()

/datum/mutation/human/clever
	name = "Clever"
	desc = "Заставляет субъекта чувствовать себя немного умнее. Наиболее эффективен с особями обладающими низким уровнем интеллекта."
	quality = POSITIVE
	instability = 20
	text_gain_indication = "<span class='danger'>Ты чувствуешь себя немного умнее.</span>"
	text_lose_indication = "<span class='danger'>Твоё сознание немного затуманивается.</span>"

/datum/mutation/human/clever/on_acquiring(mob/living/carbon/human/owner)
	if(..())
		return
	owner.add_traits(list(TRAIT_ADVANCEDTOOLUSER, TRAIT_LITERATE), GENETIC_MUTATION)

/datum/mutation/human/clever/on_losing(mob/living/carbon/human/owner)
	if(..())
		return
	owner.remove_traits(list(TRAIT_ADVANCEDTOOLUSER, TRAIT_LITERATE), GENETIC_MUTATION)
