EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 4
Title "Siplace S Feeder Controller"
Date "2020-01-18"
Rev "0.1"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Device:R R?
U 1 1 5ED7EA18
P 1850 1250
AR Path="/5ED7EA18" Ref="R?"  Part="1" 
AR Path="/5ED4198E/5ED7EA18" Ref="R14"  Part="1" 
F 0 "R14" V 1750 1200 50  0000 L CNN
F 1 "330" V 1950 1200 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 1780 1250 50  0001 C CNN
F 3 "~" H 1850 1250 50  0001 C CNN
	1    1850 1250
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5ED7EA1E
P 1650 1050
AR Path="/5ED7EA1E" Ref="R?"  Part="1" 
AR Path="/5ED4198E/5ED7EA1E" Ref="R1"  Part="1" 
F 0 "R1" V 1443 1050 50  0000 C CNN
F 1 "4K7" V 1534 1050 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 1580 1050 50  0001 C CNN
F 3 "~" H 1650 1050 50  0001 C CNN
	1    1650 1050
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5ED7EA36
P 2800 7400
AR Path="/5ED7EA36" Ref="#PWR?"  Part="1" 
AR Path="/5ED4198E/5ED7EA36" Ref="#PWR0103"  Part="1" 
F 0 "#PWR0103" H 2800 7150 50  0001 C CNN
F 1 "GND" H 2805 7227 50  0000 C CNN
F 2 "" H 2800 7400 50  0001 C CNN
F 3 "" H 2800 7400 50  0001 C CNN
	1    2800 7400
	1    0    0    -1  
$EndComp
Wire Wire Line
	2800 7250 2800 7400
Text GLabel 1300 1050 0    50   Input ~ 0
FEEDER0_RX
$Comp
L Transistor_BJT:MMBT3904 Q?
U 1 1 5ED7EA48
P 2150 1050
AR Path="/5ED7EA48" Ref="Q?"  Part="1" 
AR Path="/5ED4198E/5ED7EA48" Ref="Q1"  Part="1" 
F 0 "Q1" H 2341 1096 50  0000 L CNN
F 1 "BC846" H 2341 1005 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 2350 975 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N3904.pdf" H 2150 1050 50  0001 L CNN
	1    2150 1050
	1    0    0    -1  
$EndComp
Wire Wire Line
	1950 1050 1800 1050
Wire Wire Line
	2000 1250 2250 1250
Wire Wire Line
	1300 1050 1450 1050
Wire Wire Line
	2250 1250 2800 1250
Connection ~ 2250 1250
$Comp
L Device:R R?
U 1 1 5ED7EC13
P 1850 1750
AR Path="/5ED7EC13" Ref="R?"  Part="1" 
AR Path="/5ED4198E/5ED7EC13" Ref="R15"  Part="1" 
F 0 "R15" V 1750 1700 50  0000 L CNN
F 1 "330" V 1950 1700 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 1780 1750 50  0001 C CNN
F 3 "~" H 1850 1750 50  0001 C CNN
	1    1850 1750
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5ED7EC19
P 1650 1550
AR Path="/5ED7EC19" Ref="R?"  Part="1" 
AR Path="/5ED4198E/5ED7EC19" Ref="R2"  Part="1" 
F 0 "R2" V 1443 1550 50  0000 C CNN
F 1 "4K7" V 1534 1550 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 1580 1550 50  0001 C CNN
F 3 "~" H 1650 1550 50  0001 C CNN
	1    1650 1550
	0    1    1    0   
$EndComp
Text GLabel 1300 1550 0    50   Input ~ 0
FEEDER1_RX
$Comp
L Transistor_BJT:MMBT3904 Q?
U 1 1 5ED7EC20
P 2150 1550
AR Path="/5ED7EC20" Ref="Q?"  Part="1" 
AR Path="/5ED4198E/5ED7EC20" Ref="Q2"  Part="1" 
F 0 "Q2" H 2341 1596 50  0000 L CNN
F 1 "BC846" H 2341 1505 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 2350 1475 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N3904.pdf" H 2150 1550 50  0001 L CNN
	1    2150 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	1950 1550 1800 1550
Wire Wire Line
	2000 1750 2250 1750
Wire Wire Line
	1300 1550 1450 1550
Wire Wire Line
	2250 1750 2800 1750
Connection ~ 2250 1750
$Comp
L Device:R R?
U 1 1 5ED7EC2C
P 1850 2250
AR Path="/5ED7EC2C" Ref="R?"  Part="1" 
AR Path="/5ED4198E/5ED7EC2C" Ref="R16"  Part="1" 
F 0 "R16" V 1750 2200 50  0000 L CNN
F 1 "330" V 1950 2200 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 1780 2250 50  0001 C CNN
F 3 "~" H 1850 2250 50  0001 C CNN
	1    1850 2250
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5ED7EC32
P 1650 2050
AR Path="/5ED7EC32" Ref="R?"  Part="1" 
AR Path="/5ED4198E/5ED7EC32" Ref="R3"  Part="1" 
F 0 "R3" V 1443 2050 50  0000 C CNN
F 1 "4K7" V 1534 2050 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 1580 2050 50  0001 C CNN
F 3 "~" H 1650 2050 50  0001 C CNN
	1    1650 2050
	0    1    1    0   
$EndComp
Text GLabel 1300 2050 0    50   Input ~ 0
FEEDER2_RX
$Comp
L Transistor_BJT:MMBT3904 Q?
U 1 1 5ED7EC39
P 2150 2050
AR Path="/5ED7EC39" Ref="Q?"  Part="1" 
AR Path="/5ED4198E/5ED7EC39" Ref="Q3"  Part="1" 
F 0 "Q3" H 2341 2096 50  0000 L CNN
F 1 "BC846" H 2341 2005 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 2350 1975 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N3904.pdf" H 2150 2050 50  0001 L CNN
	1    2150 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	1950 2050 1800 2050
Wire Wire Line
	2000 2250 2250 2250
Wire Wire Line
	1300 2050 1450 2050
Wire Wire Line
	2250 1850 2950 1850
Wire Wire Line
	2250 2250 2800 2250
Connection ~ 2250 2250
$Comp
L Device:R R?
U 1 1 5ED7EC45
P 1850 2750
AR Path="/5ED7EC45" Ref="R?"  Part="1" 
AR Path="/5ED4198E/5ED7EC45" Ref="R17"  Part="1" 
F 0 "R17" V 1750 2700 50  0000 L CNN
F 1 "330" V 1950 2700 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 1780 2750 50  0001 C CNN
F 3 "~" H 1850 2750 50  0001 C CNN
	1    1850 2750
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5ED7EC4B
P 1650 2550
AR Path="/5ED7EC4B" Ref="R?"  Part="1" 
AR Path="/5ED4198E/5ED7EC4B" Ref="R4"  Part="1" 
F 0 "R4" V 1443 2550 50  0000 C CNN
F 1 "4K7" V 1534 2550 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 1580 2550 50  0001 C CNN
F 3 "~" H 1650 2550 50  0001 C CNN
	1    1650 2550
	0    1    1    0   
