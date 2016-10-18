///Variable initialization for skills
//copy and paste this inside of the class objects and modify as needed
//Put this in the create event

chargeKey = keyboard_check(ord('Q'));//Charge key is "Q"
cooldownKey = keyboard_check(ord('E'));//Cooldown is "E"

cooldown = 0;//this is the cool down for the cooldown skill
offCooldown = 1;// 1 means that its ready to use, 0 means it's not

charge = 0;//This is the current charge level for the charge skill
maxCharge = 100;//This is the maximum charge level (usually the charge ability will be ready once charge hits this

chargeRate = 0;//This is the rate at which your attacks will build your charge
chargeHoldRate = 0;//This is the rate at which your skills will charge while holding the skill button

