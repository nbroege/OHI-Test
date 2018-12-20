
use "/Users/nbroege/Library/Mobile Documents/com~apple~CloudDocs/D Lab/ADL/MTurk Pilot 2.2.dta", clear


rename Q23 age
rename Q24 race_ethnicity
rename Q25 sex
rename Q26 income
rename Q27 religion
rename Q28 sex_orientation

tab income

//US Conversion -  Longitude & Latitude//
//Continguous US//
gen US_lat = 1 if LocationLatitude<=48.838430 & LocationLatitude>=25.049416
gen US_long = 1 if LocationLongitude<=-66.957060 & LocationLongitude>=-124.349638
//Hawaii & Alaska//
recode US_lat (.=1) if LocationLatitude<=23.795610 & LocationLatitude>=19.503250
recode US_long (.=1) if LocationLongitude<=-155.675103 & LocationLongitude>=-160.487359
recode US_lat (.=1) if LocationLatitude<=71.283313 & LocationLatitude>=51.155503
recode US_long (.=1) if LocationLongitude<=178.596381 & LocationLongitude>=-140.997369

recode US_lat (.=0) 
recode US_long (.=0)
tab US_lat US_long

egen US = rsum(US_lat US_long)
tab US
gen US_based = 1 if US>1
recode US_based (.=0) if US<=1


 
 //Pairwise correlation coefficients for construct//
 pwcorr put sup_inf humil hostil harass prej cont viol, sig star(.05)
 
 tab put sup_inf
 tab put humil
 tab put hostil
 tab put harass
 tab put prej
 tab put cont
 tab put viol
 tab put sentiment_neg
 tab sup_inf humil
 tab sup_inf hostil
 tab sup_inf harass
 tab sup_inf prej
 tab sup_inf cont
 tab sup_inf viol
 tab sup_inf sentiment_neg
 tab humil hostil
 tab humil harass 
 tab humil prej 
 tab humil cont 
 tab humil viol 
 tab humil sentiment_neg 
 tab harass prej
 tab harass cont
 tab harass viol
 tab harass sentiment_neg
 tab prej cont
 tab prej viol
 tab prej sentiment_neg
 tab cont viol
 tab cont sentiment_neg
 tab viol sentiment_neg

 
//variable label clean up//
//COMMENT 1//
rename targets targets_1
rename target_race target_race_1
rename target_religion target_religion_1
rename target_citizen target_citizen_1
rename target_gender target_gender_1
rename target_sexuality target_sexuality_1
rename target_age target_age_1
rename target_disability target_disability_1
rename sentiment sentiment_1
rename putdown putdown_1
rename supinferior supinferior_1
rename humiliate humiliate_1
rename hostility hositlity_1
rename harassment harassment_1
rename prejudice prejudice_1
rename contempt contempt_1
rename violence violence_1

rename sen sen_1
rename sentiment_coded sentiment_coded_1
rename sentiment_neg sentiment_neg_1
rename put put_1 
rename humil humil_1
rename hostil hostil_1
rename harass harass_1
rename prej prej_1
rename cont cont_1
rename viol viol_1
rename sup_inf sup_inf_1

//COMMENT 2//
rename Q269 targets_2
rename Q270 target_race_2
rename Q271 target_religion_2
rename Q272 target_citizen_2
rename Q273 target_gender_2
rename Q274 target_sexuality_2
rename Q275 target_age_2
rename Q276 target_disability_2

rename Q187 sentiment_2
rename Q188 putdown_2
rename Q189 supinferior_2
rename Q190 humiliate_2
rename Q191 hostility_2
rename Q192 harassment_2
rename Q193 prejudice_2
rename Q194 contempt_2
rename Q195 violence_2


//COMMENT 3//
rename Q277 targets_3
rename Q278 target_race_3
rename Q279 target_religion_3
rename Q280 target_citizen_3
rename Q281 target_gender_3
rename Q282 target_sexuality_3
rename Q283 target_age_3
rename Q284 target_disability_3

rename Q196 sentiment_3
rename Q197 putdown_3
rename Q198 supinferior_3
rename Q199 humiliate_3
rename Q200 hostility_3
rename Q201 harassment_3
rename Q202 prejudice_3
rename Q203 contempt_3
rename Q204 violence_3

//COMMENT 4//
rename Q285 targets_4
rename Q286 target_race_4
rename Q287 target_religion_4
rename Q288 target_citizen_4
rename Q289 target_gender_4
rename Q290 target_sexuality_4
rename Q291 target_age_4
rename Q292 target_disability_4

rename Q205 sentiment_4
rename Q206 putdown_4
rename Q207 supinferior_4
rename Q208 humiliate_4
rename Q209 hostility_4
rename Q210 harassment_4
rename Q211 prejudice_4
rename Q212 contempt_4
rename Q213 violence_4

//COMMENT 5//
rename Q293 targets_5
rename Q294 target_race_5
rename Q295 target_religion_5
rename Q296 target_citizen_5
rename Q297 target_gender_5
rename Q298 target_sexuality_5
rename Q299 target_age_5
rename Q300 target_disability_5

rename Q214 sentiment_5
rename Q215 putdown_5
rename Q216 supinferior_5
rename Q217 humiliate_5
rename Q218 hostility_5
rename Q219 harassment_5
rename Q220 prejudice_5
rename Q221 contempt_5
rename Q222 violence_5

//COMMENT 6//
rename Q301 targets_6
rename Q302 target_race_6
rename Q303 target_religion_6
rename Q304 target_citizen_6
rename Q305 target_gender_6
rename Q306 target_sexuality_6
rename Q307 target_age_6
rename Q308 target_disability_6

rename Q223 sentiment_6
rename Q224 putdown_6
rename Q225 supinferior_6
rename Q226 humiliate_6
rename Q227 hostility_6
rename Q228 harassment_6
rename Q229 prejudice_6
rename Q230 contempt_6
rename Q231 violence_6

//COMMENT 7//
rename Q309 targets_7
rename Q310 target_race_7
rename Q311 target_religion_7
rename Q312 target_citizen_7
rename Q313 target_gender_7
rename Q314 target_sexuality_7
rename Q315 target_age_7
rename Q316 target_disability_7