$EndComp
Text GLabel 1300 2550 0    50   Input ~ 0
FEEDER3_RX
$Comp
L Transistor_BJT:MMBT3904 Q?
U 1 1 5ED7EC52
P 2150 2550
AR Path="/5ED7EC52" Ref="Q?"  Part="1" 
AR Path="/5ED4198E/5ED7EC52" Ref="Q4"  Part="1" 
F 0 "Q4" H 2341 2596 50  0000 L CNN
F 1 "BC846" H 2341 2505 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 2350 2475 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N3904.pdf" H 2150 2550 50  0001 L CNN
	1    2150 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	1950 2550 1800 2550
Wire Wire Line
	2000 2750 2250 2750
Wire Wire Line
	1300 2550 1450 2550
Wire Wire Line
	2250 2350 2950 2350
Wire Wire Line
	2250 2750 2800 2750
Connection ~ 2250 2750
$Comp
L Device:R R?
U 1 1 5ED7EC5E
P 1850 3250
AR Path="/5ED7EC5E" Ref="R?"  Part="1" 
AR Path="/5ED4198E/5ED7EC5E" Ref="R18"  Part="1" 
F 0 "R18" V 1750 3200 50  0000 L CNN
F 1 "330" V 1950 3200 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 1780 3250 50  0001 C CNN
F 3 "~" H 1850 3250 50  0001 C CNN
	1    1850 3250
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5ED7EC64
P 1650 3050
AR Path="/5ED7EC64" Ref="R?"  Part="1" 
AR Path="/5ED4198E/5ED7EC64" Ref="R5"  Part="1" 
F 0 "R5" V 1443 3050 50  0000 C CNN
F 1 "4K7" V 1534 3050 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 1580 3050 50  0001 C CNN
F 3 "~" H 1650 3050 50  0001 C CNN
	1    1650 3050
	0    1    1    0   
$EndComp
Text GLabel 1300 3050 0    50   Input ~ 0
FEEDER4_RX
$Comp
L Transistor_BJT:MMBT3904 Q?
U 1 1 5ED7EC6B
P 2150 3050
AR Path="/5ED7EC6B" Ref="Q?"  Part="1" 
AR Path="/5ED4198E/5ED7EC6B" Ref="Q5"  Part="1" 
F 0 "Q5" H 2341 3096 50  0000 L CNN
F 1 "BC846" H 2341 3005 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 2350 2975 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N3904.pdf" H 2150 3050 50  0001 L CNN
	1    2150 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	1950 3050 1800 3050
Wire Wire Line
	2000 3250 2250 3250
Wire Wire Line
	1300 3050 1450 3050
Wire Wire Line
	2250 2850 2950 2850
Wire Wire Line
	2250 3250 2800 3250
Connection ~ 2250 3250
$Comp
L Device:R R?
U 1 1 5ED7EC77
P 1850 3750
AR Path="/5ED7EC77" Ref="R?"  Part="1" 
AR Path="/5ED4198E/5ED7EC77" Ref="R19"  Part="1" 
F 0 "R19" V 1750 3700 50  0000 L CNN
F 1 "330" V 1950 3700 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 1780 3750 50  0001 C CNN
F 3 "~" H 1850 3750 50  0001 C CNN
	1    1850 3750
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5ED7EC7D
P 1650 3550
AR Path="/5ED7EC7D" Ref="R?"  Part="1" 
AR Path="/5ED4198E/5ED7EC7D" Ref="R6"  Part="1" 
F 0 "R6" V 1443 3550 50  0000 C CNN
F 1 "4K7" V 1534 3550 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 1580 3550 50  0001 C CNN
F 3 "~" H 1650 3550 50  0001 C CNN
	1    1650 3550
	0    1    1    0   
$EndComp
Text GLabel 1300 3550 0    50   Input ~ 0
FEEDER5_RX
$Comp
L Transistor_BJT:MMBT3904 Q?
U 1 1 5ED7EC84
P 2150 3550
AR Path="/5ED7EC84" Ref="Q?"  Part="1" 
AR Path="/5ED4198E/5ED7EC84" Ref="Q6"  Part="1" 
F 0 "Q6" H 2341 3596 50  0000 L CNN
F 1 "BC846" H 2341 3505 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 2350 3475 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N3904.pdf" H 2150 3550 50  0001 L CNN
	1    2150 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	1950 3550 1800 3550
Wire Wire Line
	2000 3750 2250 3750
Wire Wire Line
	1300 3550 1450 3550
Wire Wire Line
	2250 3350 2950 3350
Wire Wire Line
	2250 3750 2800 3750
Connection ~ 2250 3750
$Comp
L Device:R R?
U 1 1 5ED7EC90
P 1850 4250
AR Path="/5ED7EC90" Ref="R?"  Part="1" 
AR Path="/5ED4198E/5ED7EC90" Ref="R20"  Part="1" 
F 0 "R20" V 1750 4200 50  0000 L CNN
F 1 "330" V 1950 4200 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 1780 4250 50  0001 C CNN
F 3 "~" H 1850 4250 50  0001 C CNN
	1    1850 4250
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5ED7EC96
P 1650 4050
AR Path="/5ED7EC96" Ref="R?"  Part="1" 
AR Path="/5ED4198E/5ED7EC96" Ref="R7"  Part="1" 
F 0 "R7" V 1443 4050 50  0000 C CNN
F 1 "4K7" V 1534 4050 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 1580 4050 50  0001 C CNN
F 3 "~" H 1650 4050 50  0001 C CNN
	1    1650 4050
	0    1    1    0   
$EndComp
Text GLabel 1300 4050 0    50   Input ~ 0
FEEDER6_RX
$Comp
L Transistor_BJT:MMBT3904 Q?
U 1 1 5ED7EC9D
P 2150 4050
AR Path="/5ED7EC9D" Ref="Q?"  Part="1" 
AR Path="/5ED4198E/5ED7EC9D" Ref="Q7"  Part="1" 
F 0 "Q7" H 2341 4096 50  0000 L CNN
F 1 "BC846" H 2341 4005 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 2350 3975 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N3904.pdf" H 2150 4050 50  0001 L CNN
	1    2150 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	1950 4050 1800 4050
Wire Wire Line
	2000 4250 2250 4250
Wire Wire Line
	1300 4050 1450 4050
Wire Wire Line
	2250 3850 2950 3850
Wire Wire Line
	2250 4250 2800 4250
