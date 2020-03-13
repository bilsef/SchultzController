EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 4 4
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
L power:GND #PWR0107
U 1 1 5EDD15FE
P 5900 3200
F 0 "#PWR0107" H 5900 2950 50  0001 C CNN
F 1 "GND" H 5905 3027 50  0000 C CNN
F 2 "" H 5900 3200 50  0001 C CNN
F 3 "" H 5900 3200 50  0001 C CNN
	1    5900 3200
	1    0    0    -1  
$EndComp
$Comp
L Connector:Screw_Terminal_01x02 J21
U 1 1 5EDD91C3
P 5950 4700
F 0 "J21" H 6030 4692 50  0000 L CNN
F 1 "Screw_Terminal_01x02" H 6030 4601 50  0000 L CNN
F 2 "TerminalBlock_Phoenix:TerminalBlock_Phoenix_MKDS-1,5-2-5.08_1x02_P5.08mm_Horizontal" H 5950 4700 50  0001 C CNN
F 3 "~" H 5950 4700 50  0001 C CNN
	1    5950 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	5750 4800 5650 4800
Wire Wire Line
	5650 4800 5650 5000
$Comp
L power:GND #PWR0108
U 1 1 5EDE238A
P 5650 5000
F 0 "#PWR0108" H 5650 4750 50  0001 C CNN
F 1 "GND" H 5655 4827 50  0000 C CNN
F 2 "" H 5650 5000 50  0001 C CNN
F 3 "" H 5650 5000 50  0001 C CNN
	1    5650 5000
	1    0    0    -1  
$EndComp
Text Label 5600 4700 2    50   ~ 0
+30V
Text GLabel 1300 3000 3    50   Input ~ 0
FEEDER0_TX
Text GLabel 1100 3000 3    50   Output ~ 0
FEEDER0_RX
Text GLabel 2100 3000 3    50   Output ~ 0
FEEDER2_RX
Text GLabel 2700 3000 3    50   Input ~ 0
FEEDER4_TX
Text GLabel 3100 3000 3    50   Output ~ 0
FEEDER4_RX
Text GLabel 3700 3000 3    50   Input ~ 0
FEEDER6_TX
Text GLabel 3500 3000 3    50   Output ~ 0
FEEDER6_RX
Text GLabel 4100 3000 3    50   Input ~ 0
FEEDER8_TX
Text GLabel 4500 3000 3    50   Output ~ 0
FEEDER8_RX
Text GLabel 6500 3000 3    50   Input ~ 0
FEEDER10_TX
Text GLabel 6900 3000 3    50   Output ~ 0
FEEDER10_RX
Text GLabel 7500 3000 3    50   Input ~ 0
FEEDER12_TX
Text GLabel 7900 3000 3    50   Output ~ 0
FEEDER12_RX
Text GLabel 8500 3000 3    50   Input ~ 0
FEEDER14_TX
Text GLabel 8300 3000 3    50   Output ~ 0
FEEDER14_RX
Text GLabel 8900 3000 3    50   Input ~ 0
FEEDER16_TX
Text GLabel 9300 3000 3    50   Output ~ 0
FEEDER16_RX
Text GLabel 9900 3000 3    50   Input ~ 0
FEEDER18_TX
Text GLabel 10300 3000 3    50   Output ~ 0
FEEDER18_RX
Text GLabel 1700 3000 3    50   Input ~ 0
FEEDER2_TX
Text GLabel 1500 3000 3    50   Input ~ 0
FEEDER1_TX
Text GLabel 1900 3000 3    50   Output ~ 0
FEEDER1_RX
Text GLabel 2500 3000 3    50   Input ~ 0
FEEDER3_TX
Text GLabel 2300 3000 3    50   Output ~ 0
FEEDER3_RX
Text GLabel 3900 3000 3    50   Input ~ 0
FEEDER7_TX
Text GLabel 3300 3000 3    50   Output ~ 0
FEEDER5_RX
Text GLabel 2900 3000 3    50   Input ~ 0
FEEDER5_TX
Text GLabel 4300 3000 3    50   Output ~ 0
FEEDER7_RX
Text GLabel 4900 3000 3    50   Input ~ 0
FEEDER9_TX
Text GLabel 4700 3000 3    50   Output ~ 0
FEEDER9_RX
Text GLabel 7300 3000 3    50   Input ~ 0
FEEDER11_TX
Text GLabel 7100 3000 3    50   Output ~ 0
FEEDER11_RX
Text GLabel 7700 3000 3    50   Input ~ 0
FEEDER13_TX
Text GLabel 8100 3000 3    50   Output ~ 0
FEEDER13_RX
Text GLabel 8700 3000 3    50   Input ~ 0
FEEDER15_TX
Text GLabel 9100 3000 3    50   Output ~ 0
FEEDER15_RX
Text GLabel 9700 3000 3    50   Input ~ 0
FEEDER17_TX
Text GLabel 9500 3000 3    50   Output ~ 0
FEEDER17_RX
Text GLabel 10100 3000 3    50   Input ~ 0
FEEDER19_TX
Text GLabel 10500 3000 3    50   Output ~ 0
FEEDER19_RX
Wire Wire Line
	5400 4500 5400 4700
