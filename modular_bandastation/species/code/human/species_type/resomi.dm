/datum/species/resomi
	name = "\improper Резоми"
	plural_form = "Резоми"
	id = SPECIES_RESOMI
	inherent_traits = list(
		TRAIT_MUTANT_COLORS
	)
	changesource_flags = MIRROR_BADMIN | WABBAJACK | MIRROR_MAGIC | MIRROR_PRIDE | ERT_SPAWN | RACE_SWAP | SLIME_EXTRACT

	species_language_holder = /datum/language_holder/vulpkanin
	// digitigrade_customization = DIGITIGRADE_OPTIONAL

	mutantbrain = /obj/item/organ/brain/resomi
	mutantheart = /obj/item/organ/heart/resomi
	mutantlungs = /obj/item/organ/lungs/resomi
	mutanteyes = /obj/item/organ/eyes/resomi
	mutantears = /obj/item/organ/ears/resomi
	mutanttongue = /obj/item/organ/tongue/resomi
	mutantliver = /obj/item/organ/liver/resomi
	mutantstomach = /obj/item/organ/stomach/resomi


	body_markings = list(/datum/bodypart_overlay/simple/body_marking/resomi = "None")
	bodypart_overrides = list(
		BODY_ZONE_HEAD = /obj/item/bodypart/head/resomi,
		BODY_ZONE_CHEST = /obj/item/bodypart/chest/resomi,
		BODY_ZONE_L_ARM = /obj/item/bodypart/arm/left/resomi,
		BODY_ZONE_R_ARM = /obj/item/bodypart/arm/right/resomi,
		BODY_ZONE_L_LEG = /obj/item/bodypart/leg/left/resomi,
		BODY_ZONE_R_LEG = /obj/item/bodypart/leg/right/resomi,
	)

	payday_modifier = 0.8
	bodytemp_heat_damage_limit = BODYTEMP_HEAT_DAMAGE_LIMIT - 20
	bodytemp_cold_damage_limit = BODYTEMP_COLD_DAMAGE_LIMIT + 40

/datum/species/resomi/prepare_human_for_preview(mob/living/carbon/human/resomi)
	resomi.set_haircolor("#A26324", update = FALSE) // brown
	resomi.set_hairstyle("Resomi pointy s", update = TRUE)
	resomi.dna.features["mcolor"] = "#D69E67"
	resomi.dna.features["resomi_furcolor_first"] = "#bd762f"
	resomi.dna.features["resomi_furcolor_second"] = "#2b2015"
	resomi.dna.features["resomi_furcolor_third"] = "#2b2015"
	resomi.dna.features["resomi_furcolor_fourth"] = "#ffa2be"
	resomi.dna.features["resomi_furcolor_fifth"] = "#bd762f"
	resomi.update_body(is_creating = TRUE)

/datum/species/resomi/randomize_features()
	var/list/features = ..()
	features["resomi_body_markings"] = prob(50) ? pick(SSaccessories.resomi_body_markings_list) : "None"

	var/feathercolor = "#[random_color()]"
	features["resomi_furcolor_first"] = feathercolor
	features["resomi_furcolor_second"] = feathercolor
	features["resomi_furcolor_third"] = feathercolor
	features["resomi_furcolor_fourth"] = feathercolor
	features["resomi_furcolor_fifth"] = feathercolor
	return features

/datum/species/resomi/get_physical_attributes()
	return "Физическое описание пока отсутсвует добавлю позже сделав основные фишки..."

/datum/species/resomi/get_species_description()
	return "Резоми - раса пернатых хищников, которые развивались на холодном мире, почти \
	за пределами зоны Златовласки. Крайне хрупкие, они выработали охотничьи навыки \
	в которых особое внимание уделялось уничтожению добычи без ущерба для себя. Они являются \
	развитой культурой, находящаяся в хороших отношениях с Скрелами и людьми.."

/datum/species/resomi/get_species_lore()
	return list(
		"Лор отсутсвует. Добавлю позже скопировав с вики сыра... ",
	)

/datum/species/resomi/create_pref_unique_perks()
	var/list/to_add = list()

	to_add += list(
		list(
			SPECIES_PERK_TYPE = SPECIES_POSITIVE_PERK,
			SPECIES_PERK_ICON = "wind",
			SPECIES_PERK_NAME = "Чувствительный нюх",
			SPECIES_PERK_DESC = "[plural_form] могут различать больше запахов и запоминать их.",
		),
		list(
			SPECIES_PERK_TYPE = SPECIES_NEUTRAL_PERK,
			SPECIES_PERK_ICON = "assistive-listening-systems",
			SPECIES_PERK_NAME = "Чувствительный слух",
			SPECIES_PERK_DESC = "[plural_form] лучше слышат, но более чувствительны к громким звукам, например, светошумовым гранатам.",
		),
		list(
			SPECIES_PERK_TYPE = SPECIES_NEGATIVE_PERK,
			SPECIES_PERK_ICON = "fire-alt",
			SPECIES_PERK_NAME = "Быстрый метаболизм",
			SPECIES_PERK_DESC = "[plural_form] быстрее тратят полезные вещества, потому чаще хотят есть.",
		),
	)

	return to_add

/datum/species/resomi/create_pref_temperature_perks()
	return list(list(
			SPECIES_PERK_TYPE = SPECIES_POSITIVE_PERK,
			SPECIES_PERK_ICON = "temperature-low",
			SPECIES_PERK_NAME = "Термоустойчивость",
			SPECIES_PERK_DESC = "[plural_form] лучше переносят перепады температур.",))