Connection ~ 2250 4250
$Comp
L Device:R R?
U 1 1 5ED7ECA9
P 1850 4750
AR Path="/5ED7ECA9" Ref="R?"  Part="1" 
AR Path="/5ED4198E/5ED7ECA9" Ref="R21"  Part="1" 
F 0 "R21" V 1750 4700 50  0000 L CNN
F 1 "330" V 1950 4700 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 1780 4750 50  0001 C CNN
F 3 "~" H 1850 4750 50  0001 C CNN
	1    1850 4750
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5ED7ECAF
P 1650 4550
AR Path="/5ED7ECAF" Ref="R?"  Part="1" 
AR Path="/5ED4198E/5ED7ECAF" Ref="R8"  Part="1" 
F 0 "R8" V 1443 4550 50  0000 C CNN
F 1 "4K7" V 1534 4550 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 1580 4550 50  0001 C CNN
F 3 "~" H 1650 4550 50  0001 C CNN
	1    1650 4550
	0    1    1    0   
$EndComp
Text GLabel 1300 4550 0    50   Input ~ 0
FEEDER7_RX
$Comp
L Transistor_BJT:MMBT3904 Q?
U 1 1 5ED7ECB6
P 2150 4550
AR Path="/5ED7ECB6" Ref="Q?"  Part="1" 
AR Path="/5ED4198E/5ED7ECB6" Ref="Q8"  Part="1" 
F 0 "Q8" H 2341 4596 50  0000 L CNN
F 1 "BC846" H 2341 4505 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 2350 4475 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N3904.pdf" H 2150 4550 50  0001 L CNN
	1    2150 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	1950 4550 1800 4550
Wire Wire Line
	2000 4750 2250 4750
Wire Wire Line
	1300 4550 1450 4550
Wire Wire Line
	2250 4350 2950 4350
Wire Wire Line
	2250 4750 2800 4750
Connection ~ 2250 4750
$Comp
L Device:R R?
U 1 1 5ED7ECC2
P 1850 5250
AR Path="/5ED7ECC2" Ref="R?"  Part="1" 
AR Path="/5ED4198E/5ED7ECC2" Ref="R22"  Part="1" 
F 0 "R22" V 1750 5200 50  0000 L CNN
F 1 "330" V 1950 5200 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 1780 5250 50  0001 C CNN
F 3 "~" H 1850 5250 50  0001 C CNN
	1    1850 5250
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5ED7ECC8
P 1650 5050
AR Path="/5ED7ECC8" Ref="R?"  Part="1" 
AR Path="/5ED4198E/5ED7ECC8" Ref="R9"  Part="1" 
F 0 "R9" V 1443 5050 50  0000 C CNN
F 1 "4K7" V 1534 5050 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 1580 5050 50  0001 C CNN
F 3 "~" H 1650 5050 50  0001 C CNN
	1    1650 5050
	0    1    1    0   
$EndComp
Text GLabel 1300 5050 0    50   Input ~ 0
FEEDER8_RX
$Comp
L Transistor_BJT:MMBT3904 Q?
U 1 1 5ED7ECCF
P 2150 5050
AR Path="/5ED7ECCF" Ref="Q?"  Part="1" 
AR Path="/5ED4198E/5ED7ECCF" Ref="Q9"  Part="1" 
F 0 "Q9" H 2341 5096 50  0000 L CNN
F 1 "BC846" H 2341 5005 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 2350 4975 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N3904.pdf" H 2150 5050 50  0001 L CNN
	1    2150 5050
	1    0    0    -1  
$EndComp
Wire Wire Line
	1950 5050 1800 5050
Wire Wire Line
	2000 5250 2250 5250
Wire Wire Line
	1300 5050 1450 5050
Wire Wire Line
	2250 4850 2950 4850
Wire Wire Line
	2250 5250 2800 5250
Connection ~ 2250 5250
$Comp
L Device:R R?
U 1 1 5ED7ECDB
P 1850 5750
AR Path="/5ED7ECDB" Ref="R?"  Part="1" 
AR Path="/5ED4198E/5ED7ECDB" Ref="R23"  Part="1" 
F 0 "R23" V 1750 5700 50  0000 L CNN
F 1 "330" V 1950 5700 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 1780 5750 50  0001 C CNN
F 3 "~" H 1850 5750 50  0001 C CNN
	1    1850 5750
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5ED7ECE1
P 1650 5550
AR Path="/5ED7ECE1" Ref="R?"  Part="1" 
AR Path="/5ED4198E/5ED7ECE1" Ref="R10"  Part="1" 
F 0 "R10" V 1443 5550 50  0000 C CNN
F 1 "4K7" V 1534 5550 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 1580 5550 50  0001 C CNN
F 3 "~" H 1650 5550 50  0001 C CNN
	1    1650 5550
	0    1    1    0   
$EndComp
Text GLabel 1300 5550 0    50   Input ~ 0
FEEDER9_RX
$Comp
L Transistor_BJT:MMBT3904 Q?
U 1 1 5ED7ECE8
P 2150 5550
AR Path="/5ED7ECE8" Ref="Q?"  Part="1" 
AR Path="/5ED4198E/5ED7ECE8" Ref="Q10"  Part="1" 
F 0 "Q10" H 2341 5596 50  0000 L CNN
F 1 "BC846" H 2341 5505 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 2350 5475 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N3904.pdf" H 2150 5550 50  0001 L CNN
	1    2150 5550
	1    0    0    -1  
$EndComp
Wire Wire Line
	1950 5550 1800 5550
Wire Wire Line
	2000 5750 2250 5750
Wire Wire Line
	1300 5550 1450 5550
Wire Wire Line
	2250 5350 2950 5350
Wire Wire Line
	2250 5750 2800 5750
Connection ~ 2250 5750
$Comp
L Device:R R?
U 1 1 5ED7ECF4
P 1850 6250
AR Path="/5ED7ECF4" Ref="R?"  Part="1" 
AR Path="/5ED4198E/5ED7ECF4" Ref="R24"  Part="1" 
F 0 "R24" V 1750 6200 50  0000 L CNN
F 1 "330" V 1950 6200 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 1780 6250 50  0001 C CNN
F 3 "~" H 1850 6250 50  0001 C CNN
	1    1850 6250
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5ED7ECFA
P 1650 6050
AR Path="/5ED7ECFA" Ref="R?"  Part="1" 
AR Path="/5ED4198E/5ED7ECFA" Ref="R11"  Part="1" 
F 0 "R11" V 1443 6050 50  0000 C CNN
F 1 "4K7" V 1534 6050 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 1580 6050 50  0001 C CNN
F 3 "~" H 1650 6050 50  0001 C CNN
	1    1650 6050
	0    1    1    0   
$EndComp
Text GLabel 1350 6050 0    50   Input ~ 0
FEEDER10_RX
$Comp
L Transistor_BJT:MMBT3904 Q?
U 1 1 5ED7ED01
P 2150 6050
AR Path="/5ED7ED01" Ref="Q?"  Part="1" 
AR Path="/5ED4198E/5ED7ED01" Ref="Q11"  Part="1" 
F 0 "Q11" H 2341 6096 50  0000 L CNN
F 1 "BC846" H 2341 6005 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 2350 5975 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N3904.pdf" H 2150 6050 50  0001 L CNN
	1    2150 6050
	1    0    0    -1  
