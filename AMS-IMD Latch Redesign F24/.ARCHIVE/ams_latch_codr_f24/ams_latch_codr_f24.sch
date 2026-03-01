EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr User 7874 6890
encoding utf-8
Sheet 1 1
Title "AMS Latch"
Date "2022-05-01"
Rev "2"
Comp "Terrier Motorsport"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 "Latch interface between AMS and Shutdown Loop"
$EndDescr
Wire Wire Line
	4300 3250 4300 3150
Wire Wire Line
	4300 3150 4900 3150
Wire Wire Line
	4000 3250 4000 2900
Wire Wire Line
	4000 2900 4400 2900
Wire Wire Line
	1400 2400 1400 2900
Wire Wire Line
	1400 2900 3800 2900
Wire Wire Line
	3800 3250 3800 2900
Wire Wire Line
	3900 4150 3900 3850
Wire Wire Line
	3900 4150 5600 4150
Wire Wire Line
	5600 4150 5600 3150
Wire Wire Line
	5300 3150 5600 3150
Connection ~ 5600 3150
Wire Wire Line
	5600 3150 5900 3150
$Comp
L power:GND #PWR0101
U 1 1 5EFEF41C
P 6000 2400
F 0 "#PWR0101" H 6000 2150 50  0001 C CNN
F 1 "GND" V 6005 2272 50  0000 R CNN
F 2 "" H 6000 2400 50  0001 C CNN
F 3 "" H 6000 2400 50  0001 C CNN
	1    6000 2400
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 5EFEFE15
P 4950 2350
F 0 "#PWR0102" H 4950 2100 50  0001 C CNN
F 1 "GND" V 4955 2222 50  0000 R CNN
F 2 "" H 4950 2350 50  0001 C CNN
F 3 "" H 4950 2350 50  0001 C CNN
	1    4950 2350
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0104
U 1 1 5EFF165D
P 1500 2400
F 0 "#PWR0104" H 1500 2150 50  0001 C CNN
F 1 "GND" V 1505 2272 50  0000 R CNN
F 2 "" H 1500 2400 50  0001 C CNN
F 3 "" H 1500 2400 50  0001 C CNN
	1    1500 2400
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0106
U 1 1 5EFF2638
P 4300 3850
F 0 "#PWR0106" H 4300 3600 50  0001 C CNN
F 1 "GND" H 4305 3677 50  0000 C CNN
F 2 "" H 4300 3850 50  0001 C CNN
F 3 "" H 4300 3850 50  0001 C CNN
	1    4300 3850
	1    0    0    -1  
$EndComp
NoConn ~ 3500 3850
NoConn ~ 3400 3250
NoConn ~ 3600 3250
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 5F00D549
P 5900 2800
F 0 "#FLG0101" H 5900 2875 50  0001 C CNN
F 1 "PWR_FLAG" V 5900 2927 50  0000 L CNN
F 2 "" H 5900 2800 50  0001 C CNN
F 3 "~" H 5900 2800 50  0001 C CNN
	1    5900 2800
	0    -1   -1   0   
$EndComp
$Comp
L power:PWR_FLAG #FLG0102
U 1 1 5F00FB0B
P 6000 2400
F 0 "#FLG0102" H 6000 2475 50  0001 C CNN
F 1 "PWR_FLAG" H 5900 2550 50  0000 C CNN
F 2 "" H 6000 2400 50  0001 C CNN
F 3 "~" H 6000 2400 50  0001 C CNN
	1    6000 2400
	-1   0    0    1   
$EndComp
Wire Wire Line
	5900 2300 5900 2800
Wire Wire Line
	6000 2300 6000 2400
Connection ~ 6000 2400
$Comp
L power:VCC #PWR0107
U 1 1 5EF683C5
P 5900 2300
F 0 "#PWR0107" H 5900 2150 50  0001 C CNN
F 1 "VCC" V 5915 2427 50  0000 L CNN
F 2 "" H 5900 2300 50  0001 C CNN
F 3 "" H 5900 2300 50  0001 C CNN
	1    5900 2300
	0    -1   -1   0   
