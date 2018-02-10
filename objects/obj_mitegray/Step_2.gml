/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 1BC28A1B
/// @DnDArgument : "var" "enemyDeath"
/// @DnDArgument : "value" "1"
if(enemyDeath == 1)
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 3E00F468
	/// @DnDParent : 1BC28A1B
	instance_destroy();
}