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
var _bulletID;      // My bullet!
var _Steps  = 0;    // How fast my bullet is!
var _Len    = 0;    // How long my bullet has to go!
var _Angle  = 0;    // The direction my bullet is going!

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
    _bulletID = instance_create(x,y, argument0);
    _bulletID._vspd -= 5;
}

else if _vDown
{
    // Check to see if we have ammo if we are using ammo
    // if(argument0.checkammo)
    _bulletID = instance_create(x,y, argument0);
    _bulletID._vspd += 5;
}

else if _vLeft
{
    // Check to see if we have ammo if we are using ammo
    // if(argument0.checkammo)
    _bulletID = instance_create(x,y, argument0);
    _bulletID._hspd -= 5;
}

else if _vRight
{
    // Check to see if we have ammo if we are using ammo
    // if(argument0.checkammo)
    _bulletID = instance_create(x,y, argument0);
    _bulletID._hspd += 5;
}*/

// Check for that sweet mouse input!  
//  TODO::  Find out design choice on ammo capasity.  As understood  
//          there will be weapon degradation.
if (mouse_check_button(mb_left))
{
_Len = point_distance(x, y, 
                      mouse_x, mouse_y);    //FAR I'M SHOOTING TEX!?
_Angle = point_direction(x, y, 
                         mouse_x, mouse_y); //WERE I'M SHOOTING TEX!?
 
_bulletID = instance_create(x, y, 
                            argument0);     //GETTING MY BULLET READY!

_Steps = _Len/_bulletID.speed;// CHANGE speed variable OF BULLET TO 
                              // MAKE IT GO FASTER OR SLOWER

_bulletID.hspeed = lengthdir_x(_Len, _Angle)/_Steps; // LEFT-RIGHT GO!
_bulletID.vspeed = lengthdir_y(_Len, _Angle)/_Steps; // UP-DOWN GO!
}