$EndComp
Connection ~ 5900 2800
Wire Wire Line
	5900 2800 5900 3150
Wire Wire Line
	4800 2800 4800 2750
Wire Wire Line
	4500 2350 4800 2350
Connection ~ 4800 2350
Wire Wire Line
	4800 2350 4950 2350
Wire Wire Line
	4400 2350 4400 2800
Wire Wire Line
	4400 2800 4450 2800
Connection ~ 4400 2800
Wire Wire Line
	4400 2800 4400 2900
Wire Wire Line
	4800 2800 4750 2800
Wire Wire Line
	3100 3250 2750 3250
Wire Wire Line
	2750 3250 2750 3400
Wire Wire Line
	2750 3700 2750 3850
Wire Wire Line
	2750 3850 3100 3850
Wire Wire Line
	4300 3250 5100 3250
Wire Wire Line
	5100 3250 5100 3400
Wire Wire Line
	4300 3850 5100 3850
Wire Wire Line
	5100 3700 5100 3850
Text Notes 1200 2000 0    50   ~ 0
Shutdown Out
Text Notes 3050 2000 0    50   ~ 0
Fault In
Text Notes 4200 1950 0    50   ~ 0
Fault Light Out
Text Notes 5800 1900 0    50   ~ 0
Power In
$Comp
L Motorsport_Symbols:R R1
U 1 1 5F1CD0D3
P 4600 2800
F 0 "R1" V 4393 2800 50  0000 C CNN
F 1 "1K" V 4484 2800 50  0000 C CNN
F 2 "Motorsport_Footprints:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal_Motorsport" V 4530 2800 50  0001 C CNN
F 3 "~" H 4600 2800 50  0001 C CNN
	1    4600 2800
	0    1    1    0   
$EndComp
Wire Wire Line
	4800 2350 4800 2450
$Comp
L Motorsport_Symbols:LED D2
U 1 1 5F1CFC8C
P 4800 2600
F 0 "D2" V 4747 2680 50  0000 L CNN
F 1 "LED" V 4838 2680 50  0000 L CNN
F 2 "Motorsport_Footprints:LED_D5.0mm_Motorsport" H 4800 2600 50  0001 C CNN
F 3 "~" H 4800 2600 50  0001 C CNN
	1    4800 2600
	0    1    1    0   
$EndComp
$Comp
L Motorsport_Symbols:SW_Push SW1
U 1 1 5F1D95AE
P 5100 3150
F 0 "SW1" H 5100 3435 50  0000 C CNN
F 1 "SW_Push" H 5100 3344 50  0000 C CNN
F 2 "Motorsport_Footprints:SW_PUSH_6mm_Motorsport" H 5100 3350 50  0001 C CNN
F 3 "~" H 5100 3350 50  0001 C CNN
	1    5100 3150
	1    0    0    -1  
$EndComp
$Comp
L Motorsport_Symbols:EC2-12TNU K1
U 1 1 5F18AE63
P 3700 3550
F 0 "K1" H 4530 3596 50  0000 L CNN
F 1 "EC2-12TNU" H 4530 3505 50  0000 L CNN
F 2 "Motorsport_Footprints:Relay_DPDT_Kemet_EC2_DoubleCoil_Motorsport" H 3500 3550 50  0001 C CNN
F 3 "https://content.kemet.com/datasheets/KEM_R7002_EC2_EE2.pdf" H 3500 3550 50  0001 C CNN
	1    3700 3550
	1    0    0    -1  