$EndComp
Wire Wire Line
	1950 6050 1800 6050
Wire Wire Line
	2000 6250 2250 6250
Wire Wire Line
	1350 6050 1450 6050
Wire Wire Line
	2250 5850 2950 5850
Wire Wire Line
	2250 6250 2800 6250
Connection ~ 2250 6250
$Comp
L Device:R R?
U 1 1 5ED7ED0D
P 1850 6750
AR Path="/5ED7ED0D" Ref="R?"  Part="1" 
AR Path="/5ED4198E/5ED7ED0D" Ref="R25"  Part="1" 
F 0 "R25" V 1750 6700 50  0000 L CNN
F 1 "330" V 1950 6700 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 1780 6750 50  0001 C CNN
F 3 "~" H 1850 6750 50  0001 C CNN
	1    1850 6750
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5ED7ED13
P 1650 6550
AR Path="/5ED7ED13" Ref="R?"  Part="1" 
AR Path="/5ED4198E/5ED7ED13" Ref="R12"  Part="1" 
F 0 "R12" V 1443 6550 50  0000 C CNN
F 1 "4K7" V 1534 6550 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 1580 6550 50  0001 C CNN
F 3 "~" H 1650 6550 50  0001 C CNN
	1    1650 6550
	0    1    1    0   
$EndComp
Text GLabel 1350 6550 0    50   Input ~ 0
FEEDER11_RX
$Comp
L Transistor_BJT:MMBT3904 Q?
U 1 1 5ED7ED1A
P 2150 6550
AR Path="/5ED7ED1A" Ref="Q?"  Part="1" 
AR Path="/5ED4198E/5ED7ED1A" Ref="Q12"  Part="1" 
F 0 "Q12" H 2341 6596 50  0000 L CNN
F 1 "BC846" H 2341 6505 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 2350 6475 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N3904.pdf" H 2150 6550 50  0001 L CNN
	1    2150 6550
	1    0    0    -1  
$EndComp
Wire Wire Line
	1950 6550 1800 6550
Wire Wire Line
	2000 6750 2250 6750
Wire Wire Line
	1350 6550 1450 6550
Wire Wire Line
	2250 6350 2950 6350
Wire Wire Line
	2250 6750 2800 6750
Connection ~ 2250 6750
$Comp
L Device:R R?
U 1 1 5ED7ED26
P 1850 7250
AR Path="/5ED7ED26" Ref="R?"  Part="1" 
AR Path="/5ED4198E/5ED7ED26" Ref="R26"  Part="1" 
F 0 "R26" V 1750 7200 50  0000 L CNN
F 1 "330" V 1950 7200 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 1780 7250 50  0001 C CNN
F 3 "~" H 1850 7250 50  0001 C CNN
	1    1850 7250
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5ED7ED2C
P 1650 7050
AR Path="/5ED7ED2C" Ref="R?"  Part="1" 
AR Path="/5ED4198E/5ED7ED2C" Ref="R13"  Part="1" 
F 0 "R13" V 1443 7050 50  0000 C CNN
F 1 "4K7" V 1534 7050 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 1580 7050 50  0001 C CNN
F 3 "~" H 1650 7050 50  0001 C CNN
	1    1650 7050
	0    1    1    0   
$EndComp
Text GLabel 1350 7050 0    50   Input ~ 0
FEEDER12_RX
$Comp
L Transistor_BJT:MMBT3904 Q?
U 1 1 5ED7ED33
P 2150 7050
AR Path="/5ED7ED33" Ref="Q?"  Part="1" 
AR Path="/5ED4198E/5ED7ED33" Ref="Q13"  Part="1" 
F 0 "Q13" H 2341 7096 50  0000 L CNN
F 1 "BC846" H 2341 7005 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 2350 6975 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N3904.pdf" H 2150 7050 50  0001 L CNN
	1    2150 7050
	1    0    0    -1  
$EndComp
Wire Wire Line
	1950 7050 1800 7050
Wire Wire Line
	2000 7250 2250 7250
Wire Wire Line
	1350 7050 1450 7050
Wire Wire Line
	2250 6850 2950 6850
Wire Wire Line
	2250 7250 2800 7250
Connection ~ 2250 7250
$Comp
L Device:R R?
U 1 1 5ED7ED3F
P 4500 4250
AR Path="/5ED7ED3F" Ref="R?"  Part="1" 
AR Path="/5ED4198E/5ED7ED3F" Ref="R34"  Part="1" 
F 0 "R34" V 4400 4200 50  0000 L CNN
F 1 "330" V 4600 4200 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 4430 4250 50  0001 C CNN
F 3 "~" H 4500 4250 50  0001 C CNN
	1    4500 4250
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5ED7ED45
P 4300 4050
AR Path="/5ED7ED45" Ref="R?"  Part="1" 
AR Path="/5ED4198E/5ED7ED45" Ref="R27"  Part="1" 
F 0 "R27" V 4093 4050 50  0000 C CNN
F 1 "4K7" V 4184 4050 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 4230 4050 50  0001 C CNN
F 3 "~" H 4300 4050 50  0001 C CNN
	1    4300 4050
	0    1    1    0   
$EndComp
Text GLabel 3950 4050 0    50   Input ~ 0
FEEDER13_RX
$Comp
L Transistor_BJT:MMBT3904 Q?
U 1 1 5ED7ED4C
P 4800 4050
AR Path="/5ED7ED4C" Ref="Q?"  Part="1" 
AR Path="/5ED4198E/5ED7ED4C" Ref="Q14"  Part="1" 
F 0 "Q14" H 4991 4096 50  0000 L CNN
F 1 "BC846" H 4991 4005 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 5000 3975 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N3904.pdf" H 4800 4050 50  0001 L CNN
	1    4800 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	4600 4050 4450 4050
Wire Wire Line
	4650 4250 4900 4250
Wire Wire Line
	3950 4050 4100 4050
Wire Wire Line
	4900 3850 5600 3850
Wire Wire Line
	4900 4250 5450 4250
Connection ~ 4900 4250
$Comp
L Device:R R?
U 1 1 5ED7ED58
P 4500 4750
AR Path="/5ED7ED58" Ref="R?"  Part="1" 
AR Path="/5ED4198E/5ED7ED58" Ref="R35"  Part="1" 
F 0 "R35" V 4400 4700 50  0000 L CNN
F 1 "330" V 4600 4700 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 4430 4750 50  0001 C CNN
F 3 "~" H 4500 4750 50  0001 C CNN
	1    4500 4750
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5ED7ED5E
P 4300 4550
AR Path="/5ED7ED5E" Ref="R?"  Part="1" 
AR Path="/5ED4198E/5ED7ED5E" Ref="R28"  Part="1" 
F 0 "R28" V 4093 4550 50  0000 C CNN
F 1 "4K7" V 4184 4550 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 4230 4550 50  0001 C CNN
F 3 "~" H 4300 4550 50  0001 C CNN
	1    4300 4550
	0    1    1    0   
