// simple is_type and similar inline helpers

#define in_range(source, user) (get_dist(source, user) <= 1 && (get_step(source, 0)?:z) == (get_step(user, 0)?:z))

/// Within given range, but not counting z-levels
#define IN_GIVEN_RANGE(source, other, given_range) (get_dist(source, other) <= given_range && (get_step(source, 0)?:z) == (get_step(other, 0)?:z))

#define isatom(A) (isloc(A))

#define isdatum(thing) (istype(thing, /datum))

#define isweakref(D) (istype(D, /datum/weakref))

#define ismecha(A) istype(A, /obj/mecha)

#define isobserver(A) istype(A, /mob/observer)

#define isghost(A) istype(A, /mob/observer/ghost)

#define isEye(A) istype(A, /mob/observer/eye)

#define isangel(A) istype(A, /mob/observer/eye/angel)

#define isnewplayer(A) istype(A, /mob/new_player)

#define isbst(A) istype(A, /mob/living/carbon/human/bst)
//++++++++++++++++++++++++++++++++++++++++++++++

#define isliving(A) istype(A, /mob/living)
//---------------------------------------------------

#define iscarbon(A) istype(A, /mob/living/carbon)

#define isalien(A) istype(A, /mob/living/carbon/alien)

#define isslime(A) istype(A, /mob/living/carbon/slime)

#define isroach(A) istype(A, /mob/living/carbon/superior/roach)

#define isbrain(A) istype(A, /mob/living/carbon/brain)

#define ishuman(A) istype(A, /mob/living/carbon/human)
//---------------------------------------------------

#define isanimal(A) istype(A, /mob/living/simple)

#define iscorgi(A) istype(A, /mob/living/simple/corgi)

#define iscatto(A) istype(A, /mob/living/simple/cat)

#define ismouse(A) istype(A, /mob/living/simple/mouse)

#define issuperioranimal(A) istype(A, /mob/living/carbon/superior)

#define issuperiorhuman(A) istype(A, /mob/living/carbon/superior/human)

#define issuperiortermite(A) istype(A, /mob/living/carbon/superior/termite)

#define issuperiortermitenodespawn(A) istype(A, /mob/living/carbon/superior/termite_colony) //THIS SUCKS WHAT THE FUCK

#define issuperiorspider(A) istype(A, /mob/living/carbon/superior/spider)

#define issuperiorroach(A) istype(A, /mob/living/carbon/superior/roach)

#define isburrow(A) istype(A, /obj/structure/burrow)
//---------------------------------------------------

#define issynthetic(A) istype(A, /mob) && A.mob_classification == CLASSIFICATION_SYNTHETIC //For when we really, really don't want any robots

#define issilicon(A) istype(A, /mob/living/silicon)

#define isAI(A) istype(A, /mob/living/silicon/ai)

#define ispAI(A) istype(A, /mob/living/silicon/pai)

#define isrobot(A) istype(A, /mob/living/silicon/robot)

#define isdrone(A) istype(A, /mob/living/silicon/robot/drone)

///Define on whether A has access to Silicon stuff either through being a silicon, admin ghost or is a non-silicon holding the Silicon remote.
///This can only be used for instances where you are not specifically looking for silicon, but access.
#define HAS_SILICON_ACCESS(A) (issilicon(A) || isAdminGhostAI(A) || A.has_unlimited_silicon_privilege)  // || istype(A.get_active_held_item(), /obj/item/machine_remote))

//-----------------Objects
#define isobj(A) istype(A, /obj) //override the byond proc because it returns true on children of /atom/movable that aren't objs

#define isHUDobj(A) istype(A, /obj/screen)

#define isitem(A) istype(A, /obj/item)

#define isprojectile(A) istype(A, /obj/item/projectile)

#define isorgan(A) istype(A, /obj/item/organ/external)

#define isgun(A) istype(A, /obj/item/gun)

#define isarmor(A) istype(A, /obj/item/clothing)

#define istool(A) istype(A, /obj/item/tool)

#define isWrench(A) istype(A, /obj/item/tool/wrench)

#define isWelder(A) istype(A, /obj/item/tool/weldingtool)

#define isCoil(A) istype(A, /obj/item/stack/cable_coil)

#define isWirecutter(A) istype(A, /obj/item/tool/wirecutters)

#define isScrewdriver(A) istype(A, /obj/item/tool/screwdriver)

#define isMultitool(A) istype(A, /obj/item/tool/multitool)

#define isCrowbar(A) istype(A, /obj/item/tool/crowbar)

/// isnum() returns TRUE for NaN. Also, NaN != NaN. Checkmate, BYOND.
#define isnan(x) ( (x) != (x) )

#define isinf(x) (isnum((x)) && (((x) == SYSTEM_TYPE_INFINITY) || ((x) == -SYSTEM_TYPE_INFINITY)))

/// NaN isn't a number, damn it. Infinity is a problem too.
#define isnum_safe(x) ( isnum((x)) && !isnan((x)) && !isinf((x)) )
