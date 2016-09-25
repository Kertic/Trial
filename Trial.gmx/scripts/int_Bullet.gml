//===========================================================================
//  Project:    Trial
//
//  Date:       09/24/16
//
//  Script:     int_Bullet
//
//  Writen by:  Evan Wilcher
// 
//  What this script aims to do is:
//  1) Set the controled sprite to face the direction it is shooting.
//      (Will check with design choices on that one.)
//  2) Fire a specific type of bullet.
//      (This may be just a normal bullet the object can manipulate furter.)
//  
//  TODO::  Find out design choice on ammo capasity.  As understood there 
//          will be weapon degradation.
//  TODO::  Find out design choice on mouse input.  Possiblility of having
//          an extra attack with mouse click.
//===========================================================================

// let's set some variables
var Bullet_ID;      // My bullet!
var steps  = 0;    // How fast my bullet is!
var len    = 0;    // How long my bullet has to go!
var angle  = 0;    // The direction my bullet is going!

//========================================================
// THIS IS THE OLD WAY WITH KEYBOARD!  IT LONG AND UGLY!
//========================================================
/*//  Let's get some inputs.
var _vUp    = keyboard_check(vk_up);
var _vDown  = keyboard_check(vk_down);
var _vLeft  = keyboard_check(vk_left);
var _vRight = keyboard_check(vk_right);

//  Let's check those inputs
//  In each check I want to fire a bullet.
if _vUp
{
    // Check to see if we have ammo if we are using ammo
    // if(argument0.checkammo)
    Bullet_ID = instance_create(x,y, argument0);
    Bullet_ID._vspd -= 5;
}

else if _vDown
{
    // Check to see if we have ammo if we are using ammo
    // if(argument0.checkammo)
    Bullet_ID = instance_create(x,y, argument0);
    Bullet_ID._vspd += 5;
}

else if _vLeft
{
    // Check to see if we have ammo if we are using ammo
    // if(argument0.checkammo)
    Bullet_ID = instance_create(x,y, argument0);
    Bullet_ID._hspd -= 5;
}

else if _vRight
{
    // Check to see if we have ammo if we are using ammo
    // if(argument0.checkammo)
    Bullet_ID = instance_create(x,y, argument0);
    Bullet_ID._hspd += 5;
}*/

// Check for that sweet mouse input!  
//  TODO::  Find out design choice on ammo capasity.  As understood  
//          there will be weapon degradation.
if (mouse_check_button(mb_left))
{
len = point_distance(x, y, 
                      mouse_x, mouse_y);    //FAR I'M SHOOTING TEX!?
angle = point_direction(x, y, 
                         mouse_x, mouse_y); //WERE I'M SHOOTING TEX!?
 
Bullet_ID = instance_create(x, y, 
                            obj_ParentBullet);     //GETTING MY BULLET READY!

steps = len/Bullet_ID.speed;// CHANGE speed variable OF BULLET TO 
                              // MAKE IT GO FASTER OR SLOWER

Bullet_ID.hspeed = lengthdir_x(len, angle)/steps; // LEFT-RIGHT GO!
Bullet_ID.vspeed = lengthdir_y(len, angle)/steps; // UP-DOWN GO!
}
