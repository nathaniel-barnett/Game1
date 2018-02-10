/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 535851E2
/// @DnDArgument : "var" "playerHp"
/// @DnDArgument : "op" "3"
if(playerHp <= 0)
{
	/// @DnDAction : YoYo Games.Rooms.Restart_Room
	/// @DnDVersion : 1
	/// @DnDHash : 5ECF3303
	/// @DnDParent : 535851E2
	room_restart();
}