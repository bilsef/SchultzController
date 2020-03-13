EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 4
Title "Siplace S Feeder Controller"
Date "2020-01-18"
Rev "0.1"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Wire Wire Line
	9100 1500 9950 1500
Text GLabel 9950 1500 2    50   Output ~ 0
FEEDER1_TX
Wire Wire Line
	9100 2000 9950 2000
Text GLabel 9950 2000 2    50   Output ~ 0
FEEDER3_TX
Wire Wire Line
	9100 2500 9950 2500
Text GLabel 9950 2500 2    50   Output ~ 0
FEEDER5_TX
Wire Wire Line
	9100 3000 9950 3000
Text GLabel 9950 3000 2    50   Output ~ 0
FEEDER7_TX
Wire Wire Line
	9100 3500 9950 3500
Text GLabel 9950 3500 2    50   Output ~ 0
FEEDER9_TX
Wire Wire Line
	9100 4000 9900 4000
Text GLabel 9900 4000 2    50   Output ~ 0
FEEDER11_TX
Text GLabel 9900 4500 2    50   Output ~ 0
FEEDER13_TX
Text GLabel 9900 5000 2    50   Output ~ 0
FEEDER15_TX
Text GLabel 9900 5500 2    50   Output ~ 0
FEEDER17_TX
Text GLabel 9900 6000 2    50   Output ~ 0
FEEDER19_TX
Wire Wire Line
	9100 6000 9900 6000
Wire Wire Line
	9100 5000 9900 5000
Wire Wire Line
	9100 4500 9900 4500
$Comp
L power:GND #PWR?
U 1 1 5E345CBD
P 2800 6250
AR Path="/5E345CBD" Ref="#PWR?"  Part="1" 
AR Path="/5ED4198E/5E345CBD" Ref="#PWR?"  Part="1" 
AR Path="/5E2A746E/5E345CBD" Ref="#PWR02"  Part="1" 
F 0 "#PWR02" H 2800 6000 50  0001 C CNN
F 1 "GND" H 2805 6077 50  0000 C CNN
F 2 "" H 2800 6250 50  0001 C CNN
F 3 "" H 2800 6250 50  0001 C CNN
	1    2800 6250
	1    0    0    -1  
$EndComp
Wire Wire Line
	2800 6250 2800 6200
Wire Wire Line
	2250 6200 2800 6200
Connection ~ 2800 6200
Wire Wire Line
	2800 1700 2250 1700
Wire Wire Line
	2800 1700 2800 2200
Wire Wire Line
	2250 2200 2800 2200
Connection ~ 2800 2200
Wire Wire Line
	2800 2200 2800 2700
Wire Wire Line
	2250 2700 2800 2700
Connection ~ 2800 2700
Wire Wire Line
	2800 2700 2800 3200
Wire Wire Line
	2250 3200 2800 3200
Connection ~ 2800 3200
Wire Wire Line
	2800 3200 2800 3700
Wire Wire Line
	2250 3700 2800 3700
Connection ~ 2800 3700
Wire Wire Line
	2800 3700 2800 4200
Wire Wire Line
	2250 4200 2800 4200
Connection ~ 2800 4200
Wire Wire Line
	2800 4200 2800 4700
Wire Wire Line
	2250 4700 2800 4700
Connection ~ 2800 4700
Wire Wire Line
	2800 4700 2800 5200
Wire Wire Line
	2250 5200 2800 5200
Connection ~ 2800 5200
Wire Wire Line
	2800 5200 2800 5700
Wire Wire Line
	2250 5700 2800 5700
Connection ~ 2800 5700
Wire Wire Line
	2800 5700 2800 6200
Wire Wire Line
	7150 1500 7050 1500
Wire Wire Line
	7150 2000 7050 2000
Wire Wire Line
	7150 2500 7050 2500
Wire Wire Line
	7150 3000 7050 3000
Wire Wire Line
	7150 3500 7050 3500
Wire Wire Line
	7150 4000 7100 4000
Wire Wire Line
	7150 4500 7100 4500
Wire Wire Line
	7150 5000 7100 5000
Wire Wire Line
	7150 5500 7100 5500
Wire Wire Line
	7150 6000 7100 6000
$Comp
L Transistor_BJT:BC856 Q60
U 1 1 5E38D90E
P 9000 5800
F 0 "Q60" H 9191 5754 50  0000 L CNN
F 1 "BC856" H 9191 5845 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 9200 5725 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC856.pdf" H 9000 5800 50  0001 L CNN
	1    9000 5800
	1    0    0    1   
$EndComp
Wire Wire Line
	9100 5600 9550 5600
$Comp
L Transistor_BJT:BC856 Q58
U 1 1 5E3A406F
P 9000 4800
F 0 "Q58" H 9191 4754 50  0000 L CNN
F 1 "BC856" H 9191 4845 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 9200 4725 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC856.pdf" H 9000 4800 50  0001 L CNN
	1    9000 4800
	1    0    0    1   
$EndComp
Wire Wire Line
	9100 4600 9550 4600
$Comp
L Transistor_BJT:BC856 Q57
U 1 1 5E3A8C1C
P 9000 4300
F 0 "Q57" H 9191 4254 50  0000 L CNN
F 1 "BC856" H 9191 4345 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 9200 4225 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC856.pdf" H 9000 4300 50  0001 L CNN
	1    9000 4300
	1    0    0    1   
$EndComp
Wire Wire Line
	9100 4100 9550 4100
$Comp
L Transistor_BJT:BC856 Q56
U 1 1 5E3ADD83
P 9000 3800
F 0 "Q56" H 9191 3754 50  0000 L CNN
F 1 "BC856" H 9191 3845 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 9200 3725 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC856.pdf" H 9000 3800 50  0001 L CNN
	1    9000 3800
	1    0    0    1   
$EndComp
Wire Wire Line
	9100 3600 9550 3600
$Comp
L Transistor_BJT:BC856 Q55
U 1 1 5E3B2C1A
P 9000 3300
F 0 "Q55" H 9191 3254 50  0000 L CNN
F 1 "BC856" H 9191 3345 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 9200 3225 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC856.pdf" H 9000 3300 50  0001 L CNN
	1    9000 3300
	1    0    0    1   