rename Q232 sentiment_7
rename Q233 putdown_7
rename Q234 supinferior_7
rename Q235 humiliate_7
rename Q236 hostility_7
rename Q237 harassment_7
rename Q238 prejudice_7
rename Q239 contempt_7
rename Q240 violence_7

//COMMENT 8//
rename Q317 targets_8
rename Q318 target_race_8
rename Q319 target_religion_8
rename Q320 target_citizen_8
rename Q321 target_gender_8
rename Q322 target_sexuality_8
rename Q323 target_age_8
rename Q324 target_disability_8

rename Q241 sentiment_8
rename Q242 putdown_8
rename Q243 supinferior_8
rename Q244 humiliate_8
rename Q245 hostility_8
rename Q246 harassment_8
rename Q247 prejudice_8
rename Q248 contempt_8
rename Q249 violence_8

//COMMENT 9//
rename Q325 targets_9
rename Q326 target_race_9
rename Q327 target_religion_9
rename Q328 target_citizen_9
rename Q329 target_gender_9
rename Q330 target_sexuality_9
rename Q331 target_age_9
rename Q332 target_disability_9

rename Q250 sentiment_9
rename Q251 putdown_9
rename Q252 supinferior_9
rename Q253 humiliate_9
rename Q254 hostility_9
rename Q255 harassment_9
rename Q256 prejudice_9
rename Q257 contempt_9
rename Q258 violence_9

//COMMENT 10//
rename Q333 targets_10
rename Q334 target_race_10
rename Q335 target_religion_10
rename Q336 target_citizen_10
rename Q337 target_gender_10
rename Q338 target_sexuality_10
rename Q339 target_age_10
rename Q340 target_disability_10

rename Q259 sentiment_10
rename Q260 putdown_10
rename Q261 supinferior_10
rename Q262 humiliate_10
rename Q263 hostility_10
rename Q264 harassment_10
rename Q265 prejudice_10
rename Q266 contempt_10
rename Q267 violence_10

//Comment 1 recodes//
**sentiment recoding//
gen sentiment_coded_1 = 1 if sentiment_1=="Stronly Negative"
recode sentiment_coded_1 (.=2) if sentiment_1=="Negative"
recode sentiment_coded_1 (.=3) if sentiment_1=="Neutral"
recode sentiment_coded_1 (.=4) if sentiment_1=="Positive"
recode sentiment_coded_1 (.=5) if sentiment_1=="Strongly Positive"

 gen sentiment_neg_1 = 1 if sentiment_coded_1==1 | sentiment_coded_1==2
 recode sentiment_neg_1 (.=0) if sentiment_coded_1>2
 
 //~23% of comment 1 coded as negative//
 
 //Dummy variables for reaction string measures//
 
 gen put_1 = 1 if putdown_1=="Yes"
 recode put_1 (.=0)
 gen sup_inf_1 = 1 if supinferior_1=="Yes, inferior"
 recode sup_inf_1(.=0)
 gen humil_1 = 1 if humiliate_1=="Yes"
 recode humil_1 (.=0) 
 gen hostil_1 = 1 if hostility_1=="Yes"
 recode hostil_1 (.=0)
 gen harass_1 = 1 if harassment_1=="Yes"
 recode harass_1 (.=0)
 gen prej_1 = 1 if prejudice_1=="Yes"
 recode prej_1 (.=0) 
 gen cont_1 = 1 if contempt_1=="Yes"
 recode cont_1 (.=0)
 gen viol_1 = 1 if violence_1=="Yes"
 recode viol_1 (.=0)

 //Comment 2 recodes//
**sentiment recoding//
gen sentiment_coded_2 = 1 if sentiment_2=="Stronly Negative"
recode sentiment_coded_2 (.=2) if sentiment_2=="Negative"
recode sentiment_coded_2 (.=3) if sentiment_2=="Neutral"
recode sentiment_coded_2 (.=4) if sentiment_2=="Positive"
recode sentiment_coded_2 (.=5) if sentiment_2=="Strongly Positive"

 gen sentiment_neg_2 = 1 if sentiment_coded_2==1 | sentiment_coded_2==2
 recode sentiment_neg_2 (.=0) if sentiment_coded_2>2
 
 //~60% of comment 2 coded as negative//
 
 //Dummy variables for reaction string measures//
 
 gen put_2 = 1 if putdown_2=="Yes"
 recode put_2 (.=0)
 gen sup_inf_2 = 1 if supinferior_2=="Yes, inferior"
 recode sup_inf_2(.=0)
 gen humil_2 = 1 if humiliate_2=="Yes"
 recode humil_2 (.=0) 
 gen hostil_2 = 1 if hostility_2=="Yes"
 recode hostil_2 (.=0)
 gen harass_2 = 1 if harassment_2=="Yes"
 recode harass_2 (.=0)
 gen prej_2 = 1 if prejudice_2=="Yes"
 recode prej_2 (.=0) 
 gen cont_2 = 1 if contempt_2=="Yes"
 recode cont_2 (.=0)
 gen viol_2 = 1 if violence_2=="Yes"
 recode viol_2 (.=0)
 
 //Comment 3 recodes//
**sentiment recoding//
gen sentiment_coded_3 = 1 if sentiment_3=="Stronly Negative"
recode sentiment_coded_3 (.=2) if sentiment_3=="Negative"
recode sentiment_coded_3 (.=3) if sentiment_3=="Neutral"
recode sentiment_coded_3 (.=4) if sentiment_3=="Positive"
recode sentiment_coded_3 (.=5) if sentiment_3=="Strongly Positive"

 gen sentiment_neg_3 = 1 if sentiment_coded_3==1 | sentiment_coded_3==2
 recode sentiment_neg_3 (.=0) if sentiment_coded_3>2
 
 //~33% of comment 3 coded as negative//
 
 //Dummy variables for reaction string measures//
 
 gen put_3 = 1 if putdown_3=="Yes"
 recode put_3 (.=0)
 gen sup_inf_3 = 1 if supinferior_3=="Yes, inferior"
 recode sup_inf_3(.=0)
 gen humil_3 = 1 if humiliate_3=="Yes"
 recode humil_3 (.=0) 
 gen hostil_3 = 1 if hostility_3=="Yes"
 recode hostil_3 (.=0)
 gen harass_3 = 1 if harassment_3=="Yes"
 recode harass_3 (.=0)
 gen prej_3 = 1 if prejudice_3=="Yes"
 recode prej_3 (.=0) 
 gen cont_3 = 1 if contempt_3=="Yes"
 recode cont_3 (.=0)
 gen viol_3 = 1 if violence_3=="Yes"
 recode viol_3 (.=0)
 
 //Comment 4 recodes//
