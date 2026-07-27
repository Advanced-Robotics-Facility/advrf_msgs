# Gain type constants
uint8 UNSPECIFIED=0
uint8 POSITION=59     # 0x3B
uint8 VELOCITY=113    # 0x71
uint8 IMPEDANCE=212   # 0xD4
uint8 TORQUE=204      # 0xCC
uint8 CURRENT=221     # 0xDD

# Active gain type
uint8 type

# Position gains
float64 pos_kp
float64 pos_kd

# Torque/current gains
float64 tor_kp
float64 tor_ki
float64 tor_kd