//===========================================================================
//  Project:    Trial
//
//  Date:       10/01/16
//
//  Script:     int_Enemy
//
//  Written by:  Brodyrick Ramsey
// 
//  This script aims to:
//  Set variables for enemies. Checks the argument0 types against enemy types
//  to know what type of enemy was passed in.
//===========================================================================

argument0.hspd = 5;       // horizontal speed
argument0.vspd = 5;       // vertical speed
if (argument0.type == enemytypes.PATROLLER)
{
argument0.dirctn = 0;     // the direction our enemy is facing
//argument0.marker = objenemyMarker[argument1];
argument0.hlth = 100;     // The enemy's health
//sight[0] =
//sight[1] = ;      // How far an enemy can see. 
}
else if (argument0.type == enemytypes.STALKER)
{
argument0.dirctn = 0;     // the direction our enemy is facing
//argument0.marker = objenemyMarker[argument1];
argument0.hlth = 100;     // The enemy's health
//sight[0] =
//sight[1] = ;      // How far an enemy can see. 
}
else if (argument0.type == enemytypes.CHASER)
{
argument0.dirctn = 0;     // the direction our enemy is facing
//argument0.marker = objenemyMarker[argument1];
argument0.hlth = 100;     // The enemy's health
//sight[0] =
//sight[1] = ;      // How far an enemy can see. 
}