Text Notes 1350 3850 1    98   ~ 0
D12
Text Notes 1550 3850 1    98   ~ 0
D13
Text Notes 1750 3550 3    98   ~ 0
D14
Text Notes 2750 3850 1    98   ~ 0
D16
Text Notes 3750 3850 1    98   ~ 0
D18
Text Notes 4150 3850 1    98   ~ 0
D20
Text Notes 6550 3600 3    98   ~ 0
D11
Text Notes 7550 3900 1    98   ~ 0
D9
Text Notes 8550 3900 1    98   ~ 0
D7
Text Notes 8950 3900 1    98   ~ 0
D5
Text Notes 9950 3900 1    98   ~ 0
D3
Text Notes 2500 3850 1    98   ~ 0
D15
Text Notes 2950 3850 1    98   ~ 0
D17
Text Notes 3950 3850 1    98   ~ 0
D19
Text Notes 4950 3850 1    98   ~ 0
D21
Text Notes 7350 3900 1    98   ~ 0
D10
Text Notes 7750 3900 1    98   ~ 0
D8
Text Notes 8750 3900 1    98   ~ 0
D6
Text Notes 9750 3900 1    98   ~ 0
D4
Text Notes 10150 3900 1    98   ~ 0
D2
Wire Wire Line
	5400 4700 5750 4700
$Comp
L power:+30V #PWR0101
U 1 1 5E3E543A
P 5400 4500
F 0 "#PWR0101" H 5400 4350 50  0001 C CNN
F 1 "+30V" H 5415 4673 50  0000 C CNN
F 2 "" H 5400 4500 50  0001 C CNN
F 3 "" H 5400 4500 50  0001 C CNN
	1    5400 4500
	1    0    0    -1  
$EndComp
$Comp
L Connector:C96ABC J1
U 1 1 5E3E604E
P 5900 2300
F 0 "J1" V 6217 2350 50  0000 C CNN
F 1 "C96ABC" V 6126 2350 50  0000 C CNN
F 2 "5650889-5:TE_5650889-5" H 5900 2350 50  0001 C CNN
F 3 " ~" H 5900 2350 50  0001 C CNN
	1    5900 2300
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5300 2600 5300 2950
Wire Wire Line
	5300 2950 5600 2950
Wire Wire Line
	6000 2950 6000 2600
Wire Wire Line
	6100 2600 6100 2950
Wire Wire Line
	6100 2950 6000 2950
Connection ~ 6000 2950
Connection ~ 5600 2950
Wire Wire Line
	5600 2950 5700 2950
Wire Wire Line
	5600 2600 5600 2950