$EndComp
Connection ~ 3100 3250
Connection ~ 4300 3250
Connection ~ 4300 3850
$Comp
L Motorsport_Symbols:Molex_Connector J1
U 1 1 5F946191
P 1400 2400
F 0 "J1" V 1598 2222 50  0000 R CNN
F 1 "Molex_Connector" V 1521 2222 31  0000 R CNN
F 2 "Motorsport_Footprints:39-28-8020_Motorsport" H 2050 2500 50  0001 L CNN
F 3 "http://www.molex.com/molex/products/datasheet.jsp?part=active/0039288020_PCB_HEADERS.xml" H 2050 2400 50  0001 L CNN
F 4 "Header 4.20mm, dual row, vert, 2w, (sn) Molex MINI-FIT JR. Series, Series Number 5566, 4.2mm Pitch 2 Way 2 Row Shrouded Straight PCB Header, Through Hole" H 2050 2300 50  0001 L CNN "Description"
F 5 "13.1" H 2050 2200 50  0001 L CNN "Height"
F 6 "Molex" H 2050 2100 50  0001 L CNN "Manufacturer_Name"
F 7 "39-28-8020" H 2050 2000 50  0001 L CNN "Manufacturer_Part_Number"
F 8 "538-39-28-8020" H 2050 1900 50  0001 L CNN "Mouser Part Number"
F 9 "https://www.mouser.co.uk/ProductDetail/Molex/39-28-8020?qs=ZZBj1wiNDbnzWLcHr%2Fqwqw%3D%3D" H 2050 1800 50  0001 L CNN "Mouser Price/Stock"
F 10 "6705423P" H 2050 1700 50  0001 L CNN "RS Part Number"
F 11 "http://uk.rs-online.com/web/p/products/6705423P" H 2050 1600 50  0001 L CNN "RS Price/Stock"
F 12 "70266921" H 2050 1500 50  0001 L CNN "Allied_Number"
	1    1400 2400
	0    -1   -1   0   
$EndComp
$Comp
L Motorsport_Symbols:Molex_Connector J2
U 1 1 5F94AA5C
P 3100 2400
F 0 "J2" V 3298 2222 50  0000 R CNN
F 1 "Molex_Connector" V 3221 2222 31  0000 R CNN
F 2 "Motorsport_Footprints:39-28-8020_Motorsport" H 3750 2500 50  0001 L CNN
F 3 "http://www.molex.com/molex/products/datasheet.jsp?part=active/0039288020_PCB_HEADERS.xml" H 3750 2400 50  0001 L CNN
F 4 "Header 4.20mm, dual row, vert, 2w, (sn) Molex MINI-FIT JR. Series, Series Number 5566, 4.2mm Pitch 2 Way 2 Row Shrouded Straight PCB Header, Through Hole" H 3750 2300 50  0001 L CNN "Description"
F 5 "13.1" H 3750 2200 50  0001 L CNN "Height"
F 6 "Molex" H 3750 2100 50  0001 L CNN "Manufacturer_Name"
F 7 "39-28-8020" H 3750 2000 50  0001 L CNN "Manufacturer_Part_Number"
F 8 "538-39-28-8020" H 3750 1900 50  0001 L CNN "Mouser Part Number"
F 9 "https://www.mouser.co.uk/ProductDetail/Molex/39-28-8020?qs=ZZBj1wiNDbnzWLcHr%2Fqwqw%3D%3D" H 3750 1800 50  0001 L CNN "Mouser Price/Stock"
F 10 "6705423P" H 3750 1700 50  0001 L CNN "RS Part Number"
F 11 "http://uk.rs-online.com/web/p/products/6705423P" H 3750 1600 50  0001 L CNN "RS Price/Stock"
F 12 "70266921" H 3750 1500 50  0001 L CNN "Allied_Number"
	1    3100 2400
	0    -1   -1   0   
