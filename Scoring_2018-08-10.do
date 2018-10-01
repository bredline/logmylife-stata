version 15

clear

use "S:\LML_Share\USC LOG MY LIFE STUDY\Data\Quant\Clean Datasets\Merged Person-Level Survey Datasets\BLSNI_v1-6_tidy_2018-08-13.dta"

egen HFIAS_SCORE = rowtotal(HFIAS_FREQ_1_SUPPLY_WORRY HFIAS_FREQ_2_LIMITED_KINDS HFIAS_FREQ_3_LIMITED_VARIETY HFIAS_FREQ_4_EAT_FOOD_DISLIKE HFIAS_FREQ_5_MEALS_TOO_SMALL HFIAS_FREQ_6_MEALS_MISSED HFIAS_FREQ_7_NO_FOOD_IN_HOUSE HFIAS_FREQ_8_SLEEP_HUNGRY HFIAS_FREQ_9_NO_FOOD_DAY_NIGHT)
egen HFIAS_INDICATOR = rowtotal (HFIAS_30DAY_1_SUPPLY_WORRY HFIAS_30DAY_2_LIMITED_KINDS HFIAS_30DAY_3_LIMITED_VARIETY HFIAS_30DAY_4_EAT_FOOD_DISLIKE HFIAS_30DAY_5_MEALS_TOO_SMALL HFIAS_30DAY_6_MEALS_MISSED HFIAS_30DAY_7_NO_FOOD_IN_HOUSE HFIAS_30DAY_8_SLEEP_HUNGRY HFIAS_30DAY_9_NO_FOOD_DAY_NIGHT)
recode HFIAS_SCORE (0=.)

egen PTSD_PCSCREEN_SCORE = rowtotal (PTSD_PCSCREEN_1 PTSD_PCSCREEN_2 PTSD_PCSCREEN_3 PTSD_PCSCREEN_4)
gen PTSD_INDICATOR = PTSD_PCSCREEN_SCORE
recode PTSD_INDICATOR (0/2=0) (3/4=1)
lab var PTSD_INDICATOR "PTSD_INDICATOR"

egen SSS_SCORE = rowtotal (STRESS_STREETS_1_ACCESSFOOD STRESS_STREETS_2_SOCIAL_GETALONG STRESS_STREETS_3_ARRESTED STRESS_STREETS_4_FIND_WORK STRESS_STREETS_5_ASSAULT_PHYS STRESS_STREETS_6_PLACETOSLEEP STRESS_STREETS_7_HEALTHCARE STRESS_STREETS_8_SOCIETYMISTREAT STRESS_STREETS_9_PURPOSE_IN_LIFE STRESS_STREETS_10_EDUCATION STRESS_STREETS_11_BATHSHOWER STRESS_STREETS_12_LAUNDRY STRESS_STREETS_13_SOCIAL_HANGOUT STRESS_STREETS_14_ASSAULT_SEXUAL STRESS_STREETS_15_EARN_MONEY)

gen PERCEIVED_STRESS_COHEN_2_REV = 4 - PERCEIVED_STRESS_COHEN_2
gen PERCEIVED_STRESS_COHEN_3_REV = 4 - PERCEIVED_STRESS_COHEN_3
egen PERCEIVED_STRESS_COHEN_SCORE = rowtotal (PERCEIVED_STRESS_COHEN_1 PERCEIVED_STRESS_COHEN_2_REV PERCEIVED_STRESS_COHEN_3_REV PERCEIVED_STRESS_COHEN_4)

gen DERS_SF_AWARENESS_1_REV = 5 - DERS_SF_AWARENESS_1_BL
lab def DERS_SF_AWARENESS_1_REV_LAB 0"ALMOST NEVER" 1"SOMETIMES" 2"ABOUT HALF OF THE TIME" 3"MOST OF THE TIME" 4"ALMOST ALWAYS" 104"SEEN BUT NOT ANSWERED"
lab val DERS_SF_AWARENESS_1_REV DERS_SF_AWARENESS_1_REV_LAB

gen DERS_SF_AWARENESS_4_REV = 5 - DERS_SF_AWARENESS_4_BL
lab def DERS_SF_AWARENESS_4_REV_LAB 0"ALMOST NEVER" 1"SOMETIMES" 2"ABOUT HALF OF THE TIME" 3"MOST OF THE TIME" 4"ALMOST ALWAYS" 104"SEEN BUT NOT ANSWERED"
lab val DERS_SF_AWARENESS_4_REV DERS_SF_AWARENESS_4_REV_LAB

gen DERS_SF_AWARENESS_6_REV = 5 - DERS_SF_AWARENESS_6_BL
lab def DERS_SF_AWARENESS_6_REV_LAB 0"ALMOST NEVER" 1"SOMETIMES" 2"ABOUT HALF OF THE TIME" 3"MOST OF THE TIME" 4"ALMOST ALWAYS" 104"SEEN BUT NOT ANSWERED"
lab val DERS_SF_AWARENESS_6_REV DERS_SF_AWARENESS_6_REV_LAB