**sentiment recoding//
gen sentiment_coded_4 = 1 if sentiment_4=="Stronly Negative"
recode sentiment_coded_4 (.=2) if sentiment_4=="Negative"
recode sentiment_coded_4 (.=3) if sentiment_4=="Neutral"
recode sentiment_coded_4 (.=4) if sentiment_4=="Positive"
recode sentiment_coded_4 (.=5) if sentiment_4=="Strongly Positive"

 gen sentiment_neg_4 = 1 if sentiment_coded_4==1 | sentiment_coded_4==2
 recode sentiment_neg_4 (.=0) if sentiment_coded_4>2
 
 //~54% of comment 4  coded as negative//
 
 //Dummy variables for reaction string measures//
 
 gen put_4 = 1 if putdown_4=="Yes"
 recode put_4 (.=0)
 gen sup_inf_4 = 1 if supinferior_4=="Yes, inferior"
 recode sup_inf_4(.=0)
 gen humil_4 = 1 if humiliate_4=="Yes"
 recode humil_4 (.=0) 
 gen hostil_4 = 1 if hostility_4=="Yes"
 recode hostil_4 (.=0)
 gen harass_4 = 1 if harassment_4=="Yes"
 recode harass_4 (.=0)
 gen prej_4 = 1 if prejudice_4=="Yes"
 recode prej_4 (.=0) 
 gen cont_4 = 1 if contempt_4=="Yes"
 recode cont_4 (.=0)
 gen viol_4 = 1 if violence_4=="Yes"
 recode viol_4 (.=0)
 
 //Comment 5 recodes//
**sentiment recoding//
gen sentiment_coded_5 = 1 if sentiment_5=="Stronly Negative"
recode sentiment_coded_5 (.=2) if sentiment_5=="Negative"
recode sentiment_coded_5 (.=3) if sentiment_5=="Neutral"
recode sentiment_coded_5 (.=4) if sentiment_5=="Positive"
recode sentiment_coded_5 (.=5) if sentiment_5=="Strongly Positive"

 gen sentiment_neg_5 = 1 if sentiment_coded_5==1 | sentiment_coded_5==2
 recode sentiment_neg_5 (.=0) if sentiment_coded_5>2
 
 //54% of comment 5  coded as negative//
 
 //Dummy variables for reaction string measures//
 
 gen put_5 = 1 if putdown_5=="Yes"
 recode put_5 (.=0)
 gen sup_inf_5 = 1 if supinferior_5=="Yes, inferior"
 recode sup_inf_5(.=0)
 gen humil_5 = 1 if humiliate_5=="Yes"
 recode humil_5 (.=0) 
 gen hostil_5 = 1 if hostility_5=="Yes"
 recode hostil_5 (.=0)
 gen harass_5 = 1 if harassment_5=="Yes"
 recode harass_5 (.=0)
 gen prej_5 = 1 if prejudice_5=="Yes"
 recode prej_5 (.=0) 
 gen cont_5 = 1 if contempt_5=="Yes"
 recode cont_5 (.=0)
 gen viol_5 = 1 if violence_5=="Yes"
 recode viol_5 (.=0)
 
 //Comment 6 recodes//
**sentiment recoding//
gen sentiment_coded_6 = 1 if sentiment_6=="Stronly Negative"
recode sentiment_coded_6 (.=2) if sentiment_6=="Negative"
recode sentiment_coded_6 (.=3) if sentiment_6=="Neutral"
recode sentiment_coded_6 (.=4) if sentiment_6=="Positive"
recode sentiment_coded_6 (.=5) if sentiment_6=="Strongly Positive"

 gen sentiment_neg_6 = 1 if sentiment_coded_6==1 | sentiment_coded_6==2
 recode sentiment_neg_6 (.=0) if sentiment_coded_6>2
 
 //~38% of comment 6 coded as negative//
 
 //Dummy variables for reaction string measures//
 
 gen put_6 = 1 if putdown_6=="Yes"
 recode put_6 (.=0)
 gen sup_inf_6 = 1 if supinferior_6=="Yes, inferior"
 recode sup_inf_6(.=0)
 gen humil_6 = 1 if humiliate_6=="Yes"
 recode humil_6 (.=0) 
 gen hostil_6 = 1 if hostility_6=="Yes"
 recode hostil_6 (.=0)
 gen harass_6 = 1 if harassment_6=="Yes"
 recode harass_6 (.=0)
 gen prej_6 = 1 if prejudice_6=="Yes"
 recode prej_6 (.=0) 
 gen cont_6 = 1 if contempt_6=="Yes"
 recode cont_6 (.=0)
 gen viol_6 = 1 if violence_6=="Yes"
 recode viol_6 (.=0)
 
 //Comment 7 recodes//
**sentiment recoding//
gen sentiment_coded_7 = 1 if sentiment_7=="Stronly Negative"
recode sentiment_coded_7 (.=2) if sentiment_7=="Negative"
recode sentiment_coded_7 (.=3) if sentiment_7=="Neutral"
recode sentiment_coded_7 (.=4) if sentiment_7=="Positive"
recode sentiment_coded_7 (.=5) if sentiment_7=="Strongly Positive"

 gen sentiment_neg_7 = 1 if sentiment_coded_7==1 | sentiment_coded_7==2
 recode sentiment_neg_7 (.=0) if sentiment_coded_7>2
 
 //~37% of comment 7 coded as negative//
 
 //Dummy variables for reaction string measures//
 
 gen put_7 = 1 if putdown_7=="Yes"
 recode put_7 (.=0)
 gen sup_inf_7 = 1 if supinferior_7=="Yes, inferior"
 recode sup_inf_7(.=0)
 gen humil_7 = 1 if humiliate_7=="Yes"
 recode humil_7 (.=0) 
 gen hostil_7 = 1 if hostility_7=="Yes"
 recode hostil_7 (.=0)
 gen harass_7 = 1 if harassment_7=="Yes"
 recode harass_7 (.=0)
 gen prej_7 = 1 if prejudice_7=="Yes"
 recode prej_7 (.=0) 
 gen cont_7 = 1 if contempt_7=="Yes"
 recode cont_7 (.=0)
 gen viol_7 = 1 if violence_7=="Yes"
 recode viol_7 (.=0)
 
 //Comment 8 recodes//
