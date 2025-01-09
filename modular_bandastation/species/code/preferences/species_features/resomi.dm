/// RESOMI BODY MARKINGS

/datum/preference/choiced/resomi_body_markings
	savefile_key = "feature_resomi_body_markings"
	savefile_identifier = PREFERENCE_CHARACTER
	category = PREFERENCE_CATEGORY_FEATURES
	main_feature_name = "Раскраска тела"
	should_generate_icons = TRUE
	relevant_body_markings = /datum/bodypart_overlay/simple/body_marking/resomi

/datum/preference/choiced/resomi_body_markings/init_possible_values()
	return assoc_to_keys_features(SSaccessories.resomi_body_markings_list)

/datum/preference/choiced/resomi_body_markings/create_default_value()
	var/datum/sprite_accessory/resomi_body_markings/markings = /datum/sprite_accessory/resomi_body_markings
	return initial(markings.name)

/datum/preference/choiced/resomi_body_markings/icon_for(value)
	var/static/icon/body
	if (isnull(body))
		body = icon('icons/blanks/32x32.dmi', "nothing")
		body.Blend(icon('modular_bandastation/species/icons/mob/species/resomi/sprite_accessories/body.dmi', "resomi_chest_m"), ICON_OVERLAY)
		body.Blend(icon('modular_bandastation/species/icons/mob/species/resomi/sprite_accessories/body.dmi', "resomi_l_leg"), ICON_OVERLAY)
		body.Blend(icon('modular_bandastation/species/icons/mob/species/resomi/sprite_accessories/body.dmi', "resomi_r_leg"), ICON_OVERLAY)
		body.Blend(icon('modular_bandastation/species/icons/mob/species/resomi/sprite_accessories/body.dmi', "resomi_l_arm"), ICON_OVERLAY)
		body.Blend(icon('modular_bandastation/species/icons/mob/species/resomi/sprite_accessories/body.dmi', "resomi_r_arm"), ICON_OVERLAY)
		body.Blend(icon('modular_bandastation/species/icons/mob/species/resomi/sprite_accessories/body.dmi', "resomi_l_hand"), ICON_OVERLAY)
		body.Blend(icon('modular_bandastation/species/icons/mob/species/resomi/sprite_accessories/body.dmi', "resomi_r_hand"), ICON_OVERLAY)
		body.Blend(COLOR_ORANGE, ICON_MULTIPLY)

	var/datum/sprite_accessory/markings = SSaccessories.resomi_head_markings_list[value]
	var/icon/icon_with_markings = new(body)

	if (value != "None")
		var/icon/body_part_icon = icon(markings.icon, "m_resomi_head_markings_[markings.icon_state]_ADJ")
		body_part_icon.Crop(1, 1, 32, 32)
		body_part_icon.Blend(COLOR_VERY_LIGHT_GRAY, ICON_MULTIPLY)
		icon_with_markings.Blend(body_part_icon, ICON_OVERLAY)

	icon_with_markings.Scale(64, 64)
	icon_with_markings.Crop(15, 64, 15 + 31, 64 - 31)

	return icon_with_markings

/datum/preference/choiced/resomi_body_markings/apply_to_human(mob/living/carbon/human/target, value)
	target.dna.features["resomi_body_markings"] = value

/datum/preference/choiced/resomi_body_markings/compile_constant_data()
	var/list/data = . = ..()

	data[SUPPLEMENTAL_FEATURE_KEY] = "resomi_body_markings_color"

	return data

/datum/preference/color/resomi_body_markings_color
	priority = PREFERENCE_PRIORITY_BODYPARTS
	savefile_key = "resomi_body_markings_color"
	savefile_identifier = PREFERENCE_CHARACTER
	category = PREFERENCE_CATEGORY_SUPPLEMENTAL_FEATURES
	relevant_body_markings = /datum/bodypart_overlay/simple/body_marking/resomi

/datum/preference/color/resomi_body_markings_color/create_default_value()
	return COLOR_WHITE

/datum/preference/color/resomi_body_markings_color/apply_to_human(mob/living/carbon/human/target, value)
	target.dna.features["resomi_furcolor_first"] = value