$EndComp
$Comp
L Motorsport_Symbols:Molex_Connector J3
U 1 1 5F94C2BD
P 4400 2350
F 0 "J3" V 4598 2172 50  0000 R CNN
F 1 "Molex_Connector" V 4521 2172 31  0000 R CNN
F 2 "Motorsport_Footprints:39-28-8020_Motorsport" H 5050 2450 50  0001 L CNN
F 3 "http://www.molex.com/molex/products/datasheet.jsp?part=active/0039288020_PCB_HEADERS.xml" H 5050 2350 50  0001 L CNN
F 4 "Header 4.20mm, dual row, vert, 2w, (sn) Molex MINI-FIT JR. Series, Series Number 5566, 4.2mm Pitch 2 Way 2 Row Shrouded Straight PCB Header, Through Hole" H 5050 2250 50  0001 L CNN "Description"
F 5 "13.1" H 5050 2150 50  0001 L CNN "Height"
F 6 "Molex" H 5050 2050 50  0001 L CNN "Manufacturer_Name"
F 7 "39-28-8020" H 5050 1950 50  0001 L CNN "Manufacturer_Part_Number"
F 8 "538-39-28-8020" H 5050 1850 50  0001 L CNN "Mouser Part Number"
F 9 "https://www.mouser.co.uk/ProductDetail/Molex/39-28-8020?qs=ZZBj1wiNDbnzWLcHr%2Fqwqw%3D%3D" H 5050 1750 50  0001 L CNN "Mouser Price/Stock"
F 10 "6705423P" H 5050 1650 50  0001 L CNN "RS Part Number"
F 11 "http://uk.rs-online.com/web/p/products/6705423P" H 5050 1550 50  0001 L CNN "RS Price/Stock"
F 12 "70266921" H 5050 1450 50  0001 L CNN "Allied_Number"
	1    4400 2350
	0    -1   -1   0   
$EndComp
$Comp
L Motorsport_Symbols:Molex_Connector J4
U 1 1 5F94C7E0
P 5900 2300
F 0 "J4" V 6098 2122 50  0000 R CNN
F 1 "Molex_Connector" V 6021 2122 31  0000 R CNN
F 2 "Motorsport_Footprints:39-28-8020_Motorsport" H 6550 2400 50  0001 L CNN
F 3 "http://www.molex.com/molex/products/datasheet.jsp?part=active/0039288020_PCB_HEADERS.xml" H 6550 2300 50  0001 L CNN
F 4 "Header 4.20mm, dual row, vert, 2w, (sn) Molex MINI-FIT JR. Series, Series Number 5566, 4.2mm Pitch 2 Way 2 Row Shrouded Straight PCB Header, Through Hole" H 6550 2200 50  0001 L CNN "Description"
F 5 "13.1" H 6550 2100 50  0001 L CNN "Height"
F 6 "Molex" H 6550 2000 50  0001 L CNN "Manufacturer_Name"
F 7 "39-28-8020" H 6550 1900 50  0001 L CNN "Manufacturer_Part_Number"
F 8 "538-39-28-8020" H 6550 1800 50  0001 L CNN "Mouser Part Number"
F 9 "https://www.mouser.co.uk/ProductDetail/Molex/39-28-8020?qs=ZZBj1wiNDbnzWLcHr%2Fqwqw%3D%3D" H 6550 1700 50  0001 L CNN "Mouser Price/Stock"
F 10 "6705423P" H 6550 1600 50  0001 L CNN "RS Part Number"
F 11 "http://uk.rs-online.com/web/p/products/6705423P" H 6550 1500 50  0001 L CNN "RS Price/Stock"
F 12 "70266921" H 6550 1400 50  0001 L CNN "Allied_Number"
	1    5900 2300
	0    -1   -1   0   
$EndComp
Connection ~ 5900 2300
$Comp
L Motorsport_Symbols:Diode D1
U 1 1 5F94DAF9
P 2750 3550
F 0 "D1" V 2700 3300 50  0000 L CNN
F 1 "1N4001" V 2800 3150 50  0000 L CNN
F 2 "Motorsport_Footprints:D_DO-41_SOD81_P10.16mm_Horizontal_Motorsport" H 2750 3300 50  0001 C CNN
F 3 "" H 2750 3550 50  0001 C CNN
	1    2750 3550
	0    1    1    0   
$EndComp
$Comp
L Motorsport_Symbols:Diode D3
U 1 1 5F952940
P 5100 3550
F 0 "D3" V 5050 3600 50  0000 L CNN
F 1 "1N4001" V 5150 3600 50  0000 L CNN
F 2 "Motorsport_Footprints:D_DO-41_SOD81_P10.16mm_Horizontal_Motorsport" H 5100 3300 50  0001 C CNN
F 3 "" H 5100 3550 50  0001 C CNN
	1    5100 3550
	0    1    1    0   
$EndComp
Wire Wire Line
	3100 2400 3100 3250
NoConn ~ 3200 2400
$EndSCHEMATC