$EndComp
Text GLabel 3950 4550 0    50   Input ~ 0
FEEDER14_RX
$Comp
L Transistor_BJT:MMBT3904 Q?
U 1 1 5ED7ED65
P 4800 4550
AR Path="/5ED7ED65" Ref="Q?"  Part="1" 
AR Path="/5ED4198E/5ED7ED65" Ref="Q15"  Part="1" 
F 0 "Q15" H 4991 4596 50  0000 L CNN
F 1 "BC846" H 4991 4505 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 5000 4475 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N3904.pdf" H 4800 4550 50  0001 L CNN
	1    4800 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	4600 4550 4450 4550
Wire Wire Line
	4650 4750 4900 4750
Wire Wire Line
	3950 4550 4100 4550
Wire Wire Line
	4900 4350 5600 4350
Wire Wire Line
	4900 4750 5450 4750
Connection ~ 4900 4750
$Comp
L Device:R R?
U 1 1 5ED7ED71
P 4500 5250
AR Path="/5ED7ED71" Ref="R?"  Part="1" 
AR Path="/5ED4198E/5ED7ED71" Ref="R36"  Part="1" 
F 0 "R36" V 4400 5200 50  0000 L CNN
F 1 "330" V 4600 5200 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 4430 5250 50  0001 C CNN
F 3 "~" H 4500 5250 50  0001 C CNN
	1    4500 5250
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5ED7ED77
P 4300 5050
AR Path="/5ED7ED77" Ref="R?"  Part="1" 
AR Path="/5ED4198E/5ED7ED77" Ref="R29"  Part="1" 
F 0 "R29" V 4093 5050 50  0000 C CNN
F 1 "4K7" V 4184 5050 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 4230 5050 50  0001 C CNN
F 3 "~" H 4300 5050 50  0001 C CNN
	1    4300 5050
	0    1    1    0   
$EndComp
Text GLabel 3950 5050 0    50   Input ~ 0
FEEDER15_RX
$Comp
L Transistor_BJT:MMBT3904 Q?
U 1 1 5ED7ED7E
P 4800 5050
AR Path="/5ED7ED7E" Ref="Q?"  Part="1" 
AR Path="/5ED4198E/5ED7ED7E" Ref="Q16"  Part="1" 
F 0 "Q16" H 4991 5096 50  0000 L CNN
F 1 "BC846" H 4991 5005 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 5000 4975 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N3904.pdf" H 4800 5050 50  0001 L CNN
	1    4800 5050
	1    0    0    -1  
$EndComp
Wire Wire Line
	4600 5050 4450 5050
Wire Wire Line
	4650 5250 4900 5250
Wire Wire Line
	3950 5050 4100 5050
Wire Wire Line
	4900 4850 5600 4850
Wire Wire Line
	4900 5250 5450 5250
Connection ~ 4900 5250
$Comp
L Device:R R?
U 1 1 5ED7ED8A
P 4500 5750
AR Path="/5ED7ED8A" Ref="R?"  Part="1" 
AR Path="/5ED4198E/5ED7ED8A" Ref="R37"  Part="1" 
F 0 "R37" V 4400 5700 50  0000 L CNN
F 1 "330" V 4600 5700 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 4430 5750 50  0001 C CNN
F 3 "~" H 4500 5750 50  0001 C CNN
	1    4500 5750
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5ED7ED90
P 4300 5550
AR Path="/5ED7ED90" Ref="R?"  Part="1" 
AR Path="/5ED4198E/5ED7ED90" Ref="R30"  Part="1" 
F 0 "R30" V 4093 5550 50  0000 C CNN
F 1 "4K7" V 4184 5550 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 4230 5550 50  0001 C CNN
F 3 "~" H 4300 5550 50  0001 C CNN
	1    4300 5550
	0    1    1    0   
$EndComp
Text GLabel 3950 5550 0    50   Input ~ 0
FEEDER16_RX
$Comp
L Transistor_BJT:MMBT3904 Q?
U 1 1 5ED7ED97
P 4800 5550
AR Path="/5ED7ED97" Ref="Q?"  Part="1" 
AR Path="/5ED4198E/5ED7ED97" Ref="Q17"  Part="1" 
F 0 "Q17" H 4991 5596 50  0000 L CNN
F 1 "BC846" H 4991 5505 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 5000 5475 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N3904.pdf" H 4800 5550 50  0001 L CNN
	1    4800 5550
	1    0    0    -1  
$EndComp
Wire Wire Line
	4600 5550 4450 5550
Wire Wire Line
	4650 5750 4900 5750
Wire Wire Line
	3950 5550 4100 5550
Wire Wire Line
	4900 5350 5600 5350
Wire Wire Line
	4900 5750 5450 5750
Connection ~ 4900 5750
$Comp
L Device:R R?
U 1 1 5ED7EDA3
P 4500 6250
AR Path="/5ED7EDA3" Ref="R?"  Part="1" 
AR Path="/5ED4198E/5ED7EDA3" Ref="R38"  Part="1" 
F 0 "R38" V 4400 6200 50  0000 L CNN
F 1 "330" V 4600 6200 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 4430 6250 50  0001 C CNN
F 3 "~" H 4500 6250 50  0001 C CNN
	1    4500 6250
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5ED7EDA9
P 4300 6050
AR Path="/5ED7EDA9" Ref="R?"  Part="1" 
AR Path="/5ED4198E/5ED7EDA9" Ref="R31"  Part="1" 
F 0 "R31" V 4093 6050 50  0000 C CNN
F 1 "4K7" V 4184 6050 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 4230 6050 50  0001 C CNN
F 3 "~" H 4300 6050 50  0001 C CNN
	1    4300 6050
	0    1    1    0   
$EndComp
Text GLabel 3950 6050 0    50   Input ~ 0
FEEDER17_RX
$Comp
L Transistor_BJT:MMBT3904 Q?
U 1 1 5ED7EDB0
P 4800 6050
AR Path="/5ED7EDB0" Ref="Q?"  Part="1" 
AR Path="/5ED4198E/5ED7EDB0" Ref="Q18"  Part="1" 
F 0 "Q18" H 4991 6096 50  0000 L CNN
F 1 "BC846" H 4991 6005 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 5000 5975 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N3904.pdf" H 4800 6050 50  0001 L CNN
	1    4800 6050
	1    0    0    -1  
$EndComp
Wire Wire Line
	4600 6050 4450 6050
Wire Wire Line
	4650 6250 4900 6250
Wire Wire Line
	3950 6050 4100 6050
Wire Wire Line
	4900 5850 5600 5850
Wire Wire Line
	4900 6250 5450 6250