egen DERS_SF_AWARENESS_SCORE = rowtotal (DERS_SF_AWARENESS_1_REV DERS_SF_AWARENESS_4_REV DERS_SF_AWARENESS_6_REV)

egen DERS_SF_CLARITY_SCORE = rowtotal (DERS_SF_CLARITY_2_BL DERS_SF_CLARITY_3_BL DERS_SF_CLARITY_5_BL)  
egen DERS_SF_NONACCEPT_SCORE = rowtotal (DERS_SF_NONACCEPT_7 DERS_SF_NONACCEPT_12 DERS_SF_NONACCEPT_16)
egen DERS_SF_GOALS_SCORE = rowtotal (DERS_SF_GOALS_8 DERS_SF_GOALS_11 DERS_SF_GOALS_13)
egen DERS_SF_IMPULSE_SCORE = rowtotal (DERS_SF_IMPULSE_9 DERS_SF_IMPULSE_14 DERS_SF_IMPULSE_17)
egen DERS_SF_STRATEGIES_SCORE = rowtotal (DERS_SF_STRATEGIES_10 DERS_SF_STRATEGIES_15 DERS_SF_STRATEGIES_18)

egen SLEEP_DISTURBANCE_SF4A_SCORE = rowtotal (SLEEP_DISTURBANCE_SF4A_1_QUALITY SLEEP_DISTURBANCE_SF4A_2_REFRESH SLEEP_DISTURBANCE_SF4A_3_PROBLEM SLEEP_DISTURBANCE_SF4A_4_FALLSLP)

egen DEPRESSION_PHQ9_SCORE = rowtotal (DEPRESSION_PHQ9_1_BL DEPRESSION_PHQ9_2_BL DEPRESSION_PHQ9_3_BL DEPRESSION_PHQ9_4_BL DEPRESSION_PHQ9_5_BL DEPRESSION_PHQ9_6_BL DEPRESSION_PHQ9_7_BL DEPRESSION_PHQ9_8_BL DEPRESSION_PHQ9_9_BL)
gen DEPRESSION_PHQ9_CUTOFF = DEPRESSION_PHQ9_SCORE
recode DEPRESSION_PHQ9_CUTOFF (0/4=1) (5/9=2) (10/14=3) (15/19=4) (20/27=5)
lab var DEPRESSION_PHQ9_CUTOFF "DEPRESSION_PHQ9_CUTOFF"
lab def DEPRESSION_PHQ9_LAB 1"MINIMAL" 2"MILD" 3"MODERATE" 4"MODERATELY SEVERE" 5"SEVERE"
lab val DEPRESSION_PHQ9_CUTOFF DEPRESSION_PHQ9_LAB

egen ANXIETY_GAD7_SCORE = rowtotal (ANXIETY_GAD7_1_BL ANXIETY_GAD7_2_BL ANXIETY_GAD7_3_BL ANXIETY_GAD7_4_BL ANXIETY_GAD7_5_BL ANXIETY_GAD7_6_BL ANXIETY_GAD7_7_BL)
gen ANXIETY_GAD7_CUTOFF = ANXIETY_GAD7_SCORE
recode ANXIETY_GAD7_CUTOFF (0/4=1) (5/9=2) (10/14=3) (15/21=4)
lab var ANXIETY_GAD7_CUTOFF "ANXIETY_GAD7_CUTOFF"
label def ANXIETY_GAD7_LAB 1"MINIMAL" 2"MILD" 3"MODERATE" 4"SEVERE"
lab val ANXIETY_GAD7_CUTOFF ANXIETY_GAD7_LAB

egen SSS_SUM = rowtotal (STRESS_STREETS_1_ACCESSFOOD STRESS_STREETS_2_SOCIAL_GETALONG STRESS_STREETS_3_ARRESTED STRESS_STREETS_4_FIND_WORK STRESS_STREETS_5_ASSAULT_PHYS STRESS_STREETS_6_PLACETOSLEEP STRESS_STREETS_7_HEALTHCARE STRESS_STREETS_8_SOCIETYMISTREAT STRESS_STREETS_9_PURPOSE_IN_LIFE STRESS_STREETS_10_EDUCATION STRESS_STREETS_11_BATHSHOWER STRESS_STREETS_12_LAUNDRY STRESS_STREETS_13_SOCIAL_HANGOUT STRESS_STREETS_14_ASSAULT_SEXUAL STRESS_STREETS_15_EARN_MONEY)

egen GAY_IDENTITY_SCALE_SCORE = rowtotal (GAY_IDENTITY_SCALE_1 GAY_IDENTITY_SCALE_2 GAY_IDENTITY_SCALE_3 GAY_IDENTITY_SCALE_4 GAY_IDENTITY_SCALE_5 GAY_IDENTITY_SCALE_6 GAY_IDENTITY_SCALE_7)




