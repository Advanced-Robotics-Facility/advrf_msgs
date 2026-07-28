# Trajectory types
uint8 HOMING=1
uint8 SINE=2
uint8 SMOOTHER=3
uint8 SMOOTHER_VEL=4

uint8 type
string name
int32 board_id

advrf_interfaces/SmoothPar smooth_par
advrf_interfaces/PeriodPar period_par
advrf_interfaces/HomingPar homing_par
advrf_interfaces/SmoothVelPar smooth_vel_par