$EndComp
Wire Wire Line
	9100 3100 9550 3100
$Comp
L Transistor_BJT:BC856 Q54
U 1 1 5E3B7959
P 9000 2800
F 0 "Q54" H 9191 2754 50  0000 L CNN
F 1 "BC856" H 9191 2845 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 9200 2725 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC856.pdf" H 9000 2800 50  0001 L CNN
	1    9000 2800
	1    0    0    1   
$EndComp
Wire Wire Line
	9100 2600 9550 2600
$Comp
L Transistor_BJT:BC856 Q53
U 1 1 5E3BCA0E
P 9000 2300
F 0 "Q53" H 9191 2254 50  0000 L CNN
F 1 "BC856" H 9191 2345 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 9200 2225 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC856.pdf" H 9000 2300 50  0001 L CNN
	1    9000 2300
	1    0    0    1   
$EndComp
Wire Wire Line
	9100 2100 9550 2100
$Comp
L Transistor_BJT:BC856 Q52
U 1 1 5E3C1C53
P 9000 1800
F 0 "Q52" H 9191 1754 50  0000 L CNN
F 1 "BC856" H 9191 1845 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 9200 1725 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC856.pdf" H 9000 1800 50  0001 L CNN
	1    9000 1800
	1    0    0    1   
$EndComp
Wire Wire Line
	9100 1600 9550 1600
$Comp
L Device:R R83
U 1 1 5E3F0A46
P 8250 1800
F 0 "R83" V 8150 1800 50  0000 C CNN
F 1 "10K" V 8350 1800 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 8180 1800 50  0001 C CNN
F 3 "~" H 8250 1800 50  0001 C CNN
	1    8250 1800
	0    1    1    0   
$EndComp
$Comp
L Device:R R84
U 1 1 5E3F6715
P 8250 2300
F 0 "R84" V 8150 2300 50  0000 C CNN
F 1 "10K" V 8350 2300 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 8180 2300 50  0001 C CNN
F 3 "~" H 8250 2300 50  0001 C CNN
	1    8250 2300
	0    1    1    0   
$EndComp
$Comp
L Device:R R85
U 1 1 5E3FC5F6
P 8250 2800
F 0 "R85" V 8150 2800 50  0000 C CNN
F 1 "10K" V 8350 2800 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 8180 2800 50  0001 C CNN
F 3 "~" H 8250 2800 50  0001 C CNN
	1    8250 2800
	0    1    1    0   
$EndComp
$Comp
L Device:R R86
U 1 1 5E4029CD
P 8250 3300
F 0 "R86" V 8150 3300 50  0000 C CNN
F 1 "10K" V 8350 3300 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 8180 3300 50  0001 C CNN
F 3 "~" H 8250 3300 50  0001 C CNN
	1    8250 3300
	0    1    1    0   
$EndComp
$Comp
L Device:R R87
U 1 1 5E408F4A
P 8250 3800
F 0 "R87" V 8150 3800 50  0000 C CNN
F 1 "10K" V 8350 3800 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 8180 3800 50  0001 C CNN
F 3 "~" H 8250 3800 50  0001 C CNN
	1    8250 3800
	0    1    1    0   
$EndComp
$Comp
L Device:R R88
U 1 1 5E40F725
P 8250 4300
F 0 "R88" V 8150 4300 50  0000 C CNN
F 1 "10K" V 8350 4300 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 8180 4300 50  0001 C CNN
F 3 "~" H 8250 4300 50  0001 C CNN
	1    8250 4300
	0    1    1    0   
$EndComp
$Comp
L Device:R R89
U 1 1 5E416486
P 8250 4800
F 0 "R89" V 8150 4800 50  0000 C CNN
F 1 "10K" V 8350 4800 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 8180 4800 50  0001 C CNN
F 3 "~" H 8250 4800 50  0001 C CNN
	1    8250 4800
	0    1    1    0   
$EndComp
$Comp
L Device:R R91
U 1 1 5E423FDA
P 8250 5800
F 0 "R91" V 8150 5800 50  0000 C CNN
F 1 "10K" V 8350 5800 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 8180 5800 50  0001 C CNN
F 3 "~" H 8250 5800 50  0001 C CNN
	1    8250 5800
	0    1    1    0   
$EndComp
Wire Wire Line
	8800 5800 8500 5800
Wire Wire Line
	9550 5600 9550 5100
Connection ~ 9550 1600
Wire Wire Line
	9550 1600 9550 1100
Connection ~ 9550 2100
Wire Wire Line
	9550 2100 9550 1600
Connection ~ 9550 2600
Wire Wire Line
	9550 2600 9550 2100
Connection ~ 9550 3100
Wire Wire Line
	9550 3100 9550 2600
Connection ~ 9550 3600
Wire Wire Line
	9550 3600 9550 3100
Connection ~ 9550 4100
Wire Wire Line
	9550 4100 9550 3600
Connection ~ 9550 4600
Wire Wire Line
	9550 4600 9550 4100
Connection ~ 9550 5100
Wire Wire Line
	9550 5100 9550 4600
Connection ~ 9100 1600
Connection ~ 9100 2100
Connection ~ 9100 2600
Connection ~ 9100 3100
Connection ~ 9100 3600
Connection ~ 9100 4100
Connection ~ 9100 4600
Connection ~ 9100 5600
Text GLabel 7050 1500 0    50   Input ~ 0
F1_TX
Text GLabel 7050 2000 0    50   Input ~ 0
F3_TX
Text GLabel 7050 2500 0    50   Input ~ 0
F5_TX
Text GLabel 7050 3000 0    50   Input ~ 0
F7_TX
Text GLabel 7050 3500 0    50   Input ~ 0
F9_TX
Text GLabel 7100 4000 0    50   Input ~ 0
F11_TX
Text GLabel 7100 4500 0    50   Input ~ 0
F13_TX
Text GLabel 7100 5000 0    50   Input ~ 0
F15_TX
Text GLabel 7100 5500 0    50   Input ~ 0
F17_TX
Text GLabel 7100 6000 0    50   Input ~ 0
F19_TX
Wire Wire Line
	1950 1500 1850 1500
Wire Wire Line
	1950 2000 1850 2000