**sentiment recoding//
gen sentiment_coded_8 = 1 if sentiment_8=="Stronly Negative"
recode sentiment_coded_8 (.=2) if sentiment_8=="Negative"
recode sentiment_coded_8 (.=3) if sentiment_8=="Neutral"
recode sentiment_coded_8 (.=4) if sentiment_8=="Positive"
recode sentiment_coded_8 (.=5) if sentiment_8=="Strongly Positive"

 gen sentiment_neg_8 = 1 if sentiment_coded_8==1 | sentiment_coded_8==2
 recode sentiment_neg_8 (.=0) if sentiment_coded_8>2
 
 //~33% of comment 8 coded as negative//
 
 //Dummy variables for reaction string measures//
 
 gen put_8 = 1 if putdown_8=="Yes"
 recode put_8 (.=0)
 gen sup_inf_8 = 1 if supinferior_8=="Yes, inferior"
 recode sup_inf_8(.=0)
 gen humil_8 = 1 if humiliate_8=="Yes"
 recode humil_8 (.=0) 
 gen hostil_8 = 1 if hostility_8=="Yes"
 recode hostil_8 (.=0)
 gen harass_8 = 1 if harassment_8=="Yes"
 recode harass_8 (.=0)
 gen prej_8 = 1 if prejudice_8=="Yes"
 recode prej_8 (.=0) 
 gen cont_8 = 1 if contempt_8=="Yes"
 recode cont_8 (.=0)
 gen viol_8 = 1 if violence_8=="Yes"
 recode viol_8 (.=0)
 
 //Comment 9 recodes//
**sentiment recoding//
gen sentiment_coded_9 = 1 if sentiment_9=="Stronly Negative"
recode sentiment_coded_9 (.=2) if sentiment_9=="Negative"
recode sentiment_coded_9 (.=3) if sentiment_9=="Neutral"
recode sentiment_coded_9 (.=4) if sentiment_9=="Positive"
recode sentiment_coded_9 (.=5) if sentiment_9=="Strongly Positive"

 gen sentiment_neg_9 = 1 if sentiment_coded_9==1 | sentiment_coded_9==2
 recode sentiment_neg_9 (.=0) if sentiment_coded_9>2
 
 //~38% of comment 9 coded as negative//
 
 //Dummy variables for reaction string measures//
 
 gen put_9 = 1 if putdown_9=="Yes"
 recode put_9 (.=0)
 gen sup_inf_9 = 1 if supinferior_9=="Yes, inferior"
 recode sup_inf_9(.=0)
 gen humil_9 = 1 if humiliate_9=="Yes"
 recode humil_9 (.=0) 
 gen hostil_9 = 1 if hostility_9=="Yes"
 recode hostil_9 (.=0)
 gen harass_9 = 1 if harassment_9=="Yes"
 recode harass_9 (.=0)
 gen prej_9 = 1 if prejudice_9=="Yes"
 recode prej_9 (.=0) 
 gen cont_9 = 1 if contempt_9=="Yes"
 recode cont_9 (.=0)
 gen viol_9 = 1 if violence_9=="Yes"
 recode viol_9 (.=0)
 
 //Comment 10 recodes//
**sentiment recoding//
gen sentiment_coded_10 = 1 if sentiment_10=="Stronly Negative"
recode sentiment_coded_10 (.=2) if sentiment_10=="Negative"
recode sentiment_coded_10 (.=3) if sentiment_10=="Neutral"
recode sentiment_coded_10 (.=4) if sentiment_10=="Positive"
recode sentiment_coded_10 (.=5) if sentiment_10=="Strongly Positive"

 gen sentiment_neg_10 = 1 if sentiment_coded_10==1 | sentiment_coded_10==2
 recode sentiment_neg_10 (.=0) if sentiment_coded_10>2
 
 //~50% of comment 10 coded as negative//
 
 //Dummy variables for reaction string measures//
 
 gen put_10 = 1 if putdown_10=="Yes"
 recode put_10 (.=0)
 gen sup_inf_10 = 1 if supinferior_10=="Yes, inferior"
 recode sup_inf_10(.=0)
 gen humil_10 = 1 if humiliate_10=="Yes"
 recode humil_10 (.=0) 
 gen hostil_10 = 1 if hostility_10=="Yes"
 recode hostil_10 (.=0)
 gen harass_10 = 1 if harassment_10=="Yes"
 recode harass_10 (.=0)
 gen prej_10 = 1 if prejudice_10=="Yes"
 recode prej_10 (.=0) 
 gen cont_10 = 1 if contempt_10=="Yes"
 recode cont_10 (.=0)
 gen viol_10 = 1 if violence_10=="Yes"
 recode viol_10 (.=0)
 
 sum sentiment_neg_1 sentiment_neg_2 sentiment_neg_3 sentiment_neg_4 sentiment_neg_5 sentiment_neg_6 sentiment_neg_7 sentiment_neg_8 sentiment_neg_9 sentiment_neg_10 if survey==1
 
 //Crude estimate of overall negative sentiment across 10 comments//
 egen sentiment_neg_overall = rsum(sentiment_neg_1 sentiment_neg_2 sentiment_neg_3 sentiment_neg_4 sentiment_neg_5 sentiment_neg_6 sentiment_neg_7 sentiment_neg_8 sentiment_neg_9 sentiment_neg_10)
 gen sentiment_neg_proportion = sentiment_neg/10
 sum sentiment_neg_proportion
 
 //OVERALL ~41% comments coded as negative//
 
 //Validity Statistics//