Connection ~ 4900 6250
$Comp
L Device:R R?
U 1 1 5ED7EDBC
P 4500 6750
AR Path="/5ED7EDBC" Ref="R?"  Part="1" 
AR Path="/5ED4198E/5ED7EDBC" Ref="R39"  Part="1" 
F 0 "R39" V 4400 6700 50  0000 L CNN
F 1 "330" V 4600 6700 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 4430 6750 50  0001 C CNN
F 3 "~" H 4500 6750 50  0001 C CNN
	1    4500 6750
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5ED7EDC2
P 4300 6550
AR Path="/5ED7EDC2" Ref="R?"  Part="1" 
AR Path="/5ED4198E/5ED7EDC2" Ref="R32"  Part="1" 
F 0 "R32" V 4093 6550 50  0000 C CNN
F 1 "4K7" V 4184 6550 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 4230 6550 50  0001 C CNN
F 3 "~" H 4300 6550 50  0001 C CNN
	1    4300 6550
	0    1    1    0   
$EndComp
Text GLabel 3950 6550 0    50   Input ~ 0
FEEDER18_RX
$Comp
L Transistor_BJT:MMBT3904 Q?
U 1 1 5ED7EDC9
P 4800 6550
AR Path="/5ED7EDC9" Ref="Q?"  Part="1" 
AR Path="/5ED4198E/5ED7EDC9" Ref="Q19"  Part="1" 
F 0 "Q19" H 4991 6596 50  0000 L CNN
F 1 "BC846" H 4991 6505 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 5000 6475 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N3904.pdf" H 4800 6550 50  0001 L CNN
	1    4800 6550
	1    0    0    -1  
$EndComp
Wire Wire Line
	4600 6550 4450 6550
Wire Wire Line
	4650 6750 4900 6750
Wire Wire Line
	3950 6550 4100 6550
Wire Wire Line
	4900 6350 5600 6350
Wire Wire Line
	4900 6750 5450 6750
Connection ~ 4900 6750
$Comp
L Device:R R?
U 1 1 5ED7EDD5
P 4500 7250
AR Path="/5ED7EDD5" Ref="R?"  Part="1" 
AR Path="/5ED4198E/5ED7EDD5" Ref="R40"  Part="1" 
F 0 "R40" V 4400 7200 50  0000 L CNN
F 1 "330" V 4600 7200 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 4430 7250 50  0001 C CNN
F 3 "~" H 4500 7250 50  0001 C CNN
	1    4500 7250
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5ED7EDDB
P 4300 7050
AR Path="/5ED7EDDB" Ref="R?"  Part="1" 
AR Path="/5ED4198E/5ED7EDDB" Ref="R33"  Part="1" 
F 0 "R33" V 4093 7050 50  0000 C CNN
F 1 "4K7" V 4184 7050 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 4230 7050 50  0001 C CNN
F 3 "~" H 4300 7050 50  0001 C CNN
	1    4300 7050
	0    1    1    0   
$EndComp
Text GLabel 3950 7050 0    50   Input ~ 0
FEEDER19_RX
$Comp
L Transistor_BJT:MMBT3904 Q?
U 1 1 5ED7EDE2
P 4800 7050
AR Path="/5ED7EDE2" Ref="Q?"  Part="1" 
AR Path="/5ED4198E/5ED7EDE2" Ref="Q20"  Part="1" 
F 0 "Q20" H 4991 7096 50  0000 L CNN
F 1 "BC846" H 4991 7005 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 5000 6975 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N3904.pdf" H 4800 7050 50  0001 L CNN
	1    4800 7050
	1    0    0    -1  
$EndComp
Wire Wire Line
	4600 7050 4450 7050
Wire Wire Line
	4650 7250 4900 7250
Wire Wire Line
	3950 7050 4100 7050
Wire Wire Line
	4900 6850 5600 6850
Wire Wire Line
	4900 7250 5450 7250
Connection ~ 4900 7250
$Comp
L power:GND #PWR?
U 1 1 5ED7EDEE
P 5450 7400
AR Path="/5ED7EDEE" Ref="#PWR?"  Part="1" 
AR Path="/5ED4198E/5ED7EDEE" Ref="#PWR0106"  Part="1" 
F 0 "#PWR0106" H 5450 7150 50  0001 C CNN
F 1 "GND" H 5455 7227 50  0000 C CNN
F 2 "" H 5450 7400 50  0001 C CNN
F 3 "" H 5450 7400 50  0001 C CNN
	1    5450 7400
	1    0    0    -1  
$EndComp
Wire Wire Line
	5450 7250 5450 7400
Wire Wire Line
	5450 7250 5450 6750
Connection ~ 5450 7250
Connection ~ 5450 4750
Wire Wire Line
	5450 4750 5450 4250
Connection ~ 5450 5250
Wire Wire Line
	5450 5250 5450 4750
Connection ~ 5450 5750
Wire Wire Line
	5450 5750 5450 5250
Connection ~ 5450 6250
Wire Wire Line
	5450 6250 5450 5750
Connection ~ 5450 6750
Wire Wire Line
	5450 6750 5450 6250
Wire Wire Line
	2800 7250 2800 6750
Connection ~ 2800 7250
Connection ~ 2800 1750
Connection ~ 2800 2250
Wire Wire Line
	2800 2250 2800 1750
Connection ~ 2800 2750
Wire Wire Line
	2800 2750 2800 2250
Connection ~ 2800 3250
Wire Wire Line
	2800 3250 2800 2750
Connection ~ 2800 3750
Wire Wire Line
	2800 3750 2800 3250
Connection ~ 2800 4250
Wire Wire Line
	2800 4250 2800 3750
Connection ~ 2800 4750
Wire Wire Line
	2800 4750 2800 4250
Connection ~ 2800 5250
Wire Wire Line
	2800 5250 2800 4750
Connection ~ 2800 5750
Wire Wire Line
	2800 5750 2800 5250
Connection ~ 2800 6250
Wire Wire Line
	2800 6250 2800 5750
Connection ~ 2800 6750
Wire Wire Line
	2800 6750 2800 6250
Connection ~ 2950 1850
Connection ~ 2950 2350
Wire Wire Line
	2950 2350 2950 1850
Connection ~ 2950 2850
Wire Wire Line
	2950 2850 2950 2350
Connection ~ 2950 3350
Wire Wire Line
	2950 3350 2950 2850
Connection ~ 2950 3850
Wire Wire Line
	2950 3850 2950 3350
Connection ~ 2950 4350
Wire Wire Line
	2950 4350 2950 3850
Connection ~ 2950 4850
Wire Wire Line
	2950 4850 2950 4350
Connection ~ 2950 5350
Wire Wire Line
	2950 5350 2950 4850
Connection ~ 2950 5850
Wire Wire Line
	2950 5850 2950 5350
Connection ~ 2950 6350
Wire Wire Line
	2950 6350 2950 5850
Connection ~ 2950 850 
Wire Wire Line
	5600 6850 5600 6350
Connection ~ 5600 3850
Connection ~ 5600 4350
Wire Wire Line
	5600 4350 5600 3850
Connection ~ 5600 4850
Wire Wire Line
	5600 4850 5600 4350