/datum/species/resomi/create_pref_liver_perks()
	return list(list(
			SPECIES_PERK_TYPE = SPECIES_NEGATIVE_PERK,
			SPECIES_PERK_ICON = "wine-glass",
			SPECIES_PERK_NAME = "Чувствительность к алкоголю",
			SPECIES_PERK_DESC = "Вульпканская печень более восприимчива к алкоголю, чем печень человека, примерно на 150%."
		))

/datum/species/resomi/create_pref_language_perk()
	return list(list(
			SPECIES_PERK_TYPE = SPECIES_POSITIVE_PERK,
			SPECIES_PERK_ICON = "comment",
			SPECIES_PERK_NAME = "Носитель языка",
			SPECIES_PERK_DESC = "[plural_form] получают возможность говорить на Канилунце.",
		))

/datum/species/resomi/get_scream_sound(mob/living/carbon/human/human)
	if(human.physique == MALE)
		return pick(
			'sound/mobs/humanoids/human/scream/malescream_1.ogg',
			'sound/mobs/humanoids/human/scream/malescream_2.ogg',
			'sound/mobs/humanoids/human/scream/malescream_3.ogg',
			'sound/mobs/humanoids/human/scream/malescream_4.ogg',
			'sound/mobs/humanoids/human/scream/malescream_5.ogg',
			'sound/mobs/humanoids/human/scream/malescream_6.ogg',
		)

	return pick(
		'sound/mobs/humanoids/human/scream/femalescream_1.ogg',
		'sound/mobs/humanoids/human/scream/femalescream_2.ogg',
		'sound/mobs/humanoids/human/scream/femalescream_3.ogg',
		'sound/mobs/humanoids/human/scream/femalescream_4.ogg',
		'sound/mobs/humanoids/human/scream/femalescream_5.ogg',
	)

/datum/species/resomi/get_cough_sound(mob/living/carbon/human/human)
	if(human.physique == FEMALE)
		return pick(
			'sound/mobs/humanoids/human/cough/female_cough1.ogg',
			'sound/mobs/humanoids/human/cough/female_cough2.ogg',
			'sound/mobs/humanoids/human/cough/female_cough3.ogg',
			'sound/mobs/humanoids/human/cough/female_cough4.ogg',
			'sound/mobs/humanoids/human/cough/female_cough5.ogg',
			'sound/mobs/humanoids/human/cough/female_cough6.ogg',
		)
	return pick(
		'sound/mobs/humanoids/human/cough/male_cough1.ogg',
		'sound/mobs/humanoids/human/cough/male_cough2.ogg',
		'sound/mobs/humanoids/human/cough/male_cough3.ogg',
		'sound/mobs/humanoids/human/cough/male_cough4.ogg',
		'sound/mobs/humanoids/human/cough/male_cough5.ogg',
		'sound/mobs/humanoids/human/cough/male_cough6.ogg',
	)

/datum/species/resomi/get_cry_sound(mob/living/carbon/human/human)
	if(human.physique == FEMALE)
		return pick(
			'sound/mobs/humanoids/human/cry/female_cry1.ogg',
			'sound/mobs/humanoids/human/cry/female_cry2.ogg',
		)
	return pick(
		'sound/mobs/humanoids/human/cry/male_cry1.ogg',
		'sound/mobs/humanoids/human/cry/male_cry2.ogg',
		'sound/mobs/humanoids/human/cry/male_cry3.ogg',
	)


/datum/species/resomi/get_sneeze_sound(mob/living/carbon/human/human)
	if(human.physique == FEMALE)
		return 'sound/mobs/humanoids/human/sneeze/female_sneeze1.ogg'
	return 'sound/mobs/humanoids/human/sneeze/male_sneeze1.ogg'

/datum/species/resomi/get_laugh_sound(mob/living/carbon/human/human)
	if(!ishuman(human))
		return
	if(human.physique == FEMALE)
		return 'sound/mobs/humanoids/human/laugh/womanlaugh.ogg'
	return pick(
		'sound/mobs/humanoids/human/laugh/manlaugh1.ogg',
		'sound/mobs/humanoids/human/laugh/manlaugh2.ogg',
	)

/datum/species/resomi/add_body_markings(mob/living/carbon/human/resomi) // OVERRIDE /datum/species/proc/add_body_markings
	for(var/markings_type in body_markings)
		var/datum/bodypart_overlay/simple/body_marking/markings = new markings_type()
		var/accessory_name = resomi.dna.features[markings.dna_feature_key]
		var/datum/sprite_accessory/resomi_body_markings/accessory = markings.get_accessory(accessory_name)

		if(isnull(accessory))
			return

		for(var/obj/item/bodypart/part as anything in markings.applies_to)
			var/obj/item/bodypart/people_part = resomi.get_bodypart(initial(part.body_zone))

			if(!people_part || !istype(people_part, part))
				continue

			var/datum/bodypart_overlay/simple/body_marking/resomi/overlay = new markings_type()

			overlay.icon = accessory.icon
			overlay.icon_state = accessory.icon_state
			overlay.use_gender = accessory.gender_specific
			overlay.draw_color = accessory.color_src ? resomi.dna.features["resomi_furcolor__first"] : null

			if(istype(accessory, /datum/sprite_accessory/resomi_body_markings) && accessory.colored_paws && (istype(people_part, /obj/item/bodypart/arm/left/resomi) || istype(people_part, /obj/item/bodypart/arm/right/resomi)))
				overlay.aux_color_paw = accessory.color_src ? resomi.dna.features["resomi_furcolor__first"] : null

			people_part.add_bodypart_overlay(overlay)

/obj/item/bodypart/head/get_hair_and_lips_icon(dropped)
	. = ..()

