// TODO: Refactor these into spawners
/obj/random
	name = "Random Object"
	desc = "This item type is used to spawn random objects at round-start"
	icon = 'icons/misc/mark.dmi'
	icon_state = "rup"
	var/spawn_nothing_percentage = 0 // this variable determines the likelyhood that this random object will not spawn anything


// creates a new object and deletes itself
/obj/random/New()
	..()
	if(!prob(spawn_nothing_percentage))
		spawn_item()
	qdel(src)


// this function should return a specific item to spawn
/obj/random/proc/item_to_spawn()
	return 0


// creates the random item
/obj/random/proc/spawn_item()
	var/build_path = item_to_spawn()
	return (new build_path(src.loc))


/obj/random/tool
	name = "Random Tool"
	desc = "This is a random tool"
	icon = 'icons/effects/mapping_helpers.dmi'
	icon_state = "tool"

/obj/random/tool/item_to_spawn()
	return pick(/obj/item/screwdriver,\
				/obj/item/wirecutters,\
				/obj/item/weldingtool,\
				/obj/item/crowbar,\
				/obj/item/wrench,\
				/obj/item/flashlight)


/obj/random/technology_scanner
	name = "Random Scanner"
	desc = "This is a random technology scanner."
	icon = 'icons/obj/device.dmi'
	icon_state = "atmos"

/obj/random/technology_scanner/item_to_spawn()
	return pick(prob(5);/obj/item/t_scanner,\
				prob(2);/obj/item/radio/intercom,\
				prob(5);/obj/item/analyzer)


/obj/random/powercell
	name = "Random Powercell"
	desc = "This is a random powercell."
	icon = 'icons/obj/engines_and_power/power.dmi'
	icon_state = "cell"

/obj/random/powercell/item_to_spawn()
	return pick(prob(10);/obj/item/stock_parts/cell/crap,\
				prob(40);/obj/item/stock_parts/cell,\
				prob(40);/obj/item/stock_parts/cell/high,\
				prob(9);/obj/item/stock_parts/cell/super,\
				prob(1);/obj/item/stock_parts/cell/hyper)

/obj/random/bomb_supply
	name = "Bomb Supply"
	desc = "This is a random bomb supply."
	icon = 'icons/obj/assemblies/new_assemblies.dmi'
	icon_state = "signaller"

/obj/random/bomb_supply/item_to_spawn()
	return pick(/obj/item/assembly/igniter,\
				/obj/item/assembly/prox_sensor,\
				/obj/item/assembly/signaler)


/obj/random/toolbox
	name = "Random Toolbox"
	desc = "This is a random toolbox."
	icon = 'icons/obj/storage.dmi'
	icon_state = "red"

/obj/random/toolbox/item_to_spawn()
	return pick(prob(3);/obj/item/storage/toolbox/mechanical,\
				prob(2);/obj/item/storage/toolbox/electrical,\
				prob(1);/obj/item/storage/toolbox/emergency)

/obj/random/tech_supply
	name = "Random Tech Supply"
	desc = "This is a random piece of technology supplies."
	icon = 'icons/obj/engines_and_power/power.dmi'
	icon_state = "cell"
	spawn_nothing_percentage = 50

/obj/random/tech_supply/item_to_spawn()
	return pick(prob(3);/obj/random/powercell,\
				prob(2);/obj/random/technology_scanner,\
				prob(1);/obj/item/stack/packageWrap,\
				prob(2);/obj/random/bomb_supply,\
				prob(1);/obj/item/extinguisher,\
				prob(1);/obj/item/clothing/gloves/color/fyellow,\
				prob(3);/obj/item/stack/cable_coil,\
				prob(2);/obj/random/toolbox,\
				prob(2);/obj/item/storage/belt/utility,\
				prob(5);/obj/random/tool,\
				prob(3);/obj/item/stack/tape_roll)

/obj/random/weed
	name = "Random Weed"
	desc = "This is a random weed."
	icon = 'icons/goonstation/objects/hydroponics.dmi'
	icon_state = "megacannabis"

/obj/random/weed/item_to_spawn()
	return pick(prob(10);/obj/item/reagent_containers/food/snacks/grown/cannabis/rainbow,\
				prob(2);/obj/item/reagent_containers/food/snacks/grown/cannabis/death,\
				prob(7);/obj/item/reagent_containers/food/snacks/grown/cannabis/white,\
				prob(1);/obj/item/reagent_containers/food/snacks/grown/cannabis/ultimate,\
				prob(80);/obj/item/reagent_containers/food/snacks/grown/cannabis)

/obj/random/makeshift_ammunition
	name = "Random Makeshift ammunition"
	desc = "This is a random item."
	icon = 'icons/obj/weapons/bombarda.dmi'
	icon_state = "exp_shell-live"

/obj/random/makeshift_ammunition/item_to_spawn()
	return pick(prob(5);/obj/item/restraints/legcuffs/bola,\
				prob(5);/obj/item/ammo_casing/grenade/improvised/exp_shell,\
				prob(10);/obj/item/grenade/iedcasing,\
				prob(5); /obj/item/ammo_casing/shotgun/ion,\
				prob(5); /obj/item/ammo_casing/shotgun/improvised,\
				prob(5); /obj/item/ammo_casing/shotgun/improvised/overload,\
				prob(15); /obj/item/ammo_casing/revolver/improvised,\
				prob(10); /obj/item/ammo_casing/revolver/improvised/phosphorus,\
				prob(40);/obj/item/arrow/rod)