validscale put_1 sup_inf_1 humil_1 harass_1 hostil_1 prej_1 cont_1 viol_1, part (4 4) scorename(Degrade Bias) compscore(sum) alpha(0.7) 
validscale put_2 sup_inf_2 humil_2 harass_2 hostil_2 prej_2 cont_2 viol_2, part (4 4) scorename(Degrade Bias) compscore(sum) alpha(0.7) 
validscale put_3 sup_inf_3 humil_3 harass_3 hostil_3 prej_3 cont_3 viol_3, part (4 4) scorename(Degrade Bias) compscore(sum) alpha(0.7) 
validscale put_4 sup_inf_4 humil_4 harass_4 hostil_4 prej_4 cont_4 viol_4, part (4 4) scorename(Degrade Bias) compscore(sum) alpha(0.7) 
validscale put_5 sup_inf_5 humil_5 harass_5 hostil_5 prej_5 cont_5 viol_5, part (4 4) scorename(Degrade Bias) compscore(sum) alpha(0.7) 
validscale put_6 sup_inf_6 humil_6 harass_6 hostil_6 prej_6 cont_6 viol_6, part (4 4) scorename(Degrade Bias) compscore(sum) alpha(0.7) 
validscale put_7 sup_inf_7 humil_7 harass_7 hostil_7 prej_7 cont_7 viol_7, part (4 4) scorename(Degrade Bias) compscore(sum) alpha(0.7) 
validscale put_8 sup_inf_8 humil_8 harass_8 hostil_8 prej_8 cont_8 viol_8, part (4 4) scorename(Degrade Bias) compscore(sum) alpha(0.7) 
validscale put_9 sup_inf_9 humil_9 harass_9 hostil_9 prej_9 cont_9 viol_9, part (4 4) scorename(Degrade Bias) compscore(sum) alpha(0.7) 
validscale put_10 sup_inf_10 humil_10 harass_10 hostil_10 prej_10 cont_10 viol_10, part (4 4) scorename(Degrade Bias) compscore(sum) alpha(0.7) 

validscale put_1 sup_inf_1 humil_1 harass_1 hostil_1 prej_1 cont_1 viol_1, part (8) scorename(Hate) compscore(sum) alpha(0.7) 
validscale put_2 sup_inf_2 humil_2 harass_2 hostil_2 prej_2 cont_2 viol_2, part (8) scorename(Hate) compscore(sum) alpha(0.7) 
validscale put_3 sup_inf_3 humil_3 harass_3 hostil_3 prej_3 cont_3 viol_3, part (8) scorename(Hate) compscore(sum) alpha(0.7) 
validscale put_4 sup_inf_4 humil_4 harass_4 hostil_4 prej_4 cont_4 viol_4, part (8) scorename(Hate) compscore(sum) alpha(0.7) 
validscale put_5 sup_inf_5 humil_5 harass_5 hostil_5 prej_5 cont_5 viol_5, part (8) scorename(Hate) compscore(sum) alpha(0.7) 
validscale put_6 sup_inf_6 humil_6 harass_6 hostil_6 prej_6 cont_6 viol_6, part (8) scorename(Hate) compscore(sum) alpha(0.7) 
validscale put_7 sup_inf_7 humil_7 harass_7 hostil_7 prej_7 cont_7 viol_7, part (8) scorename(Hate) compscore(sum) alpha(0.7) 
validscale put_8 sup_inf_8 humil_8 harass_8 hostil_8 prej_8 cont_8 viol_8, part (8) scorename(Hate) compscore(sum) alpha(0.7) 
validscale put_9 sup_inf_9 humil_9 harass_9 hostil_9 prej_9 cont_9 viol_9, part (8) scorename(Hate) compscore(sum) alpha(0.7) 
validscale put_10 sup_inf_10 humil_10 harass_10 hostil_10 prej_10 cont_10 viol_10, part (8) scorename(Hate) compscore(sum) alpha(0.7) 

validscale put_1 sup_inf_1 humil_1 harass_1 hostil_1 prej_1 cont_1 viol_1 put_2 sup_inf_2 humil_2 harass_2 hostil_2 prej_2 cont_2 viol_2 put_3 sup_inf_3 humil_3 harass_3 hostil_3 prej_3 cont_3 viol_3 ///
put_4 sup_inf_4 humil_4 harass_4 hostil_4 prej_4 cont_4 viol_4 put_5 sup_inf_5 humil_5 harass_5 hostil_5 prej_5 cont_5 viol_5 put_6 sup_inf_6 humil_6 harass_6 hostil_6 prej_6 cont_6 viol_6 ///
put_7 sup_inf_7 humil_7 harass_7 hostil_7 prej_7 cont_7 viol_7 put_8 sup_inf_8 humil_8 harass_8 hostil_8 prej_8 cont_8 viol_8 put_9 sup_inf_9 humil_9 harass_9 hostil_9 prej_9 cont_9 viol_9 ///
put_10 sup_inf_10 humil_10 harass_10 hostil_10 prej_10 cont_10 viol_10, part(8 8 8 8 8 8 8 8 8 8) scorename(Hate1 Hate2 Hate3 Hate4 Hate5 Hate6 Hate7 Hate8 Hate9 Hate10)  compscore(sum) alpha(0.7)  delta(0.9) h(0.3)

** Humiliate & Put down avg: .84.
validscale put_1 humil_1 put_2 humil_2 put_3 humil_3 put_4 humil_4 put_5 humil_5 put_6 humil_6 put_7 humil_7 put_8 humil_8 put_9 humil_9 put_10 humil_10, part(2 2 2 2 2 2 2 2 2 2) scorename(degrade1 degrade2 degrade3 degrade4 degrade5 degrade6 degrade7 degrade8 degrade9 degrade10) compscore(sum) alpha(0.7)

