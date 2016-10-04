//------------------------------------------------------------------------
//  Project:   Trial
//
//  Date:      10/04/16
//
//  Script:    int_Melee
//
//  By:        Brodyrick Ramsey
//
//  Goal:      Set base code for specific characters to do melee attacks.
//  Create hitboxes for melee to do damage to enemies.
//  Melee will last 2 seconds then be destroyed.
//------------------------------------------------------------------------

// Setting Variables
var Melee_ID;  // melee itself
var rang   = 0; // how far the melee will swing
var ang    = 0; // what direction the melee is swinging

//---------------------------------------------
if (mouse_check_button(mb_right))
{
rang  = point_distance(x, y,
                          mouse_x, mouse_y);
ang   = point_direction(x, y,
                          mouse_x, mouse_y);
Melee_ID = instance_create(x, y,
                          mouse_x, mouse_y);

