/datum/job/blueshield
	title = "Blueshield"
	flag = BLUESHIELD
	department_head = list("Central Command")
	department_flag = ENGSEC
	faction = "Station"
	total_positions = 1
	spawn_positions = 1
	selection_color = "#aac1ee"
	minimal_player_age = 7
	exp_requirements = 300
	exp_type = EXP_TYPE_COMMAND
	considered_combat_role = TRUE //Brigger then shit yes it is
	exp_type_department = EXP_TYPE_COMMAND
	alt_titles = list("Command Security", "Command Guard", "Command Bodyguard", "Blueguard", "Blueshit")
	custom_spawn_text = "<font color='red' size='4'><b> YOU ARE NOT PART OF COMMAND. YOU WILL NEVER BE PART OF COMMAND. YOU ARE NOT PART OF CENTRAL COMMAND. IF YOU ACT LIKE YOU ARE, YOU WILL NEVER PLAY BLUESHIELD EVER AGAIN.</b></font>"

	outfit = /datum/outfit/job/blueshield
	plasma_outfit = /datum/outfit/plasmaman/blueshield

	access = list(ACCESS_SECURITY, ACCESS_SEC_DOORS, ACCESS_RESEARCH,  ACCESS_COURT, ACCESS_MAINT_TUNNELS, ACCESS_MORGUE, ACCESS_MEDICAL, ACCESS_WEAPONS, ACCESS_ENTER_GENPOP, ACCESS_LEAVE_GENPOP, ACCESS_MINERAL_STOREROOM, ACCESS_CARGO, ACCESS_HEADS, ACCESS_MAILSORTING, ACCESS_ENGINE, ACCESS_HOS, ACCESS_CE, ACCESS_HOP, ACCESS_CMO, ACCESS_QM, ACCESS_RD, ACCESS_CAPTAIN)
	minimal_access = list(ACCESS_SECURITY, ACCESS_SEC_DOORS, ACCESS_RESEARCH,  ACCESS_COURT, ACCESS_MAINT_TUNNELS, ACCESS_MORGUE, ACCESS_MEDICAL, ACCESS_WEAPONS, ACCESS_ENTER_GENPOP, ACCESS_LEAVE_GENPOP, ACCESS_MINERAL_STOREROOM, ACCESS_CARGO, ACCESS_HEADS, ACCESS_MAILSORTING, ACCESS_ENGINE, ACCESS_HOS, ACCESS_CE, ACCESS_HOP, ACCESS_CMO, ACCESS_QM, ACCESS_RD, ACCESS_CAPTAIN)
	paycheck = PAYCHECK_COMMAND
	paycheck_department = ACCOUNT_SEC

	mind_traits = list(TRAIT_LAW_ENFORCEMENT_METABOLISM)

	display_order = JOB_DISPLAY_ORDER_BLUESHIELD
	blacklisted_quirks = list(/datum/quirk/mute, /datum/quirk/brainproblems, /datum/quirk/nonviolent, /datum/quirk/paraplegic, /datum/quirk/blindness, /datum/quirk/monophobia, /datum/quirk/insanity)
	threat = 3


/datum/outfit/job/blueshield
	name = "Blueshield"
	jobtype = /datum/job/blueshield

	belt = /obj/item/pda/security
	ears = /obj/item/radio/headset/headset_blueshield
	uniform = /obj/item/clothing/under/rank/blueshield
	head = /obj/item/clothing/head/helmet/blueshirt
	gloves = /obj/item/clothing/gloves/color/black
	glasses = /obj/item/clothing/glasses/hud/health/sunglasses
	suit = /obj/item/clothing/suit/armor/vest/bluesheid
	shoes = /obj/item/clothing/shoes/jackboots
	suit_store = /obj/item/gun/energy/e_gun // want to replace with something more custom later
	l_pocket = /obj/item/restraints/handcuffs
	r_pocket = /obj/item/assembly/flash/handheld
	backpack_contents = list(/obj/item/storage/firstaid/regular, /obj/item/melee/classic_baton/telescopic)

	backpack = /obj/item/storage/backpack/security
	satchel = /obj/item/storage/backpack/satchel/sec
	duffelbag = /obj/item/storage/backpack/duffelbag/sec
	box = /obj/item/storage/box/survival

	implants = list(/obj/item/implant/mindshield)

	chameleon_extras = list(/obj/item/storage/firstaid/regular)

/datum/outfit/plasmaman/blueshield
	name = "Blueshield"

	head = /obj/item/clothing/head/helmet/space/plasmaman/security/hos //need to make custom sprites for the plasmaman
	uniform = /obj/item/clothing/under/plasmaman/security/hos
	ears = /obj/item/radio/headset/headset_blueshield

/obj/item/radio/headset/headset_blueshield
	name = "blueshield bowman headset"
	desc = "This is used by the blueshield. It protects from flashbangs"
	icon_state = "com_headset_alt"
	item_state = "com_headset_alt"
	keyslot = new /obj/item/encryptionkey/headset_blueshield
	bowman = TRUE
	command = TRUE


/obj/item/encryptionkey/headset_blueshield
	name = "blueshield radio encryption key"
	icon_state = "com_cypherkey"
	channels = list(RADIO_CHANNEL_COMMAND = 1, RADIO_CHANNEL_SECURITY = 1, RADIO_CHANNEL_MEDICAL = 1)

/obj/effect/landmark/start/blueshield
	name = "Blueshield"
	icon_state = "Security Officer"

/area/command/blueshieldoffice
	name = "Blueshield's Office"
	icon_state = "bridge"

/area/command/blueshielquarters
	name = "Blueshield's Quarters"
	icon_state = "bridge"