Wire Wire Line
	1950 2500 1850 2500
Wire Wire Line
	1950 3000 1850 3000
Wire Wire Line
	1950 3500 1850 3500
Wire Wire Line
	1950 4000 1900 4000
Wire Wire Line
	1950 4500 1900 4500
Wire Wire Line
	1950 5000 1900 5000
Wire Wire Line
	1950 5500 1900 5500
Wire Wire Line
	1950 6000 1900 6000
Text GLabel 1850 1500 0    50   Input ~ 0
F0_TX
Text GLabel 1850 2000 0    50   Input ~ 0
F2_TX
Text GLabel 1850 2500 0    50   Input ~ 0
F4_TX
Text GLabel 1850 3000 0    50   Input ~ 0
F6_TX
Text GLabel 1850 3500 0    50   Input ~ 0
F8_TX
Text GLabel 1900 4000 0    50   Input ~ 0
F10_TX
Text GLabel 1900 4500 0    50   Input ~ 0
F12_TX
Text GLabel 1900 5000 0    50   Input ~ 0
F14_TX
Text GLabel 1900 5500 0    50   Input ~ 0
F16_TX
Text GLabel 1900 6000 0    50   Input ~ 0
F18_TX
Wire Wire Line
	9100 1100 9550 1100
Connection ~ 9100 1100
$Comp
L Transistor_BJT:BC856 Q51
U 1 1 5E3C6F2C
P 9000 1300
F 0 "Q51" H 9191 1254 50  0000 L CNN
F 1 "BC856" H 9191 1345 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 9200 1225 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC856.pdf" H 9000 1300 50  0001 L CNN
	1    9000 1300
	1    0    0    1   
$EndComp
$Comp
L power:+30V #PWR05
U 1 1 5E7AF253
P 9550 1000
F 0 "#PWR05" H 9550 850 50  0001 C CNN
F 1 "+30V" H 9565 1173 50  0000 C CNN
F 2 "" H 9550 1000 50  0001 C CNN
F 3 "" H 9550 1000 50  0001 C CNN
	1    9550 1000
	1    0    0    -1  
$EndComp
Wire Wire Line
	9550 1000 9550 1100
Connection ~ 9550 1100
$Comp
L power:+30V #PWR03
U 1 1 5E7AE356
P 4400 1000
F 0 "#PWR03" H 4400 850 50  0001 C CNN
F 1 "+30V" H 4415 1173 50  0000 C CNN
F 2 "" H 4400 1000 50  0001 C CNN
F 3 "" H 4400 1000 50  0001 C CNN
	1    4400 1000
	1    0    0    -1  
$EndComp
Connection ~ 3950 5600
Connection ~ 3950 5100
Connection ~ 3950 4600
Connection ~ 3950 4100
Connection ~ 3950 3600
Connection ~ 3950 3100
Connection ~ 3950 2600
Connection ~ 3950 2100
Connection ~ 3950 1600
Wire Wire Line
	4400 5100 4400 4600
Connection ~ 4400 5100
Wire Wire Line
	4400 4600 4400 4100
Connection ~ 4400 4600
Wire Wire Line
	4400 4100 4400 3600
Connection ~ 4400 4100
Wire Wire Line
	4400 3600 4400 3100
Connection ~ 4400 3600
Wire Wire Line
	4400 3100 4400 2600
Connection ~ 4400 3100
Wire Wire Line
	4400 2600 4400 2100
Connection ~ 4400 2600
Wire Wire Line
	4400 2100 4400 1600
Connection ~ 4400 2100
Wire Wire Line
	4400 1600 4400 1100
Connection ~ 4400 1600
Wire Wire Line
	4400 1100 4400 1000
Connection ~ 4400 1100
Wire Wire Line
	4400 5600 4400 5100
Wire Wire Line
	3600 5600 3950 5600
Wire Wire Line
	3650 5800 3300 5800
$Comp
L Device:R R61
U 1 1 5E44E68D
P 3050 5800
F 0 "R61" V 2950 5800 50  0000 C CNN
F 1 "10K" V 3150 5800 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 2980 5800 50  0001 C CNN
F 3 "~" H 3050 5800 50  0001 C CNN
	1    3050 5800
	0    1    1    0   
$EndComp
$Comp
L Device:R R71
U 1 1 5E44E687
P 3450 5600
F 0 "R71" V 3350 5600 50  0000 C CNN
F 1 "2K2" V 3550 5600 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 3380 5600 50  0001 C CNN
F 3 "~" H 3450 5600 50  0001 C CNN
	1    3450 5600
	0    1    1    0   
$EndComp
Wire Wire Line
	3600 5100 3950 5100
Wire Wire Line
	3650 5300 3300 5300
$Comp
L Device:R R60
U 1 1 5E44E67D
P 3050 5300
F 0 "R60" V 2950 5300 50  0000 C CNN
F 1 "10K" V 3150 5300 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 2980 5300 50  0001 C CNN
F 3 "~" H 3050 5300 50  0001 C CNN
	1    3050 5300
	0    1    1    0   
$EndComp
$Comp
L Device:R R70
U 1 1 5E44E677
P 3450 5100
F 0 "R70" V 3350 5100 50  0000 C CNN
F 1 "2K2" V 3550 5100 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 3380 5100 50  0001 C CNN
F 3 "~" H 3450 5100 50  0001 C CNN
	1    3450 5100
	0    1    1    0   
$EndComp
Wire Wire Line
	3600 4600 3950 4600
Wire Wire Line
	3650 4800 3300 4800
$Comp
L Device:R R59
U 1 1 5E44E66D
P 3050 4800
F 0 "R59" V 2950 4800 50  0000 C CNN
F 1 "10K" V 3150 4800 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 2980 4800 50  0001 C CNN
F 3 "~" H 3050 4800 50  0001 C CNN
	1    3050 4800
	0    1    1    0   
$EndComp
$Comp
L Device:R R69
U 1 1 5E44E667
P 3450 4600
F 0 "R69" V 3350 4600 50  0000 C CNN
F 1 "2K2" V 3550 4600 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 3380 4600 50  0001 C CNN
F 3 "~" H 3450 4600 50  0001 C CNN
	1    3450 4600
	0    1    1    0   
