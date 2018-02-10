/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 08B36924
/// @DnDArgument : "expr" "-1"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "playerHp"
playerHp += -1;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 1EA87A58
/// @DnDApplyTo : other
/// @DnDArgument : "expr" "1"
/// @DnDArgument : "var" "enemyDeath"
with(other) {
enemyDeath = 1;

}