**Sup_inf + prej + contempt avg: .80.
validscale sup_inf_1 prej_1 cont_1 sup_inf_2 prej_2 cont_2 sup_inf_3 prej_3 cont_3 sup_inf_4 prej_4 cont_4 sup_inf_5 prej_5 cont_5 sup_inf_6 prej_6 cont_6 sup_inf_7 prej_7 cont_7 sup_inf_8 prej_8 cont_8 sup_inf_9 prej_9 cont_9 sup_inf_10 prej_10 cont_10, part(3 3 3 3 3 3 3 3 3 3) scorename(bias1 bias2 bias3 bias4 bias5 bias6 bias7 bias8 bias9 bias10) compscore(sum) alpha(.7)

validscale hostil_1 viol_1 harass_1 hostil_2 viol_2 harass_2 hostil_3 viol_3 harass_3 hostil_4 viol_4 harass_4 hostil_5 viol_5 harass_5 hostil_6 viol_6 harass_6 hostil_7 viol_7 harass_7 hostil_8 viol_8 harass_8 hostil_9 viol_9 harass_9 hostil_10 viol_10 harass_10, part(3 3 3 3 3 3 3 3 3 3) scorename(threat1 threat2 threat3 threat4 threat5 threat6 threat7 threat8 threat9 threat10) compscore(sum) alpha(.7)

**violence + harass avg: .70.
**NOTE: comment 4 (2B) doesnt' yield valid responses.
validscale viol_1 harass_1 viol_2 harass_2 viol_3 harass_3 viol_4 harass_4 viol_5 harass_5 viol_6 harass_6 viol_7 harass_7 viol_8 harass_8 viol_9 harass_9 viol_10 harass_10, part(2 2 2 2 2 2 2 2 2 2) scorename(threat1 threat2 threat3 threat4 threat5 threat6 threat7 threat8 threat9 threat10) compscore(sum) alpha(.7)

**sup_inf + prej + contempt + hostility avg: .84.
validscale sup_inf_1 prej_1 cont_1 hostil_1 sup_inf_2 prej_2 cont_2 hostil_2 sup_inf_3 prej_3 cont_3 hostil_3 sup_inf_4 prej_4 cont_4 hostil_4 sup_inf_5 prej_5 cont_5 hostil_5 sup_inf_6 prej_6 cont_6 hostil_6 sup_inf_7 prej_7 cont_7 hostil_7 sup_inf_8 prej_8 cont_8 hostil_8 sup_inf_9 prej_9 cont_9 hostil_9 sup_inf_10 prej_10 cont_10 hostil_10, part(4 4 4 4 4 4 4 4 4 4) scorename(bias1 bias2 bias3 bias4 bias5 bias6 bias7 bias8 bias9 bias10) compscore(sum) alpha(.7)

validscale put_1 humil_1 harass_1 put_2 humil_2 harass_2 put_3 humil_3 harass_3 put_4 humil_4 harass_4 put_5 humil_5 harass_5 put_6 humil_6 harass_6 put_7 humil_7 harass_7 put_8 humil_8 harass_8 put_9 humil_9 harass_9 put_10 humil_10 harass_10, part(3 3 3 3 3 3 3 3 3 3) scorename(degrade1 degrade2 degrade3 degrade4 degrade5 degrade6 degrade7 degrade8 degrade9 degrade10) compscore(sum) alpha(0.7)


//Phase 2.3//
gen sent_1 = 1 if sentiment_1=="Strongly Negative"
recode sent_1 (.=2) if sentiment_1=="Negative"
recode sent_1 (.=3) if sentiment_1=="Neutral"
recode sent_1 (.=4) if sentiment_1=="Positive"
recode sent_1 (.=5) if sentiment_1=="Strongly Positive"

gen sent_2 = 1 if sentiment_2=="Strongly Negative"
recode sent_2 (.=2) if sentiment_2=="Negative"
recode sent_2 (.=3) if sentiment_2=="Neutral"
recode sent_2 (.=4) if sentiment_2=="Positive"
recode sent_2 (.=5) if sentiment_2=="Strongly Positive"

gen sent_3 = 1 if sentiment_3=="Strongly Negative"
recode sent_3 (.=2) if sentiment_3=="Negative"
recode sent_3 (.=3) if sentiment_3=="Neutral"
recode sent_3 (.=4) if sentiment_3=="Positive"
recode sent_3 (.=5) if sentiment_3=="Strongly Positive"

gen sent_4 = 1 if sentiment_4=="Strongly Negative"
recode sent_4 (.=2) if sentiment_4=="Negative"
recode sent_4 (.=3) if sentiment_4=="Neutral"
recode sent_4 (.=4) if sentiment_4=="Positive"
recode sent_4 (.=5) if sentiment_4=="Strongly Positive"

gen sent_5 = 1 if sentiment_5=="Strongly Negative"
recode sent_5 (.=2) if sentiment_5=="Negative"
recode sent_5 (.=3) if sentiment_5=="Neutral"
recode sent_5 (.=4) if sentiment_5=="Positive"
recode sent_5 (.=5) if sentiment_5=="Strongly Positive"

gen sent_6 = 1 if sentiment_6=="Strongly Negative"
recode sent_6 (.=2) if sentiment_6=="Negative"
recode sent_6 (.=3) if sentiment_6=="Neutral"
recode sent_6 (.=4) if sentiment_6=="Positive"
recode sent_6 (.=5) if sentiment_6=="Strongly Positive"

gen sent_7 = 1 if sentiment_7=="Strongly Negative"
recode sent_7 (.=2) if sentiment_7=="Negative"
recode sent_7 (.=3) if sentiment_7=="Neutral"
recode sent_7 (.=4) if sentiment_7=="Positive"
recode sent_7 (.=5) if sentiment_7=="Strongly Positive"

gen sent_8 = 1 if sentiment_8=="Strongly Negative"
recode sent_8 (.=2) if sentiment_8=="Negative"
recode sent_8 (.=3) if sentiment_8=="Neutral"
recode sent_8 (.=4) if sentiment_8=="Positive"
recode sent_8 (.=5) if sentiment_8=="Strongly Positive"

gen sent_9 = 1 if sentiment_9=="Strongly Negative"
recode sent_9 (.=2) if sentiment_9=="Negative"
recode sent_9 (.=3) if sentiment_9=="Neutral"
recode sent_9 (.=4) if sentiment_9=="Positive"
recode sent_9 (.=5) if sentiment_9=="Strongly Positive"