$EndComp
Wire Wire Line
	3600 4100 3950 4100
Wire Wire Line
	3650 4300 3300 4300
$Comp
L Device:R R58
U 1 1 5E44E65D
P 3050 4300
F 0 "R58" V 2950 4300 50  0000 C CNN
F 1 "10K" V 3150 4300 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 2980 4300 50  0001 C CNN
F 3 "~" H 3050 4300 50  0001 C CNN
	1    3050 4300
	0    1    1    0   
$EndComp
$Comp
L Device:R R68
U 1 1 5E44E657
P 3450 4100
F 0 "R68" V 3350 4100 50  0000 C CNN
F 1 "2K2" V 3550 4100 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 3380 4100 50  0001 C CNN
F 3 "~" H 3450 4100 50  0001 C CNN
	1    3450 4100
	0    1    1    0   
$EndComp
Wire Wire Line
	3600 3600 3950 3600
Wire Wire Line
	3650 3800 3300 3800
$Comp
L Device:R R57
U 1 1 5E44E64D
P 3050 3800
F 0 "R57" V 2950 3800 50  0000 C CNN
F 1 "10K" V 3150 3800 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 2980 3800 50  0001 C CNN
F 3 "~" H 3050 3800 50  0001 C CNN
	1    3050 3800
	0    1    1    0   
$EndComp
$Comp
L Device:R R67
U 1 1 5E44E647
P 3450 3600
F 0 "R67" V 3350 3600 50  0000 C CNN
F 1 "2K2" V 3550 3600 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 3380 3600 50  0001 C CNN
F 3 "~" H 3450 3600 50  0001 C CNN
	1    3450 3600
	0    1    1    0   
$EndComp
Wire Wire Line
	3600 3100 3950 3100
Wire Wire Line
	3650 3300 3300 3300
$Comp
L Device:R R56
U 1 1 5E44E63D
P 3050 3300
F 0 "R56" V 2950 3300 50  0000 C CNN
F 1 "10K" V 3150 3300 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 2980 3300 50  0001 C CNN
F 3 "~" H 3050 3300 50  0001 C CNN
	1    3050 3300
	0    1    1    0   
$EndComp
$Comp
L Device:R R66
U 1 1 5E44E637
P 3450 3100
F 0 "R66" V 3350 3100 50  0000 C CNN
F 1 "2K2" V 3550 3100 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 3380 3100 50  0001 C CNN
F 3 "~" H 3450 3100 50  0001 C CNN
	1    3450 3100
	0    1    1    0   
$EndComp
Wire Wire Line
	3600 2600 3950 2600
Wire Wire Line
	3650 2800 3300 2800
$Comp
L Device:R R55
U 1 1 5E44E62D
P 3050 2800
F 0 "R55" V 2950 2800 50  0000 C CNN
F 1 "10K" V 3150 2800 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 2980 2800 50  0001 C CNN
F 3 "~" H 3050 2800 50  0001 C CNN
	1    3050 2800
	0    1    1    0   
$EndComp
$Comp
L Device:R R65
U 1 1 5E44E627
P 3450 2600
F 0 "R65" V 3350 2600 50  0000 C CNN
F 1 "2K2" V 3550 2600 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 3380 2600 50  0001 C CNN
F 3 "~" H 3450 2600 50  0001 C CNN
	1    3450 2600
	0    1    1    0   
$EndComp
Wire Wire Line
	3600 2100 3950 2100
Wire Wire Line
	3650 2300 3300 2300
$Comp
L Device:R R54
U 1 1 5E44E61D
P 3050 2300
F 0 "R54" V 2950 2300 50  0000 C CNN
F 1 "10K" V 3150 2300 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 2980 2300 50  0001 C CNN
F 3 "~" H 3050 2300 50  0001 C CNN
	1    3050 2300
	0    1    1    0   
$EndComp
$Comp
L Device:R R64
U 1 1 5E44E617
P 3450 2100
F 0 "R64" V 3350 2100 50  0000 C CNN
F 1 "2K2" V 3550 2100 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 3380 2100 50  0001 C CNN
F 3 "~" H 3450 2100 50  0001 C CNN
	1    3450 2100
	0    1    1    0   
$EndComp
Wire Wire Line
	3600 1600 3950 1600
Wire Wire Line
	3650 1800 3300 1800
$Comp
L Device:R R53
U 1 1 5E44E60D
P 3050 1800
F 0 "R53" V 2950 1800 50  0000 C CNN
F 1 "10K" V 3150 1800 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 2980 1800 50  0001 C CNN
F 3 "~" H 3050 1800 50  0001 C CNN
	1    3050 1800
	0    1    1    0   
$EndComp
$Comp
L Device:R R63
U 1 1 5E44E607
P 3450 1600
F 0 "R63" V 3350 1600 50  0000 C CNN
F 1 "2K2" V 3550 1600 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 3380 1600 50  0001 C CNN
F 3 "~" H 3450 1600 50  0001 C CNN
	1    3450 1600
	0    1    1    0   
$EndComp
Connection ~ 3950 1100
Wire Wire Line
	3650 1300 3300 1300
$Comp
L Device:R R52
U 1 1 5E44E5FC
P 3050 1300
F 0 "R52" V 2950 1300 50  0000 C CNN
F 1 "10K" V 3150 1300 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 2980 1300 50  0001 C CNN
F 3 "~" H 3050 1300 50  0001 C CNN
	1    3050 1300
	0    1    1    0   
$EndComp
Wire Wire Line
	3950 1100 4400 1100
$Comp
L Transistor_BJT:BC856 Q31
U 1 1 5E44E5EF
P 3850 1300
F 0 "Q31" H 4041 1254 50  0000 L CNN
F 1 "BC856" H 4041 1345 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 4050 1225 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC856.pdf" H 3850 1300 50  0001 L CNN
	1    3850 1300
	1    0    0    1   
$EndComp
Wire Wire Line
	3950 1600 4400 1600
$Comp
L Transistor_BJT:BC856 Q32
U 1 1 5E44E5E8
P 3850 1800
F 0 "Q32" H 4041 1754 50  0000 L CNN
F 1 "BC856" H 4041 1845 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 4050 1725 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC856.pdf" H 3850 1800 50  0001 L CNN
	1    3850 1800
	1    0    0    1   