Connection ~ 5600 5350
Wire Wire Line
	5600 5350 5600 4850
Connection ~ 5600 5850
Wire Wire Line
	5600 5850 5600 5350
Connection ~ 5600 6350
Wire Wire Line
	5600 6350 5600 5850
Text Label 5300 3850 0    50   ~ 0
RX
Text Label 3100 850  0    50   ~ 0
RX
Wire Wire Line
	4350 4250 4100 4250
Wire Wire Line
	4100 4250 4100 4050
Connection ~ 4100 4050
Wire Wire Line
	4100 4050 4150 4050
Wire Wire Line
	4350 4750 4100 4750
Wire Wire Line
	4100 4750 4100 4550
Connection ~ 4100 4550
Wire Wire Line
	4100 4550 4150 4550
Wire Wire Line
	4350 5250 4100 5250
Wire Wire Line
	4100 5250 4100 5050
Connection ~ 4100 5050
Wire Wire Line
	4100 5050 4150 5050
Wire Wire Line
	4350 5750 4100 5750
Wire Wire Line
	4100 5750 4100 5550
Connection ~ 4100 5550
Wire Wire Line
	4100 5550 4150 5550
Wire Wire Line
	4350 6250 4100 6250
Wire Wire Line
	4100 6250 4100 6050
Connection ~ 4100 6050
Wire Wire Line
	4100 6050 4150 6050
Wire Wire Line
	4350 6750 4100 6750
Wire Wire Line
	4100 6750 4100 6550
Connection ~ 4100 6550
Wire Wire Line
	4100 6550 4150 6550
Wire Wire Line
	4350 7250 4100 7250
Wire Wire Line
	4100 7250 4100 7050
Connection ~ 4100 7050
Wire Wire Line
	4100 7050 4150 7050
Wire Wire Line
	1700 1250 1450 1250
Wire Wire Line
	1450 1250 1450 1050
Connection ~ 1450 1050
Wire Wire Line
	1450 1050 1500 1050
Wire Wire Line
	1700 1750 1450 1750
Wire Wire Line
	1450 1750 1450 1550
Connection ~ 1450 1550
Wire Wire Line
	1450 1550 1500 1550
Wire Wire Line
	1700 2250 1450 2250
Wire Wire Line
	1450 2250 1450 2050
Connection ~ 1450 2050
Wire Wire Line
	1450 2050 1500 2050
Wire Wire Line
	1700 2750 1450 2750
Wire Wire Line
	1450 2750 1450 2550
Connection ~ 1450 2550
Wire Wire Line
	1450 2550 1500 2550
Wire Wire Line
	1700 3250 1450 3250
Wire Wire Line
	1450 3250 1450 3050
Connection ~ 1450 3050
Wire Wire Line
	1450 3050 1500 3050
Wire Wire Line
	1700 3750 1450 3750
Wire Wire Line
	1450 3750 1450 3550
Connection ~ 1450 3550
Wire Wire Line
	1450 3550 1500 3550
Wire Wire Line
	1700 4250 1450 4250
Wire Wire Line
	1450 4250 1450 4050
Connection ~ 1450 4050
Wire Wire Line
	1450 4050 1500 4050
Wire Wire Line
	1700 4750 1450 4750
Wire Wire Line
	1450 4750 1450 4550
Connection ~ 1450 4550
Wire Wire Line
	1450 4550 1500 4550
Wire Wire Line
	1700 5250 1450 5250
Wire Wire Line
	1450 5250 1450 5050
Connection ~ 1450 5050
Wire Wire Line
	1450 5050 1500 5050
Wire Wire Line
	1700 5750 1450 5750
Wire Wire Line
	1450 5750 1450 5550
Connection ~ 1450 5550
Wire Wire Line
	1450 5550 1500 5550
Wire Wire Line
	1450 6250 1450 6050
Connection ~ 1450 6050
Wire Wire Line
	1450 6050 1500 6050
Wire Wire Line
	1700 6750 1450 6750
Wire Wire Line
	1450 6750 1450 6550
Connection ~ 1450 6550
Wire Wire Line
	1450 6550 1500 6550
Wire Wire Line
	1700 7250 1450 7250
Wire Wire Line
	1450 7250 1450 7050
Connection ~ 1450 7050
Wire Wire Line
	1450 7050 1500 7050
Wire Wire Line
	1450 6250 1700 6250
Wire Wire Line
	2250 850  2950 850 
Wire Wire Line
	2950 850  2950 1350
Wire Wire Line
	2800 1250 2800 1750
Wire Wire Line
	2250 1350 2950 1350
Connection ~ 2950 1350
Wire Wire Line
	2950 1350 2950 1850
Wire Wire Line
	2950 6350 2950 6850
Wire Wire Line
	2950 850  5600 850 
Wire Wire Line
	5600 850  5600 3850
$Comp
L Device:R R?
U 1 1 5E906D48
P 8050 2750
AR Path="/5E906D48" Ref="R?"  Part="1" 
AR Path="/5ED4198E/5E906D48" Ref="R41"  Part="1" 
F 0 "R41" H 8120 2796 50  0000 L CNN
F 1 "2K2" H 8120 2705 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 7980 2750 50  0001 C CNN
F 3 "~" H 8050 2750 50  0001 C CNN
	1    8050 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	8050 2550 8050 2600
Wire Wire Line
	8200 3300 7800 3300
Text Label 7850 3300 0    50   ~ 0
F0_TX
Wire Wire Line
	8200 3400 7800 3400
Text Label 7850 3400 0    50   ~ 0
F2_TX
Wire Wire Line
	8200 3500 7800 3500
Text Label 7850 3500 0    50   ~ 0
F4_TX
Wire Wire Line
	8200 3600 7800 3600
Text Label 7850 3600 0    50   ~ 0
F6_TX
Wire Wire Line
	8200 3700 7800 3700
Text Label 7850 3700 0    50   ~ 0
F8_TX
Wire Wire Line
	8200 3800 7800 3800
Text Label 7850 3800 0    50   ~ 0
F10_TX
Wire Wire Line
	8200 3900 7800 3900
Text Label 7850 3900 0    50   ~ 0
F12_TX
Wire Wire Line
	8200 4000 7800 4000
Text Label 7850 4000 0    50   ~ 0
F14_TX
Wire Wire Line
	8200 4100 7800 4100
Text Label 7850 4100 0    50   ~ 0
F16_TX
Wire Wire Line
	8200 4200 7800 4200
Text Label 7850 4200 0    50   ~ 0
F18_TX
Wire Wire Line
	8200 4300 7800 4300
Text Label 7850 4300 0    50   ~ 0
F19_TX
Wire Wire Line
	8200 4400 7800 4400
Text Label 7850 4400 0    50   ~ 0
F17_TX
Wire Wire Line
	6800 3700 6400 3700
Text Label 6450 3700 0    50   ~ 0
F15_TX
Wire Wire Line
	6800 3800 6400 3800