gen sent_10 = 1 if sentiment_10=="Strongly Negative"
recode sent_10 (.=2) if sentiment_10=="Negative"
recode sent_10 (.=3) if sentiment_10=="Neutral"
recode sent_10 (.=4) if sentiment_10=="Positive"
recode sent_10 (.=5) if sentiment_10=="Strongly Positive"

gen put_1 = 1 if putdown_1=="Yes"
 recode put_1 (.=0)
 gen sup_inf_1 = 1 if supinferior_1=="Yes, inferior"
 recode sup_inf_1(.=0)
 gen humil_1 = 1 if humiliate_1=="Yes"
 recode humil_1 (.=0) 
 gen hostil_1 = 1 if hostility_1=="Yes"
 recode hostil_1 (.=0)
 gen harass_1 = 1 if harassment_1=="Yes"
 recode harass_1 (.=0)
 gen prej_1 = 1 if prejudice_1=="Yes"
 recode prej_1 (.=0) 
 gen cont_1 = 1 if contempt_1=="Yes"
 recode cont_1 (.=0)
 gen viol_1 = 1 if violence_1=="Yes"
 recode viol_1 (.=0)

 gen put_2 = 1 if putdown_2=="Yes"
 recode put_2 (.=0)
 gen sup_inf_2 = 1 if supinferior_2=="Yes, inferior"
 recode sup_inf_2(.=0)
 gen humil_2 = 1 if humiliate_2=="Yes"
 recode humil_2 (.=0) 
 gen hostil_2 = 1 if hostility_2=="Yes"
 recode hostil_2 (.=0)
 gen harass_2 = 1 if harassment_2=="Yes"
 recode harass_2 (.=0)
 gen prej_2 = 1 if prejudice_2=="Yes"
 recode prej_2 (.=0) 
 gen cont_2 = 1 if contempt_2=="Yes"
 recode cont_2 (.=0)
 gen viol_2 = 1 if violence_2=="Yes"
 recode viol_2 (.=0)
 
 gen put_3 = 1 if putdown_3=="Yes"
 recode put_3 (.=0)
 gen sup_inf_3 = 1 if supinferior_3=="Yes, inferior"
 recode sup_inf_3(.=0)
 gen humil_3 = 1 if humiliate_3=="Yes"
 recode humil_3 (.=0) 
 gen hostil_3 = 1 if hostility_3=="Yes"
 recode hostil_3 (.=0)
 gen harass_3 = 1 if harassment_3=="Yes"
 recode harass_3 (.=0)
 gen prej_3 = 1 if prejudice_3=="Yes"
 recode prej_3 (.=0) 
 gen cont_3 = 1 if contempt_3=="Yes"
 recode cont_3 (.=0)
 gen viol_3 = 1 if violence_3=="Yes"
 recode viol_3 (.=0)
 
 gen put_4 = 1 if putdown_4=="Yes"
 recode put_4 (.=0)
 gen sup_inf_4 = 1 if supinferior_4=="Yes, inferior"
 recode sup_inf_4(.=0)
 gen humil_4 = 1 if humiliate_4=="Yes"
 recode humil_4 (.=0) 
 gen hostil_4 = 1 if hostility_4=="Yes"
 recode hostil_4 (.=0)
 gen harass_4 = 1 if harassment_4=="Yes"
 recode harass_4 (.=0)
 gen prej_4 = 1 if prejudice_4=="Yes"
 recode prej_4 (.=0) 
 gen cont_4 = 1 if contempt_4=="Yes"
 recode cont_4 (.=0)
 gen viol_4 = 1 if violence_4=="Yes"
 recode viol_4 (.=0)
 
 gen put_5 = 1 if putdown_5=="Yes"
 recode put_5 (.=0)
 gen sup_inf_5 = 1 if supinferior_5=="Yes, inferior"
 recode sup_inf_5(.=0)
 gen humil_5 = 1 if humiliate_5=="Yes"
 recode humil_5 (.=0) 
 gen hostil_5 = 1 if hostility_5=="Yes"
 recode hostil_5 (.=0)
 gen harass_5 = 1 if harassment_5=="Yes"
 recode harass_5 (.=0)
 gen prej_5 = 1 if prejudice_5=="Yes"
 recode prej_5 (.=0) 
 gen cont_5 = 1 if contempt_5=="Yes"
 recode cont_5 (.=0)
 gen viol_5 = 1 if violence_5=="Yes"
 recode viol_5 (.=0)
 
 gen put_6 = 1 if putdown_6=="Yes"
 recode put_6 (.=0)
 gen sup_inf_6 = 1 if supinferior_6=="Yes, inferior"
 recode sup_inf_6(.=0)
 gen humil_6 = 1 if humiliate_6=="Yes"
 recode humil_6 (.=0) 
 gen hostil_6 = 1 if hostility_6=="Yes"
 recode hostil_6 (.=0)
 gen harass_6 = 1 if harassment_6=="Yes"
 recode harass_6 (.=0)
 gen prej_6 = 1 if prejudice_6=="Yes"
 recode prej_6 (.=0) 
 gen cont_6 = 1 if contempt_6=="Yes"
 recode cont_6 (.=0)
 gen viol_6 = 1 if violence_6=="Yes"
 recode viol_6 (.=0)
 
 gen put_7 = 1 if putdown_7=="Yes"
 recode put_7 (.=0)
 gen sup_inf_7 = 1 if supinferior_7=="Yes, inferior"
 recode sup_inf_7(.=0)
 gen humil_7 = 1 if humiliate_7=="Yes"
 recode humil_7 (.=0) 
 gen hostil_7 = 1 if hostility_7=="Yes"
 recode hostil_7 (.=0)
 gen harass_7 = 1 if harassment_7=="Yes"
 recode harass_7 (.=0)
 gen prej_7 = 1 if prejudice_7=="Yes"
 recode prej_7 (.=0) 
 gen cont_7 = 1 if contempt_7=="Yes"
 recode cont_7 (.=0)
 gen viol_7 = 1 if violence_7=="Yes"
 recode viol_7 (.=0)
 
 gen put_8 = 1 if putdown_8=="Yes"
 recode put_8 (.=0)
 gen sup_inf_8 = 1 if supinferior_8=="Yes, inferior"
 recode sup_inf_8(.=0)
 gen humil_8 = 1 if humiliate_8=="Yes"
 recode humil_8 (.=0) 
 gen hostil_8 = 1 if hostility_8=="Yes"
 recode hostil_8 (.=0)
 gen harass_8 = 1 if harassment_8=="Yes"
 recode harass_8 (.=0)
 gen prej_8 = 1 if prejudice_8=="Yes"
 recode prej_8 (.=0) 
 gen cont_8 = 1 if contempt_8=="Yes"
 recode cont_8 (.=0)
 gen viol_8 = 1 if violence_8=="Yes"
 recode viol_8 (.=0)
 
 gen put_9 = 1 if putdown_9=="Yes"
 recode put_9 (.=0)
 gen sup_inf_9 = 1 if supinferior_9=="Yes, inferior"
 recode sup_inf_9(.=0)
 gen humil_9 = 1 if humiliate_9=="Yes"
 recode humil_9 (.=0) 
 gen hostil_9 = 1 if hostility_9=="Yes"
 recode hostil_9 (.=0)
 gen harass_9 = 1 if harassment_9=="Yes"
 recode harass_9 (.=0)
 gen prej_9 = 1 if prejudice_9=="Yes"
 recode prej_9 (.=0) 
 gen cont_9 = 1 if contempt_9=="Yes"
 recode cont_9 (.=0)
 gen viol_9 = 1 if violence_9=="Yes"
 recode viol_9 (.=0)
 
 gen put_10 = 1 if putdown_10=="Yes"
 recode put_10 (.=0)
 gen sup_inf_10 = 1 if supinferior_10=="Yes, inferior"
 recode sup_inf_10(.=0)
 gen humil_10 = 1 if humiliate_10=="Yes"
 recode humil_10 (.=0) 
 gen hostil_10 = 1 if hostility_10=="Yes"
 recode hostil_10 (.=0)
 gen harass_10 = 1 if harassment_10=="Yes"
 recode harass_10 (.=0)
 gen prej_10 = 1 if prejudice_10=="Yes"
 recode prej_10 (.=0) 
 gen cont_10 = 1 if contempt_10=="Yes"
 recode cont_10 (.=0)
 gen viol_10 = 1 if violence_10=="Yes"
 recode viol_10 (.=0)
 
 