$EndComp
Wire Wire Line
	3950 2100 4400 2100
$Comp
L Transistor_BJT:BC856 Q33
U 1 1 5E44E5E1
P 3850 2300
F 0 "Q33" H 4041 2254 50  0000 L CNN
F 1 "BC856" H 4041 2345 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 4050 2225 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC856.pdf" H 3850 2300 50  0001 L CNN
	1    3850 2300
	1    0    0    1   
$EndComp
Wire Wire Line
	3950 2600 4400 2600
$Comp
L Transistor_BJT:BC856 Q34
U 1 1 5E44E5DA
P 3850 2800
F 0 "Q34" H 4041 2754 50  0000 L CNN
F 1 "BC856" H 4041 2845 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 4050 2725 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC856.pdf" H 3850 2800 50  0001 L CNN
	1    3850 2800
	1    0    0    1   
$EndComp
Wire Wire Line
	3950 3100 4400 3100
$Comp
L Transistor_BJT:BC856 Q35
U 1 1 5E44E5D3
P 3850 3300
F 0 "Q35" H 4041 3254 50  0000 L CNN
F 1 "BC856" H 4041 3345 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 4050 3225 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC856.pdf" H 3850 3300 50  0001 L CNN
	1    3850 3300
	1    0    0    1   
$EndComp
Wire Wire Line
	3950 3600 4400 3600
$Comp
L Transistor_BJT:BC856 Q36
U 1 1 5E44E5CC
P 3850 3800
F 0 "Q36" H 4041 3754 50  0000 L CNN
F 1 "BC856" H 4041 3845 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 4050 3725 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC856.pdf" H 3850 3800 50  0001 L CNN
	1    3850 3800
	1    0    0    1   
$EndComp
Wire Wire Line
	3950 4100 4400 4100
$Comp
L Transistor_BJT:BC856 Q37
U 1 1 5E44E5C5
P 3850 4300
F 0 "Q37" H 4041 4254 50  0000 L CNN
F 1 "BC856" H 4041 4345 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 4050 4225 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC856.pdf" H 3850 4300 50  0001 L CNN
	1    3850 4300
	1    0    0    1   
$EndComp
Wire Wire Line
	3950 4600 4400 4600
$Comp
L Transistor_BJT:BC856 Q38
U 1 1 5E44E5BE
P 3850 4800
F 0 "Q38" H 4041 4754 50  0000 L CNN
F 1 "BC856" H 4041 4845 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 4050 4725 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC856.pdf" H 3850 4800 50  0001 L CNN
	1    3850 4800
	1    0    0    1   
$EndComp
Wire Wire Line
	3950 5100 4400 5100
$Comp
L Transistor_BJT:BC856 Q39
U 1 1 5E44E5B7
P 3850 5300
F 0 "Q39" H 4041 5254 50  0000 L CNN
F 1 "BC856" H 4041 5345 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 4050 5225 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC856.pdf" H 3850 5300 50  0001 L CNN
	1    3850 5300
	1    0    0    1   
$EndComp
Wire Wire Line
	3950 5600 4400 5600
$Comp
L Transistor_BJT:BC856 Q40
U 1 1 5E44E5B0
P 3850 5800
F 0 "Q40" H 4041 5754 50  0000 L CNN
F 1 "BC856" H 4041 5845 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 4050 5725 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC856.pdf" H 3850 5800 50  0001 L CNN
	1    3850 5800
	1    0    0    1   
$EndComp
Wire Wire Line
	3950 4500 4750 4500
Wire Wire Line
	3950 5000 4750 5000
Wire Wire Line
	3950 5500 4750 5500
Wire Wire Line
	3950 6000 4750 6000
Wire Wire Line
	3950 4000 4750 4000
Wire Wire Line
	3950 3500 4800 3500
Wire Wire Line
	3950 3000 4800 3000
Wire Wire Line
	3950 2500 4800 2500
Wire Wire Line
	3950 2000 4800 2000
Wire Wire Line
	3950 1500 4800 1500
Text GLabel 4750 6000 2    50   Output ~ 0
FEEDER18_TX
Text GLabel 4750 5500 2    50   Output ~ 0
FEEDER16_TX
Text GLabel 4750 5000 2    50   Output ~ 0
FEEDER14_TX
Text GLabel 4750 4500 2    50   Output ~ 0
FEEDER12_TX
Text GLabel 4750 4000 2    50   Output ~ 0
FEEDER10_TX
Text GLabel 4800 3500 2    50   Output ~ 0
FEEDER8_TX
Text GLabel 4800 3000 2    50   Output ~ 0
FEEDER6_TX
Text GLabel 4800 2500 2    50   Output ~ 0
FEEDER4_TX
Text GLabel 4800 2000 2    50   Output ~ 0
FEEDER2_TX
Text GLabel 4800 1500 2    50   Output ~ 0
FEEDER0_TX
Wire Wire Line
	3600 1100 3950 1100
$Comp
L Device:R R62
U 1 1 5E44E5F6
P 3450 1100
F 0 "R62" V 3350 1100 50  0000 C CNN
F 1 "2K2" V 3550 1100 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 3380 1100 50  0001 C CNN
F 3 "~" H 3450 1100 50  0001 C CNN
	1    3450 1100
	0    1    1    0   
$EndComp
Wire Wire Line
	2250 1300 2900 1300
Wire Wire Line
	2250 1800 2900 1800
Wire Wire Line
	2250 2300 2900 2300
Wire Wire Line
	2250 2800 2900 2800
Wire Wire Line
	2250 3300 2900 3300
Wire Wire Line
	2250 3800 2900 3800
Wire Wire Line
	2250 4300 2900 4300
Wire Wire Line
	2250 4800 2900 4800
Wire Wire Line
	2250 5300 2900 5300
Wire Wire Line
	2250 5800 2900 5800
Wire Wire Line
	3300 1100 3300 1300
Connection ~ 3300 1300
Wire Wire Line
	3300 1300 3200 1300
Wire Wire Line
	3300 1600 3300 1800
Connection ~ 3300 1800
Wire Wire Line
	3300 1800 3200 1800
