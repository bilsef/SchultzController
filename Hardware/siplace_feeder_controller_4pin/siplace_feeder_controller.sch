EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 4
Title "Siplace S Feeder Controller"
Date "2020-01-18"
Rev "0.1"
Comp "Bill Ruckman"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Sheet
S 8850 1650 1000 800 
U 5ED4198E
F0 "MCU and RX" 50
F1 "file5ED4198D.sch" 50
$EndSheet
$Sheet
S 8850 2900 1000 800 
U 5E2A746E
F0 "TX" 50
F1 "file5E2A746D.sch" 50
$EndSheet
$Sheet
S 8850 4150 1000 750 
U 5ED424F8
F0 "Connectors" 50
F1 "file5ED424F7.sch" 50
$EndSheet
$Comp
L Mechanical:Fiducial FID1
U 1 1 5F22E448
P 9050 5500
F 0 "FID1" H 9135 5546 50  0000 L CNN
F 1 "Fiducial" H 9135 5455 50  0000 L CNN
F 2 "Fiducial:Fiducial_1mm_Mask3mm" H 9050 5500 50  0001 C CNN
F 3 "~" H 9050 5500 50  0001 C CNN
	1    9050 5500
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:Fiducial FID2
U 1 1 5F22EB0F
P 9550 5500
F 0 "FID2" H 9635 5546 50  0000 L CNN
F 1 "Fiducial" H 9635 5455 50  0000 L CNN
F 2 "Fiducial:Fiducial_1mm_Mask3mm" H 9550 5500 50  0001 C CNN
F 3 "~" H 9550 5500 50  0001 C CNN
	1    9550 5500
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:Fiducial FID3
U 1 1 5F22F0DB
P 10050 5500
F 0 "FID3" H 10135 5546 50  0000 L CNN
F 1 "Fiducial" H 10135 5455 50  0000 L CNN
F 2 "Fiducial:Fiducial_1mm_Mask3mm" H 10050 5500 50  0001 C CNN
F 3 "~" H 10050 5500 50  0001 C CNN
	1    10050 5500
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H1
U 1 1 5F22F8D5
P 8550 5950
F 0 "H1" H 8650 5996 50  0000 L CNN
F 1 "MountingHole" H 8650 5905 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 8550 5950 50  0001 C CNN
F 3 "~" H 8550 5950 50  0001 C CNN
	1    8550 5950
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H2
U 1 1 5F22FF7E
P 9050 5950
F 0 "H2" H 9150 5996 50  0000 L CNN
F 1 "MountingHole" H 9150 5905 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 9050 5950 50  0001 C CNN
F 3 "~" H 9050 5950 50  0001 C CNN
	1    9050 5950
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H3
U 1 1 5F2305EE
P 9550 5950
F 0 "H3" H 9650 5996 50  0000 L CNN
F 1 "MountingHole" H 9650 5905 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 9550 5950 50  0001 C CNN
F 3 "~" H 9550 5950 50  0001 C CNN
	1    9550 5950
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H4
U 1 1 5F230C53
P 10050 5950
F 0 "H4" H 10150 5996 50  0000 L CNN
F 1 "MountingHole" H 10150 5905 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 10050 5950 50  0001 C CNN
F 3 "~" H 10050 5950 50  0001 C CNN
	1    10050 5950
	1    0    0    -1  
$EndComp
Text Notes 1900 1600 0    118  ~ 0
Siplace S Feeder Controller
$Comp
L Graphic:Logo_Open_Hardware_Large #LOGO1
U 1 1 5E54785D
P 7600 5750
F 0 "#LOGO1" H 7600 6250 50  0001 C CNN
F 1 "Logo_Open_Hardware_Large" H 7600 5350 50  0001 C CNN
F 2 "Symbol:OSHW-Logo_19x20mm_SilkScreen" H 7600 5750 50  0001 C CNN
F 3 "~" H 7600 5750 50  0001 C CNN
	1    7600 5750
	1    0    0    -1  
$EndComp
$EndSCHEMATC
