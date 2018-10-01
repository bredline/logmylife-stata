version 15

clear

use "

/*HES SCORING - HOUSED*/ 

gen  HES_N_COMPSCORE = rowtotal (HES_N_10_WATCHFUL_NEIGHBOR HES_N_11_NEIGHBOR_INVITES HES_N_12_NEIGHBOR_COMPLAINS HES_N_13_NEIGHBOR_REL_IMPRTNT HES_N_4_COUNT_ON_NEIGHBOR HES_N_5_NO_CLOSE_NEIGHBORS HES_N_6_CLOSE_NEIGHBOR HES_N_7_RIDE_FROM_NEIGHBOR HES_N_8_NEIGHBORS_ARGUE HES_N_9_TALK_ABOUT_PROBLEM)

gen HES_LL_COMPSCORE = rowtotal (HES_LL_10_AVAILABLE_FOR_PROBLEMS HES_LL_11_CONTACT_SP_ISSUES_ONLY HES_LL_12_CONTACT_LL_ISSUES_ONLY HES_LL_14_FRIENDLY_ALL_RACES HES_LL_15_COMPLAINS_ABOUT_ME HES_LL_5_KNOWS_WHAT_GOES_ON HES_LL_6_ONLY_CARES_ABOUT_RENT HES_LL_7_DOESNT_RESPOND HES_LL_8_CARES_ABOUT_ME HES_LL_9_ENCOURAGES_INVOLVEMENT)

gen HES_NQ_COMPSCORE = rowtotal (HES_NQ_1_TRANSPORTATION_EASY HES_NQ_10_NOISY HES_NQ_11_SIDEWALKS_GOOD HES_NQ_12_TRAFFIC HES_NQ_13_PARKS_NICE HES_NQ_14_OUTDOOR_RECREATION HES_NQ_2_CRIME_PROBLEM HES_NQ_3_STORES_NECECITIES HES_NQ_4_HEALTHCARE_DIFFICULTY HES_NQ_5_FUN_THINGS_TO_DO HES_NQ_6_POLICE_AVAILABLE HES_NQ_7_FAMILY_FRIENDS_FAR HES_NQ_8_STREET_LIGHTING_POOR HES_NQ_9_LOOKS_NICE)

gen HES_RM_COMPSCORE = rowtotal (HES_RM_7_GET_ALONG HES_RM_8_COUNT_ON HES_RM_9_CLOSE_RELATIONSHIP HES_RM_10_DONT_GET_ALONG HES_RM_11_ARGUE_A_LOT HES_RM_12_EMOTIONAL_SUPPORT HES_RM_13_WATCHFUL HES_RM_14_TAKES_ADVANTAGE HES_RM_15_INVITES_ME)

gen HES_S_COMPSCORE = rowtotal (HES_S_1_FREQ_ATTACK_NEARBY HES_S_2_FREQ_DRUG_SALES HES_S_3_FREQ_DRUG_USE HES_S_4_FREQ_ROBBERY_NEARBY HES_S_5_FREQ_THEFT_FROM_UNITS HES_S_6_FREQ_PROPERTY_DAMAGE HES_S_7_FREQ_LOITERING HES_S_8_FREQ_NEW_GRAFFITI HES_S_9_FREQ_WEAPONS_USED)

/*HES SCORING - UNHOUSED*/
