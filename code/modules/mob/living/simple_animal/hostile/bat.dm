/mob/living/simple/hostile/scarybat
	name = "bats"
	desc = "A swarm of cute little blood sucking bats that looks pretty upset."
	icon = 'icons/mob/mobs-domestic.dmi'
	icon_state = "bat"
	icon_gib = "bat_dead"
	speak_chance = 0
	turns_per_move = 3
	meat_type = /obj/item/reagent_containers/snacks/meat
	response_help = "pets the"
	response_disarm = "gently pushes aside the"
	response_harm = "hits the"
	speed = 4
	maxHealth = 20
	health = 20

	harm_intent_damage = 8
	melee_damage_lower = 10
	melee_damage_upper = 10
	attacktext = "bites"
	attack_sound = 'sound/weapons/bite.ogg'
	inherent_mutations = list(MUTATION_BLINDNESS, MUTATION_ECHOLOCATION, MUTATION_TOXIN_RESISTANCE, MUTATION_BLOOD_BANK)

	//Space carp aren't affected by atmos.
	min_oxy = 0
	max_oxy = 0
	min_tox = 0
	max_tox = 0
	min_co2 = 0
	max_co2 = 0
	min_n2 = 0
	max_n2 = 0
	minbodytemp = 0

	environment_smash = 1

	faction = "scarybat"
	var/mob/living/owner

/mob/living/simple/hostile/scarybat/New(loc, mob/living/L as mob)
	..()
	if(istype(L))
		owner = L

/mob/living/simple/hostile/scarybat/allow_spacemove()
	return ..()	//No drifting in space for space carp!	//original comments do not steal

/mob/living/simple/hostile/scarybat/FindTarget()
	. = ..()
	if(.)
		emote("flutters towards [.]")

/mob/living/simple/hostile/scarybat/Found(var/atom/A)//This is here as a potential override to pick a specific target if available
	if(istype(A) && A == owner)
		return 0
	return ..()

/mob/living/simple/hostile/scarybat/AttackingTarget()
	. =..()
	var/mob/living/L = .
	if(istype(L))
		if(prob(15))
			L.Stun(1)
			L.visible_message(SPAN_DANGER("\the [src] swarms all over \the [L]!"))

/mob/living/simple/hostile/scarybat/cult
	inherent_mutations = list(MUTATION_BLINDNESS, MUTATION_ECHOLOCATION, MUTATION_TOXIN_RESISTANCE, MUTATION_BLOOD_BANK, MUTATION_VAMPIRE)
	supernatural = 1