Wire Wire Line
	5700 2600 5700 2950
Connection ~ 5700 2950
Wire Wire Line
	5700 2950 5800 2950
Wire Wire Line
	5800 2600 5800 2950
Connection ~ 5800 2950
Wire Wire Line
	5800 2950 6000 2950
Wire Wire Line
	5900 2600 5900 2850
Wire Wire Line
	5900 2850 6200 2850
Wire Wire Line
	6700 2850 6700 2600
Wire Wire Line
	6600 2600 6600 2850
Connection ~ 6600 2850
Wire Wire Line
	6600 2850 6700 2850
Wire Wire Line
	6200 2600 6200 2850
Connection ~ 6200 2850
Wire Wire Line
	6200 2850 6300 2850
Wire Wire Line
	6300 2600 6300 2850
Connection ~ 6300 2850
Wire Wire Line
	6300 2850 6400 2850
Wire Wire Line
	6400 2600 6400 2850
Connection ~ 6400 2850
Wire Wire Line
	6400 2850 6600 2850
Wire Wire Line
	1100 3000 1100 2600
Wire Wire Line
	1300 2600 1300 3000
Wire Wire Line
	1500 3000 1500 2600
Wire Wire Line
	1700 2600 1700 3000
Wire Wire Line
	1900 3000 1900 2600
Wire Wire Line
	2100 2600 2100 3000
Wire Wire Line
	2300 3000 2300 2600
Wire Wire Line
	2500 2600 2500 3000
Wire Wire Line
	2700 3000 2700 2600
Wire Wire Line
	2900 2600 2900 3000
Wire Wire Line
	3100 3000 3100 2600
Wire Wire Line
	3300 2600 3300 3000
Wire Wire Line
	3500 3000 3500 2600
Wire Wire Line
	3700 2600 3700 3000
Wire Wire Line
	3900 3000 3900 2600
Wire Wire Line
	4100 2600 4100 3000
Wire Wire Line
	4300 3000 4300 2600
Wire Wire Line
	4500 2600 4500 3000
Wire Wire Line
	4700 3000 4700 2600
Wire Wire Line
	4900 2600 4900 3000
Wire Wire Line
	6500 3000 6500 2600
Wire Wire Line
	6900 2600 6900 3000
Wire Wire Line
	7100 3000 7100 2600
Wire Wire Line
	7300 2600 7300 3000
Wire Wire Line
	7500 3000 7500 2600
Wire Wire Line
	7700 2600 7700 3000
Wire Wire Line
	7900 3000 7900 2600
Wire Wire Line
	8100 2600 8100 3000
Wire Wire Line
	8300 3000 8300 2600
Wire Wire Line
	8500 2600 8500 3000
Wire Wire Line
	8700 3000 8700 2600
Wire Wire Line
	8900 2600 8900 3000
Wire Wire Line
	9100 3000 9100 2600
Wire Wire Line
	9300 2600 9300 3000
Wire Wire Line
	9500 3000 9500 2600
Wire Wire Line
	9700 2600 9700 3000
Wire Wire Line
	9900 3000 9900 2600
Wire Wire Line
	10100 2600 10100 3000
Wire Wire Line
	10300 3000 10300 2600
Wire Wire Line
	10500 2600 10500 3000
Wire Wire Line
	5300 2950 5300 3200
Connection ~ 5300 2950
Wire Wire Line
	5900 2850 5900 3200
Connection ~ 5900 2850
$Comp
L power:+30V #PWR0102
U 1 1 5E40F411
P 5300 3200
F 0 "#PWR0102" H 5300 3050 50  0001 C CNN
F 1 "+30V" H 5315 3373 50  0000 C CNN
F 2 "" H 5300 3200 50  0001 C CNN
F 3 "" H 5300 3200 50  0001 C CNN
	1    5300 3200
	-1   0    0    1   
$EndComp
$EndSCHEMATC