Wire Wire Line
	3300 2100 3300 2300
Connection ~ 3300 2300
Wire Wire Line
	3300 2300 3200 2300
Wire Wire Line
	3300 2600 3300 2800
Connection ~ 3300 2800
Wire Wire Line
	3300 2800 3200 2800
Wire Wire Line
	3300 3100 3300 3300
Connection ~ 3300 3300
Wire Wire Line
	3300 3300 3200 3300
Wire Wire Line
	3300 3600 3300 3800
Connection ~ 3300 3800
Wire Wire Line
	3300 3800 3200 3800
Wire Wire Line
	3300 4100 3300 4300
Connection ~ 3300 4300
Wire Wire Line
	3300 4300 3200 4300
Wire Wire Line
	3300 4600 3300 4800
Connection ~ 3300 4800
Wire Wire Line
	3300 4800 3200 4800
Wire Wire Line
	3300 5100 3300 5300
Connection ~ 3300 5300
Wire Wire Line
	3300 5300 3200 5300
Wire Wire Line
	3300 5600 3300 5800
Connection ~ 3300 5800
Wire Wire Line
	3300 5800 3200 5800
$Comp
L Transistor_FET:2N7002 Q21
U 1 1 5F0EEF8B
P 2150 1500
F 0 "Q21" H 2354 1546 50  0000 L CNN
F 1 "2N7002" H 2354 1455 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 2350 1425 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N7002.pdf" H 2150 1500 50  0001 L CNN
	1    2150 1500
	1    0    0    -1  
$EndComp
$Comp
L Transistor_FET:2N7002 Q22
U 1 1 5F0F4289
P 2150 2000
F 0 "Q22" H 2354 2046 50  0000 L CNN
F 1 "2N7002" H 2354 1955 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 2350 1925 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N7002.pdf" H 2150 2000 50  0001 L CNN
	1    2150 2000
	1    0    0    -1  
$EndComp
$Comp
L Transistor_FET:2N7002 Q23
U 1 1 5F11A7FB
P 2150 2500
F 0 "Q23" H 2354 2546 50  0000 L CNN
F 1 "2N7002" H 2354 2455 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 2350 2425 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N7002.pdf" H 2150 2500 50  0001 L CNN
	1    2150 2500
	1    0    0    -1  
$EndComp
$Comp
L Transistor_FET:2N7002 Q24
U 1 1 5F12D1E6
P 2150 3000
F 0 "Q24" H 2354 3046 50  0000 L CNN
F 1 "2N7002" H 2354 2955 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 2350 2925 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N7002.pdf" H 2150 3000 50  0001 L CNN
	1    2150 3000
	1    0    0    -1  
$EndComp
$Comp
L Transistor_FET:2N7002 Q25
U 1 1 5F13F541
P 2150 3500
F 0 "Q25" H 2354 3546 50  0000 L CNN
F 1 "2N7002" H 2354 3455 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 2350 3425 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N7002.pdf" H 2150 3500 50  0001 L CNN
	1    2150 3500
	1    0    0    -1  
$EndComp
$Comp
L Transistor_FET:2N7002 Q26
U 1 1 5F151540
P 2150 4000
F 0 "Q26" H 2354 4046 50  0000 L CNN
F 1 "2N7002" H 2354 3955 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 2350 3925 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N7002.pdf" H 2150 4000 50  0001 L CNN
	1    2150 4000
	1    0    0    -1  
$EndComp
$Comp
L Transistor_FET:2N7002 Q27
U 1 1 5F1640B4
P 2150 4500
F 0 "Q27" H 2354 4546 50  0000 L CNN
F 1 "2N7002" H 2354 4455 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 2350 4425 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N7002.pdf" H 2150 4500 50  0001 L CNN
	1    2150 4500
	1    0    0    -1  
$EndComp
$Comp
L Transistor_FET:2N7002 Q28
U 1 1 5F177028
P 2150 5000
F 0 "Q28" H 2354 5046 50  0000 L CNN
F 1 "2N7002" H 2354 4955 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 2350 4925 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N7002.pdf" H 2150 5000 50  0001 L CNN
	1    2150 5000
	1    0    0    -1  
$EndComp
$Comp
L Transistor_FET:2N7002 Q29
U 1 1 5F18A792
P 2150 5500
F 0 "Q29" H 2354 5546 50  0000 L CNN
F 1 "2N7002" H 2354 5455 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 2350 5425 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N7002.pdf" H 2150 5500 50  0001 L CNN
	1    2150 5500
	1    0    0    -1  
$EndComp
$Comp
L Transistor_FET:2N7002 Q30
U 1 1 5F19E2BC
P 2150 6000
F 0 "Q30" H 2354 6046 50  0000 L CNN
F 1 "2N7002" H 2354 5955 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 2350 5925 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N7002.pdf" H 2150 6000 50  0001 L CNN
	1    2150 6000
	1    0    0    -1  
$EndComp
Wire Wire Line
	9100 5500 9900 5500
Connection ~ 9100 5100
Wire Wire Line
	9100 5100 9550 5100
$Comp
L Transistor_BJT:BC856 Q59
U 1 1 5E39F590
P 9000 5300
F 0 "Q59" H 9191 5254 50  0000 L CNN
F 1 "BC856" H 9191 5345 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 9200 5225 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC856.pdf" H 9000 5300 50  0001 L CNN
	1    9000 5300
	1    0    0    1   
$EndComp
$Comp
L Device:R R90
U 1 1 5E41CFA7
P 8250 5300
F 0 "R90" V 8150 5300 50  0000 C CNN
F 1 "10K" V 8350 5300 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 8180 5300 50  0001 C CNN
F 3 "~" H 8250 5300 50  0001 C CNN
	1    8250 5300
	0    1    1    0   
$EndComp
$Comp
L Device:R R101
U 1 1 5E423FD4
P 8650 5600
F 0 "R101" V 8550 5600 50  0000 C CNN
F 1 "2K2" V 8750 5600 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 8580 5600 50  0001 C CNN
F 3 "~" H 8650 5600 50  0001 C CNN
	1    8650 5600
	0    1    1    0   
$EndComp
Wire Wire Line
	8800 5600 9100 5600
