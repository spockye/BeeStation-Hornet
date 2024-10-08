/obj/projectile/beam/wormhole
	name = "bluespace beam"
	icon_state = "spark"
	hitsound = "sparks"
	damage = 0
	nodamage = TRUE
	pass_flags = PASSTRANSPARENT | PASSTABLE | PASSGRILLE | PASSMOB
	//Weakref to the thing that shot us
	var/datum/weakref/gun
	color = "#33CCFF"
	tracer_type = /obj/effect/projectile/tracer/wormhole
	impact_type = /obj/effect/projectile/impact/wormhole
	muzzle_type = /obj/effect/projectile/muzzle/wormhole
	hitscan = TRUE
	martial_arts_no_deflect = TRUE

/obj/projectile/beam/wormhole/orange
	name = "orange bluespace beam"
	color = "#FF6600"

CREATION_TEST_IGNORE_SUBTYPES(/obj/projectile/beam/wormhole)

/obj/projectile/beam/wormhole/Initialize(mapload, obj/item/ammo_casing/energy/wormhole/casing)
	. = ..()
	if(casing)
		gun = casing.gun


/obj/projectile/beam/wormhole/on_hit(atom/target)
	var/obj/item/gun/energy/wormhole_projector/projector = gun.resolve()
	if(!projector)
		qdel(src)
		return
	projector.create_portal(src, get_turf(src))