Text Label 6450 3800 0    50   ~ 0
F13_TX
Wire Wire Line
	6800 3900 6400 3900
Text Label 6450 3900 0    50   ~ 0
F11_TX
Wire Wire Line
	6800 4000 6400 4000
Text Label 6450 4000 0    50   ~ 0
F9_TX
Wire Wire Line
	6800 4100 6400 4100
Text Label 6450 4100 0    50   ~ 0
F7_TX
Wire Wire Line
	6800 4200 6400 4200
Text Label 6450 4200 0    50   ~ 0
F5_TX
Wire Wire Line
	6800 4300 6400 4300
Text Label 6450 4300 0    50   ~ 0
F3_TX
Wire Wire Line
	6800 4400 6400 4400
Text Label 6450 4400 0    50   ~ 0
F1_TX
Text Label 8250 3100 0    50   ~ 0
RX
Wire Wire Line
	8200 3200 7800 3200
Text Label 7850 3200 0    50   ~ 0
DEBUG
$Comp
L power:GND #PWR?
U 1 1 5E906D7A
P 7300 4950
AR Path="/5E906D7A" Ref="#PWR?"  Part="1" 
AR Path="/5ED4198E/5E906D7A" Ref="#PWR04"  Part="1" 
F 0 "#PWR04" H 7300 4700 50  0001 C CNN
F 1 "GND" H 7305 4777 50  0000 C CNN
F 2 "" H 7300 4950 50  0001 C CNN
F 3 "" H 7300 4950 50  0001 C CNN
	1    7300 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	7200 4700 7200 4850
Wire Wire Line
	7200 4850 7300 4850
Connection ~ 7300 4850
Wire Wire Line
	7300 4850 7300 4950
Wire Wire Line
	8050 2900 8050 3100
Connection ~ 8050 3100
Wire Wire Line
	8050 3100 7800 3100
Wire Wire Line
	7100 2700 7100 2550
Wire Wire Line
	7100 2550 8050 2550
Wire Wire Line
	7300 4700 7300 4850
NoConn ~ 6800 3500
NoConn ~ 6800 3200
NoConn ~ 6800 3100
NoConn ~ 7200 2700
NoConn ~ 7400 2700
Wire Wire Line
	8050 3100 8400 3100
Text GLabel 10000 1750 2    50   Output ~ 0
F0_TX
Wire Wire Line
	10000 1750 9600 1750
Text Label 9650 1750 0    50   ~ 0
F0_TX
Text GLabel 10000 1900 2    50   Output ~ 0
F1_TX
Wire Wire Line
	10000 1900 9600 1900
Text Label 9650 1900 0    50   ~ 0
F1_TX
Text GLabel 10000 2050 2    50   Output ~ 0
F2_TX
Wire Wire Line
	10000 2050 9600 2050
Text Label 9650 2050 0    50   ~ 0
F2_TX
Text GLabel 10000 2200 2    50   Output ~ 0
F3_TX
Wire Wire Line
	10000 2200 9600 2200
Text Label 9650 2200 0    50   ~ 0
F3_TX
Text GLabel 10000 2350 2    50   Output ~ 0
F4_TX
Wire Wire Line
	10000 2350 9600 2350
Text Label 9650 2350 0    50   ~ 0
F4_TX
Text GLabel 10000 2500 2    50   Output ~ 0
F5_TX
Wire Wire Line
	10000 2500 9600 2500
Text Label 9650 2500 0    50   ~ 0
F5_TX
Text GLabel 10000 2650 2    50   Output ~ 0
F6_TX
Wire Wire Line
	10000 2650 9600 2650
Text Label 9650 2650 0    50   ~ 0
F6_TX
Text GLabel 10000 2800 2    50   Output ~ 0
F7_TX
Wire Wire Line
	10000 2800 9600 2800
Text Label 9650 2800 0    50   ~ 0
F7_TX
Text GLabel 10000 2950 2    50   Output ~ 0
F8_TX
Wire Wire Line
	10000 2950 9600 2950
Text Label 9650 2950 0    50   ~ 0
F8_TX
Text GLabel 10000 3100 2    50   Output ~ 0
F9_TX
Wire Wire Line
	10000 3100 9600 3100
Text Label 9650 3100 0    50   ~ 0
F9_TX
Text GLabel 10000 3250 2    50   Output ~ 0
F10_TX
Wire Wire Line
	10000 3250 9600 3250
Text Label 9650 3250 0    50   ~ 0
F10_TX
Text GLabel 10000 3400 2    50   Output ~ 0
F11_TX
Wire Wire Line
	10000 3400 9600 3400
Text Label 9650 3400 0    50   ~ 0
F11_TX
Text GLabel 10000 3550 2    50   Output ~ 0
F12_TX
Wire Wire Line
	10000 3550 9600 3550
Text Label 9650 3550 0    50   ~ 0
F12_TX
Text GLabel 10000 3700 2    50   Output ~ 0
F13_TX
Wire Wire Line
	10000 3700 9600 3700
Text Label 9650 3700 0    50   ~ 0
F13_TX
Text GLabel 10000 3850 2    50   Output ~ 0
F14_TX
Wire Wire Line
	10000 3850 9600 3850
Text Label 9650 3850 0    50   ~ 0
F14_TX
Text GLabel 10000 4000 2    50   Output ~ 0
F15_TX
Wire Wire Line
	10000 4000 9600 4000
Text Label 9650 4000 0    50   ~ 0
F15_TX
Text GLabel 10000 4150 2    50   Output ~ 0
F16_TX
Wire Wire Line
	10000 4150 9600 4150
Text Label 9650 4150 0    50   ~ 0
F16_TX
Text GLabel 10000 4300 2    50   Output ~ 0
F17_TX
Wire Wire Line
	10000 4300 9600 4300
Text Label 9650 4300 0    50   ~ 0
F17_TX
Text GLabel 10000 4450 2    50   Output ~ 0
F18_TX
Wire Wire Line
	10000 4450 9600 4450
Text Label 9650 4450 0    50   ~ 0
F18_TX
Text GLabel 10000 4600 2    50   Output ~ 0
F19_TX
Wire Wire Line
	10000 4600 9600 4600
Text Label 9650 4600 0    50   ~ 0
F19_TX
$Comp
L Arduino_Nano_33:Arduino_Nano_Every A1
U 1 1 5E55C120
P 7300 3700
F 0 "A1" H 6650 2700 50  0000 C CNN
F 1 "Arduino_Nano_Every" H 6550 2600 50  0000 C CNN
F 2 "Arduino_Nano_33:NANO_33_Footprint_SMD_Castell" H 7300 3700 50  0001 C CIN
F 3 "https://www.arduino.cc/en/uploads/Main/ArduinoNanoManual23.pdf" H 7300 3700 50  0001 C CNN
	1    7300 3700
	-1   0    0    -1  
$EndComp
$EndSCHEMATC
