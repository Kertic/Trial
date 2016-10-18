//Execute the skills

if chargeKey {
    if charge < maxCharge {
        charge += chargeHoldRate;
    }
    if charge = maxCharge{
        script_execute(skillnamehere);
    }
    if charge > maxCharge{//This shouldn't happen, but if it does this code will be a fail safe
        charge = maxCharge;
    }
}

if cooldownKey {
        script_execute(skillnamehere);
        //The script this part executes should involve using the "cooldown" variable to make sure that its off cooldown.
        //It will probably use some system of alarms to set the offCooldown to "1" 
}