Wire Wire Line
	8800 1100 9100 1100
$Comp
L Device:R R92
U 1 1 5E3CB916
P 8650 1100
F 0 "R92" V 8550 1100 50  0000 C CNN
F 1 "2K2" V 8750 1100 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 8580 1100 50  0001 C CNN
F 3 "~" H 8650 1100 50  0001 C CNN
	1    8650 1100
	0    1    1    0   
$EndComp
Wire Wire Line
	8800 1600 9100 1600
$Comp
L Device:R R93
U 1 1 5E3F0A40
P 8650 1600
F 0 "R93" V 8550 1600 50  0000 C CNN
F 1 "2K2" V 8750 1600 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 8580 1600 50  0001 C CNN
F 3 "~" H 8650 1600 50  0001 C CNN
	1    8650 1600
	0    1    1    0   
$EndComp
Wire Wire Line
	8800 2100 9100 2100
$Comp
L Device:R R94
U 1 1 5E3F670F
P 8650 2100
F 0 "R94" V 8550 2100 50  0000 C CNN
F 1 "2K2" V 8750 2100 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 8580 2100 50  0001 C CNN
F 3 "~" H 8650 2100 50  0001 C CNN
	1    8650 2100
	0    1    1    0   
$EndComp
Wire Wire Line
	8800 2600 9100 2600
$Comp
L Device:R R95
U 1 1 5E3FC5F0
P 8650 2600
F 0 "R95" V 8550 2600 50  0000 C CNN
F 1 "2K2" V 8750 2600 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 8580 2600 50  0001 C CNN
F 3 "~" H 8650 2600 50  0001 C CNN
	1    8650 2600
	0    1    1    0   
$EndComp
Wire Wire Line
	8800 3100 9100 3100
$Comp
L Device:R R96
U 1 1 5E4029C7
P 8650 3100
F 0 "R96" V 8550 3100 50  0000 C CNN
F 1 "2K2" V 8750 3100 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 8580 3100 50  0001 C CNN
F 3 "~" H 8650 3100 50  0001 C CNN
	1    8650 3100
	0    1    1    0   
$EndComp
Wire Wire Line
	8800 3600 9100 3600
$Comp
L Device:R R97
U 1 1 5E408F44
P 8650 3600
F 0 "R97" V 8550 3600 50  0000 C CNN
F 1 "2K2" V 8750 3600 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 8580 3600 50  0001 C CNN
F 3 "~" H 8650 3600 50  0001 C CNN
	1    8650 3600
	0    1    1    0   
$EndComp
Wire Wire Line
	8800 4100 9100 4100
$Comp
L Device:R R98
U 1 1 5E40F71F
P 8650 4100
F 0 "R98" V 8550 4100 50  0000 C CNN
F 1 "2K2" V 8750 4100 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 8580 4100 50  0001 C CNN
F 3 "~" H 8650 4100 50  0001 C CNN
	1    8650 4100
	0    1    1    0   
$EndComp
Wire Wire Line
	8800 4600 9100 4600
$Comp
L Device:R R99
U 1 1 5E416480
P 8650 4600
F 0 "R99" V 8550 4600 50  0000 C CNN
F 1 "2K2" V 8750 4600 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 8580 4600 50  0001 C CNN
F 3 "~" H 8650 4600 50  0001 C CNN
	1    8650 4600
	0    1    1    0   
$EndComp
Wire Wire Line
	8800 5100 9100 5100
$Comp
L Device:R R100
U 1 1 5E41CFA1
P 8650 5100
F 0 "R100" V 8550 5100 50  0000 C CNN
F 1 "2K2" V 8750 5100 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 8580 5100 50  0001 C CNN
F 3 "~" H 8650 5100 50  0001 C CNN
	1    8650 5100
	0    1    1    0   
$EndComp
$Comp
L Device:R R82
U 1 1 5E3CD71C
P 8250 1300
F 0 "R82" V 8150 1300 50  0000 C CNN
F 1 "10K" V 8350 1300 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 8180 1300 50  0001 C CNN
F 3 "~" H 8250 1300 50  0001 C CNN
	1    8250 1300
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5F2B42F3
P 8000 6250
AR Path="/5F2B42F3" Ref="#PWR?"  Part="1" 
AR Path="/5ED4198E/5F2B42F3" Ref="#PWR?"  Part="1" 
AR Path="/5E2A746E/5F2B42F3" Ref="#PWR06"  Part="1" 
F 0 "#PWR06" H 8000 6000 50  0001 C CNN
F 1 "GND" H 8005 6077 50  0000 C CNN
F 2 "" H 8000 6250 50  0001 C CNN
F 3 "" H 8000 6250 50  0001 C CNN
	1    8000 6250
	1    0    0    -1  
$EndComp
Wire Wire Line
	8000 6250 8000 6200
Wire Wire Line
	7450 6200 8000 6200
Connection ~ 8000 6200
Wire Wire Line
	8000 1700 7450 1700
Wire Wire Line
	8000 1700 8000 2200
Wire Wire Line
	7450 2200 8000 2200
Connection ~ 8000 2200
Wire Wire Line
	8000 2200 8000 2700
Wire Wire Line
	7450 2700 8000 2700
Connection ~ 8000 2700
Wire Wire Line
	8000 2700 8000 3200
Wire Wire Line
	7450 3200 8000 3200
Connection ~ 8000 3200
Wire Wire Line
	8000 3200 8000 3700
Wire Wire Line
	7450 3700 8000 3700
Connection ~ 8000 3700
Wire Wire Line
	8000 3700 8000 4200
Wire Wire Line
	7450 4200 8000 4200
Connection ~ 8000 4200
Wire Wire Line
	8000 4200 8000 4700
Wire Wire Line
	7450 4700 8000 4700
Connection ~ 8000 4700
Wire Wire Line
	8000 4700 8000 5200
Wire Wire Line
	7450 5200 8000 5200
Connection ~ 8000 5200
Wire Wire Line
	8000 5200 8000 5700
Wire Wire Line
	7450 5700 8000 5700
Connection ~ 8000 5700
Wire Wire Line
	8000 5700 8000 6200
Wire Wire Line
	7450 1300 8100 1300