validscale put_1 humil_1 sup_inf_1 hostil_1 prej_1 cont_1 harass_1 viol_1, part (2 4 2) scorename(Degrade Bias Action) compscore(sum) alpha(0.7) 
validscale put_2 humil_2 sup_inf_2 hostil_2 prej_2 cont_2 harass_2 viol_2, part (2 4 2) scorename(Degrade Bias Action) compscore(sum) alpha(0.7) 
validscale put_3 humil_3 sup_inf_3 hostil_3 prej_3 cont_3 harass_3 viol_3, part (2 4 2) scorename(Degrade Bias Action) compscore(sum) alpha(0.7) 
validscale put_4 humil_4 sup_inf_4 hostil_4 prej_4 cont_4 harass_4 viol_4, part (2 4 2) scorename(Degrade Bias Action) compscore(sum) alpha(0.7) 
validscale put_5 humil_5 sup_inf_5 hostil_5 prej_5 cont_5 harass_5 viol_5, part (2 4 2) scorename(Degrade Bias Action) compscore(sum) alpha(0.7) 
validscale put_6 humil_6 sup_inf_6 hostil_6 prej_6 cont_6 harass_6 viol_6, part (2 4 2) scorename(Degrade Bias Action) compscore(sum) alpha(0.7) 
validscale put_7 humil_7 sup_inf_7 hostil_7 prej_7 cont_7 harass_7 viol_7, part (2 4 2) scorename(Degrade Bias Action) compscore(sum) alpha(0.7) 
validscale put_8 humil_8 sup_inf_8 hostil_8 prej_8 cont_8 harass_8 viol_8, part (2 4 2) scorename(Degrade Bias Action) compscore(sum) alpha(0.7) 
validscale put_9 humil_9 sup_inf_9 hostil_9 prej_9 cont_9 harass_9 viol_9, part (2 4 2) scorename(Degrade Bias Action) compscore(sum) alpha(0.7) 
validscale put_10 humil_10 sup_inf_10 hostil_10 prej_10 cont_10 harass_10 viol_10, part (2 4 2) scorename(Degrade Bias Action) compscore(sum) alpha(0.7) 
 
//Demographic Information for 505 MTurk Sample//

sum demo_age
tab demo_race_ethnicitie
tab demo_gender
tab demo_income
tab demo_educ
tab demo_religion
tab demo_sexual_orien

pca put_1 - viol_1
pca put_2 - viol_2
pca put_3 - viol_3
pca put_4 - viol_4
pca put_5 - viol_5
pca put_6 - viol_6
pca put_7 - viol_7
pca put_8 - viol_8
pca put_9 - viol_9
pca put_10 - viol_10

//First 100 comments//
gen comment_ID = _n
gen filter_100 = 1 if _n<101
recode filter_100 (.=0)

tab sentiment_1 if filter_100==1
tab sentiment_2 if filter_100==1
tab sentiment_3 if filter_100==1
tab sentiment_4 if filter_100==1
tab sentiment_5 if filter_100==1
tab sentiment_6 if filter_100==1
tab sentiment_7 if filter_100==1
tab sentiment_8 if filter_100==1
tab sentiment_9 if filter_100==1
tab sentiment_10 if filter_100==1

//First 100 comments conditioned on target identified//

tab sentiment_1 if filter_100==1 & target1!=.
tab sentiment_2 if filter_100==1 & target2!=.
tab sentiment_3 if filter_100==1 & target3!=.
tab sentiment_4 if filter_100==1 & target4!=.
tab sentiment_5 if filter_100==1 & target5!=.
tab sentiment_6 if filter_100==1 & target6!=.
tab sentiment_7 if filter_100==1 & target7!=.
tab sentiment_8 if filter_100==1 & target8!=.
tab sentiment_9 if filter_100==1 & target9!=.
tab sentiment_10 if filter_100==1 & target10!=.