Wire Wire Line
	7450 1800 8100 1800
Wire Wire Line
	7450 2300 8100 2300
Wire Wire Line
	7450 2800 8100 2800
Wire Wire Line
	7450 3300 8100 3300
Wire Wire Line
	7450 3800 8100 3800
Wire Wire Line
	7450 4300 8100 4300
Wire Wire Line
	7450 4800 8100 4800
Wire Wire Line
	7450 5300 8100 5300
Wire Wire Line
	7450 5800 8100 5800
$Comp
L Transistor_FET:2N7002 Q41
U 1 1 5F2B4320
P 7350 1500
F 0 "Q41" H 7554 1546 50  0000 L CNN
F 1 "2N7002" H 7554 1455 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 7550 1425 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N7002.pdf" H 7350 1500 50  0001 L CNN
	1    7350 1500
	1    0    0    -1  
$EndComp
$Comp
L Transistor_FET:2N7002 Q42
U 1 1 5F2B4326
P 7350 2000
F 0 "Q42" H 7554 2046 50  0000 L CNN
F 1 "2N7002" H 7554 1955 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 7550 1925 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N7002.pdf" H 7350 2000 50  0001 L CNN
	1    7350 2000
	1    0    0    -1  
$EndComp
$Comp
L Transistor_FET:2N7002 Q43
U 1 1 5F2B432C
P 7350 2500
F 0 "Q43" H 7554 2546 50  0000 L CNN
F 1 "2N7002" H 7554 2455 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 7550 2425 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N7002.pdf" H 7350 2500 50  0001 L CNN
	1    7350 2500
	1    0    0    -1  
$EndComp
$Comp
L Transistor_FET:2N7002 Q44
U 1 1 5F2B4332
P 7350 3000
F 0 "Q44" H 7554 3046 50  0000 L CNN
F 1 "2N7002" H 7554 2955 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 7550 2925 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N7002.pdf" H 7350 3000 50  0001 L CNN
	1    7350 3000
	1    0    0    -1  
$EndComp
$Comp
L Transistor_FET:2N7002 Q45
U 1 1 5F2B4338
P 7350 3500
F 0 "Q45" H 7554 3546 50  0000 L CNN
F 1 "2N7002" H 7554 3455 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 7550 3425 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N7002.pdf" H 7350 3500 50  0001 L CNN
	1    7350 3500
	1    0    0    -1  
$EndComp
$Comp
L Transistor_FET:2N7002 Q46
U 1 1 5F2B433E
P 7350 4000
F 0 "Q46" H 7554 4046 50  0000 L CNN
F 1 "2N7002" H 7554 3955 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 7550 3925 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N7002.pdf" H 7350 4000 50  0001 L CNN
	1    7350 4000
	1    0    0    -1  
$EndComp
$Comp
L Transistor_FET:2N7002 Q47
U 1 1 5F2B4344
P 7350 4500
F 0 "Q47" H 7554 4546 50  0000 L CNN
F 1 "2N7002" H 7554 4455 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 7550 4425 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N7002.pdf" H 7350 4500 50  0001 L CNN
	1    7350 4500
	1    0    0    -1  
$EndComp
$Comp
L Transistor_FET:2N7002 Q48
U 1 1 5F2B434A
P 7350 5000
F 0 "Q48" H 7554 5046 50  0000 L CNN
F 1 "2N7002" H 7554 4955 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 7550 4925 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N7002.pdf" H 7350 5000 50  0001 L CNN
	1    7350 5000
	1    0    0    -1  
$EndComp
$Comp
L Transistor_FET:2N7002 Q49
U 1 1 5F2B4350
P 7350 5500
F 0 "Q49" H 7554 5546 50  0000 L CNN
F 1 "2N7002" H 7554 5455 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 7550 5425 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N7002.pdf" H 7350 5500 50  0001 L CNN
	1    7350 5500
	1    0    0    -1  
$EndComp
$Comp
L Transistor_FET:2N7002 Q50
U 1 1 5F2B4356
P 7350 6000
F 0 "Q50" H 7554 6046 50  0000 L CNN
F 1 "2N7002" H 7554 5955 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 7550 5925 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N7002.pdf" H 7350 6000 50  0001 L CNN
	1    7350 6000
	1    0    0    -1  
$EndComp
Wire Wire Line
	8500 5600 8500 5800
Connection ~ 8500 5800
Wire Wire Line
	8500 5800 8400 5800
Wire Wire Line
	8400 5300 8500 5300
Wire Wire Line
	8500 5100 8500 5300
Connection ~ 8500 5300
Wire Wire Line
	8500 5300 8800 5300
Wire Wire Line
	8400 4800 8500 4800
Wire Wire Line
	8500 4600 8500 4800
Connection ~ 8500 4800
Wire Wire Line
	8500 4800 8800 4800
Wire Wire Line
	8400 4300 8500 4300
Wire Wire Line
	8500 4100 8500 4300
Connection ~ 8500 4300
Wire Wire Line
	8500 4300 8800 4300
Wire Wire Line
	8400 3800 8500 3800
Wire Wire Line
	8500 3600 8500 3800
Connection ~ 8500 3800
Wire Wire Line
	8500 3800 8800 3800
Wire Wire Line
	8400 3300 8500 3300
Wire Wire Line
	8500 3100 8500 3300
Connection ~ 8500 3300
Wire Wire Line
	8500 3300 8800 3300
Wire Wire Line
	8400 2800 8500 2800
Wire Wire Line
	8500 2600 8500 2800
Connection ~ 8500 2800
Wire Wire Line
	8500 2800 8800 2800
Wire Wire Line
	8400 2300 8500 2300
Wire Wire Line
	8500 2100 8500 2300
Connection ~ 8500 2300
Wire Wire Line
	8500 2300 8800 2300
Wire Wire Line
	8400 1800 8500 1800
Wire Wire Line
	8500 1600 8500 1800
Connection ~ 8500 1800
Wire Wire Line
	8500 1800 8800 1800
Wire Wire Line
	8400 1300 8500 1300
Wire Wire Line
	8500 1100 8500 1300
Connection ~ 8500 1300
Wire Wire Line
	8500 1300 8800 1300
$EndSCHEMATC
