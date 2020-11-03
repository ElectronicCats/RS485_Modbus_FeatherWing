EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Interface_UART:MAX487E U3
U 1 1 5F9AD072
P 4190 2670
F 0 "U3" H 3900 3270 50  0000 C CNN
F 1 "MAX13487E" H 3920 3180 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 4190 1970 50  0001 C CNN
F 3 "https://www.mouser.mx/ProductDetail/Maxim-Integrated/MAX13488EESA%2bT?qs=CDqwynd4ZNrf75a2RFzJTw%3D%3D" H 4190 2720 50  0001 C CNN
F 4 "MAX13488EESA+T" H 4190 2670 50  0001 C CNN "manf#"
	1    4190 2670
	1    0    0    -1  
$EndComp
$Comp
L RS485_Modbus_Wing-rescue:VOS617A-Isolatorr U1
U 1 1 5F9C2337
P 1950 2900
F 0 "U1" H 1701 2483 50  0000 C CNN
F 1 "VOS617A" H 1850 2934 50  0000 C CNN
F 2 "Package_SO:SO-4_4.4x2.3mm_P1.27mm" H 1950 2900 50  0001 C CNN
F 3 "https://www.mouser.mx/ProductDetail/Vishay-Semiconductors/VOS617A-8T?qs=W2ZGOs8rFANtTo7lrKJrQA%3D%3D" H 1950 2900 50  0001 C CNN
F 4 "VOS617A-8T" H 1950 2900 50  0001 C CNN "manf#"
	1    1950 2900
	1    0    0    -1  
$EndComp
$Comp
L RS485_Modbus_Wing-rescue:VOS617A-Isolatorr U2
U 1 1 5F9C0BC7
P 1350 1770
F 0 "U2" H 1366 1785 50  0000 C CNN
F 1 "VOS617A" H 1166 1349 50  0000 C CNN
F 2 "Package_SO:SO-4_4.4x2.3mm_P1.27mm" H 1350 1770 50  0001 C CNN
F 3 "https://www.mouser.mx/ProductDetail/Vishay-Semiconductors/VOS617A-8T?qs=W2ZGOs8rFANtTo7lrKJrQA%3D%3D" H 1350 1770 50  0001 C CNN
F 4 "VOS617A-8T" H 1350 1770 50  0001 C CNN "manf#"
	1    1350 1770
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR04
U 1 1 5F9D5FDD
P 2250 3270
F 0 "#PWR04" H 2250 3020 50  0001 C CNN
F 1 "GND" H 2255 3097 50  0000 C CNN
F 2 "" H 2250 3270 50  0001 C CNN
F 3 "" H 2250 3270 50  0001 C CNN
	1    2250 3270
	1    0    0    -1  
$EndComp
Wire Wire Line
	2150 3200 2250 3200
Wire Wire Line
	2250 3200 2250 3270
$Comp
L Device:R_Small R7
U 1 1 5F9D8466
P 3340 2160
F 0 "R7" H 3281 2114 50  0000 R CNN
F 1 "4.7K" H 3281 2205 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 3340 2160 50  0001 C CNN
F 3 "https://lcsc.com/product-detail/Chip-Resistor-Surface-Mount_FH-Guangdong-Fenghua-Advanced-Tech-RS-05K472JT_C115310.html" H 3340 2160 50  0001 C CNN
F 4 "RS-05K472JT" H 3340 2160 50  0001 C CNN "manf#"
	1    3340 2160
	-1   0    0    1   
$EndComp
Wire Wire Line
	3790 2770 3340 2770
Wire Wire Line
	3340 2770 3340 2670
Wire Wire Line
	3790 2670 3340 2670
Connection ~ 3340 2670
Wire Wire Line
	3340 2670 3340 2260
$Comp
L power:VBUS #PWR07
U 1 1 5F9D96A3
P 3340 1800
F 0 "#PWR07" H 3340 1650 50  0001 C CNN
F 1 "VBUS" H 3355 1973 50  0000 C CNN
F 2 "" H 3340 1800 50  0001 C CNN
F 3 "" H 3340 1800 50  0001 C CNN
	1    3340 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	3340 2060 3340 1800
Wire Wire Line
	2150 3000 2320 3000
Text Label 3700 2570 2    50   ~ 0
RO
Text Label 2040 2070 0    50   ~ 0
RO
Wire Wire Line
	3790 2570 3700 2570
$Comp
L power:VBUS #PWR06
U 1 1 5F9DBA8D
P 1870 1530
F 0 "#PWR06" H 1870 1380 50  0001 C CNN
F 1 "VBUS" H 1885 1703 50  0000 C CNN
F 2 "" H 1870 1530 50  0001 C CNN
F 3 "" H 1870 1530 50  0001 C CNN
	1    1870 1530
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R6
U 1 1 5F9DBA98
P 1870 1750
F 0 "R6" H 1811 1704 50  0000 R CNN
F 1 "1K" H 1811 1795 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 1870 1750 50  0001 C CNN
F 3 "https://lcsc.com/product-detail/Chip-Resistor-Surface-Mount_YAGEO-RC0603JR-071K1L_C246023.html" H 1870 1750 50  0001 C CNN
F 4 "RC0603JR-071K1L" H 1870 1750 50  0001 C CNN "manf#"
	1    1870 1750
	-1   0    0    1   
$EndComp
Wire Wire Line
	1750 1870 1870 1870
Wire Wire Line
	1870 1870 1870 1850
Wire Wire Line
	1870 1650 1870 1530
Text Label 870  1870 2    50   ~ 0
D0RX
Wire Wire Line
	870  1870 970  1870
Wire Wire Line
	970  1870 970  1740
Connection ~ 970  1870
$Comp
L Device:R_Small R2
U 1 1 5F9E2582
P 970 1640
F 0 "R2" H 820 1670 50  0000 L CNN
F 1 "1K" H 810 1600 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 970 1640 50  0001 C CNN
F 3 "https://lcsc.com/product-detail/Chip-Resistor-Surface-Mount_YAGEO-RC0603JR-071K1L_C246023.html" H 970 1640 50  0001 C CNN
F 4 "RC0603JR-071K1L" H 970 1640 50  0001 C CNN "manf#"
	1    970  1640
	1    0    0    -1  
$EndComp
Wire Wire Line
	970  1540 970  1490
$Comp
L power:+3.3V #PWR02
U 1 1 5F9E37F5
P 970 1490
F 0 "#PWR02" H 970 1340 50  0001 C CNN
F 1 "+3.3V" H 985 1663 50  0000 C CNN
F 2 "" H 970 1490 50  0001 C CNN
F 3 "" H 970 1490 50  0001 C CNN
	1    970  1490
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR01
U 1 1 5F9E483C
P 860 2930
F 0 "#PWR01" H 860 2780 50  0001 C CNN
F 1 "+3.3V" H 875 3103 50  0000 C CNN
F 2 "" H 860 2930 50  0001 C CNN
F 3 "" H 860 2930 50  0001 C CNN
	1    860  2930
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R1
U 1 1 5F9E5C52
P 1230 3000
F 0 "R1" V 1426 3000 50  0000 C CNN
F 1 "1K" V 1335 3000 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 1230 3000 50  0001 C CNN
F 3 "https://lcsc.com/product-detail/Chip-Resistor-Surface-Mount_YAGEO-RC0603JR-071K1L_C246023.html" H 1230 3000 50  0001 C CNN
F 4 "RC0603JR-071K1L" H 1230 3000 50  0001 C CNN "manf#"
	1    1230 3000
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1550 3000 1330 3000
Wire Wire Line
	1130 3000 860  3000
Wire Wire Line
	860  3000 860  2930
Text Label 1440 3200 2    50   ~ 0
D1TX
$Comp
L power:GND #PWR03
U 1 1 5F9E7A11
P 1110 2120
F 0 "#PWR03" H 1110 1870 50  0001 C CNN
F 1 "GND" H 1115 1947 50  0000 C CNN
F 2 "" H 1110 2120 50  0001 C CNN
F 3 "" H 1110 2120 50  0001 C CNN
	1    1110 2120
	1    0    0    -1  
$EndComp
Wire Wire Line
	1150 2070 1110 2070
Wire Wire Line
	1110 2070 1110 2120
$Comp
L Device:R_Small R5
U 1 1 5F9EA1EE
P 2320 2780
F 0 "R5" H 2379 2826 50  0000 L CNN
F 1 "1K" H 2379 2735 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 2320 2780 50  0001 C CNN
F 3 "https://lcsc.com/product-detail/Chip-Resistor-Surface-Mount_YAGEO-RC0603JR-071K1L_C246023.html" H 2320 2780 50  0001 C CNN
F 4 "RC0603JR-071K1L" H 2320 2780 50  0001 C CNN "manf#"
	1    2320 2780
	1    0    0    -1  
$EndComp
Wire Wire Line
	2320 2880 2320 3000
$Comp
L power:VBUS #PWR05
U 1 1 5F9EBFD8
P 2320 2610
F 0 "#PWR05" H 2320 2460 50  0001 C CNN
F 1 "VBUS" H 2335 2783 50  0000 C CNN
F 2 "" H 2320 2610 50  0001 C CNN
F 3 "" H 2320 2610 50  0001 C CNN
	1    2320 2610
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR09
U 1 1 5F9ED13F
P 4190 3400
F 0 "#PWR09" H 4190 3150 50  0001 C CNN
F 1 "GND" H 4195 3227 50  0000 C CNN
F 2 "" H 4190 3400 50  0001 C CNN
F 3 "" H 4190 3400 50  0001 C CNN
	1    4190 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	4190 3270 4190 3400
$Comp
L power:VBUS #PWR08
U 1 1 5F9EE32B
P 4190 1980
F 0 "#PWR08" H 4190 1830 50  0001 C CNN
F 1 "VBUS" H 4205 2153 50  0000 C CNN
F 2 "" H 4190 1980 50  0001 C CNN
F 3 "" H 4190 1980 50  0001 C CNN
	1    4190 1980
	1    0    0    -1  
$EndComp
Wire Wire Line
	4190 2170 4190 1980
$Comp
L power:VBUS #PWR010
U 1 1 5F9F0C0C
P 4760 1470
F 0 "#PWR010" H 4760 1320 50  0001 C CNN
F 1 "VBUS" H 4775 1643 50  0000 C CNN
F 2 "" H 4760 1470 50  0001 C CNN
F 3 "" H 4760 1470 50  0001 C CNN
	1    4760 1470
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C1
U 1 1 5F9F191F
P 4760 1640
F 0 "C1" H 4852 1686 50  0000 L CNN
F 1 "0.1uF" H 4852 1595 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 4760 1640 50  0001 C CNN
F 3 "https://lcsc.com/product-detail/Multilayer-Ceramic-Capacitors-MLCC-SMD-SMT_Walsin-Tech-Corp-0603F104Z160CT_C387984.html" H 4760 1640 50  0001 C CNN
F 4 "0603F104Z160CT" H 4760 1640 50  0001 C CNN "manf#"
	1    4760 1640
	1    0    0    -1  
$EndComp
Wire Wire Line
	4760 1470 4760 1540
$Comp
L power:GND #PWR011
U 1 1 5F9F297E
P 4760 1810
F 0 "#PWR011" H 4760 1560 50  0001 C CNN
F 1 "GND" H 4765 1637 50  0000 C CNN
F 2 "" H 4760 1810 50  0001 C CNN
F 3 "" H 4760 1810 50  0001 C CNN
	1    4760 1810
	1    0    0    -1  
$EndComp
Wire Wire Line
	4760 1810 4760 1740
$Comp
L Device:R_Small R9
U 1 1 5F9F467C
P 5340 1640
F 0 "R9" H 5281 1594 50  0000 R CNN
F 1 "4.7K" H 5281 1685 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 5340 1640 50  0001 C CNN
F 3 "https://lcsc.com/product-detail/Chip-Resistor-Surface-Mount_FH-Guangdong-Fenghua-Advanced-Tech-RS-05K472JT_C115310.html" H 5340 1640 50  0001 C CNN
F 4 "RS-05K472JT" H 5340 1640 50  0001 C CNN "manf#"
	1    5340 1640
	-1   0    0    1   
$EndComp
$Comp
L power:VBUS #PWR012
U 1 1 5F9F4B91
P 5340 1460
F 0 "#PWR012" H 5340 1310 50  0001 C CNN
F 1 "VBUS" H 5355 1633 50  0000 C CNN
F 2 "" H 5340 1460 50  0001 C CNN
F 3 "" H 5340 1460 50  0001 C CNN
	1    5340 1460
	1    0    0    -1  
$EndComp
Wire Wire Line
	5340 1540 5340 1460
Text Label 5340 1910 0    50   ~ 0
A
Text Label 4720 2870 0    50   ~ 0
A
Wire Wire Line
	5340 1740 5340 1910
$Comp
L Device:R_Small R11
U 1 1 5F9F94E0
P 5820 1640
F 0 "R11" H 5761 1594 50  0000 R CNN
F 1 "4.7K" H 5761 1685 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 5820 1640 50  0001 C CNN
F 3 "https://lcsc.com/product-detail/Chip-Resistor-Surface-Mount_FH-Guangdong-Fenghua-Advanced-Tech-RS-05K472JT_C115310.html" H 5820 1640 50  0001 C CNN
F 4 "RS-05K472JT" H 5820 1640 50  0001 C CNN "manf#"
	1    5820 1640
	-1   0    0    1   
$EndComp
Text Label 5820 1460 0    50   ~ 0
B
Wire Wire Line
	5820 1540 5820 1460
$Comp
L power:GND #PWR013
U 1 1 5F9FAABB
P 5820 1850
F 0 "#PWR013" H 5820 1600 50  0001 C CNN
F 1 "GND" H 5825 1677 50  0000 C CNN
F 2 "" H 5820 1850 50  0001 C CNN
F 3 "" H 5820 1850 50  0001 C CNN
	1    5820 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	5820 1850 5820 1740
Text Label 4680 2570 0    50   ~ 0
B
$Comp
L Device:R_Small R8
U 1 1 5F9FCB14
P 5050 2700
F 0 "R8" H 4991 2654 50  0000 R CNN
F 1 "120R" H 4991 2745 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 5050 2700 50  0001 C CNN
F 3 "https://lcsc.com/product-detail/Chip-Resistor-Surface-Mount_UNI-ROYAL-Uniroyal-Elec-0603SAJ0121T5E_C303866.html" H 5050 2700 50  0001 C CNN
F 4 "0603SAJ0121T5E" H 5050 2700 50  0001 C CNN "manf#"
	1    5050 2700
	-1   0    0    1   
$EndComp
Wire Wire Line
	4590 2570 5050 2570
Wire Wire Line
	5050 2600 5050 2570
Connection ~ 5050 2570
Wire Wire Line
	4590 2870 5050 2870
Wire Wire Line
	5050 2800 5050 2870
Connection ~ 5050 2870
Text Label 5740 2570 0    50   ~ 0
RS485B
Text Label 5740 2870 0    50   ~ 0
RS485A
$Comp
L Connector:Screw_Terminal_01x02 J1
U 1 1 5FA0A2EE
P 7410 2040
F 0 "J1" H 7490 2032 50  0000 L CNN
F 1 "Screw_Terminal_01x02" H 7490 1941 50  0000 L CNN
F 2 "TerminalBlock:TerminalBlock_Altech_AK300-2_P5.00mm" H 7410 2040 50  0001 C CNN
F 3 "~" H 7410 2040 50  0001 C CNN
	1    7410 2040
	1    0    0    -1  
$EndComp
Text Label 3690 2870 2    50   ~ 0
DI
Wire Wire Line
	3690 2870 3790 2870
Wire Wire Line
	2320 2680 2320 2610
Text Label 7130 2040 2    50   ~ 0
RS485B
Text Label 7130 2140 2    50   ~ 0
RS485A
Wire Wire Line
	7210 2140 7130 2140
Wire Wire Line
	7130 2040 7210 2040
Wire Wire Line
	5050 2870 5740 2870
Wire Wire Line
	5050 2570 5740 2570
Wire Wire Line
	1440 3200 1550 3200
Wire Wire Line
	970  1870 1150 1870
Wire Wire Line
	1750 2070 2040 2070
Wire Notes Line
	2780 480  2780 3750
Wire Notes Line
	470  3750 470  3720
Wire Notes Line
	6630 3750 6630 480 
Wire Notes Line
	11180 3750 11180 3670
Wire Notes Line
	470  3750 11180 3750
$Comp
L Connector_Generic:Conn_01x16 J1
U 1 1 5D375C76
P 9100 1700
F 0 "J1" H 9019 675 50  0000 C CNN
F 1 "feather long" H 9019 766 50  0000 C CNN
F 2 "TerminalBlock:TerminalBlock_Altech_AK300-2_P5.00mm" H 9100 1700 50  0001 C CNN
F 3 "~" H 9100 1700 50  0001 C CNN
	1    9100 1700
	1    0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x12 J2
U 1 1 5D375CC4
P 9500 1900
F 0 "J2" H 9420 1075 50  0000 C CNN
F 1 "feather short" H 9420 1166 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x12_P2.54mm_Vertical" H 9500 1900 50  0001 C CNN
F 3 "" H 9500 1900 50  0001 C CNN
	1    9500 1900
	-1   0    0    1   
$EndComp
Text Label 8700 900  0    50   ~ 0
~RST
Text Label 8700 1100 0    50   ~ 0
AREF
Text Label 8700 1300 0    50   ~ 0
A0
Text Label 8700 1400 0    50   ~ 0
A1
Text Label 8700 1500 0    50   ~ 0
A2
Text Label 8700 1600 0    50   ~ 0
A3
Text Label 8700 1700 0    50   ~ 0
A4
Text Label 8700 1800 0    50   ~ 0
A5
Text Label 8700 1900 0    50   ~ 0
SCK
Text Label 8700 2000 0    50   ~ 0
MOSI
Text Label 8700 2100 0    50   ~ 0
MISO
Text Label 8700 2200 0    50   ~ 0
RX
Text Label 8700 2300 0    50   ~ 0
TX
Text Label 8700 2400 0    50   ~ 0
FREE
Text Label 9950 1300 2    50   ~ 0
VBAT
Text Label 9950 1400 2    50   ~ 0
EN
Text Label 9950 1500 2    50   ~ 0
VUSB
Text Label 9950 1600 2    50   ~ 0
D6
Text Label 9950 1700 2    50   ~ 0
D5
Text Label 9950 1800 2    50   ~ 0
D4
Text Label 9950 1900 2    50   ~ 0
D3
Text Label 9950 2000 2    50   ~ 0
D2
Text Label 9950 2100 2    50   ~ 0
D1
Text Label 9950 2200 2    50   ~ 0
D0
Text Label 9950 2300 2    50   ~ 0
SCL
Text Label 9950 2400 2    50   ~ 0
SDA
Wire Wire Line
	8700 900  8900 900 
Wire Wire Line
	8700 1100 8900 1100
Wire Wire Line
	8700 1300 8900 1300
Wire Wire Line
	8700 1400 8900 1400
Wire Wire Line
	8700 1500 8900 1500
Wire Wire Line
	8700 1600 8900 1600
Wire Wire Line
	8700 1700 8900 1700
Wire Wire Line
	8700 1800 8900 1800
Wire Wire Line
	8700 1900 8900 1900
Wire Wire Line
	8700 2000 8900 2000
Wire Wire Line
	8700 2100 8900 2100
Wire Wire Line
	8700 2200 8900 2200
Wire Wire Line
	8700 2300 8900 2300
Wire Wire Line
	8700 2400 8900 2400
Wire Wire Line
	9700 1300 9950 1300
Wire Wire Line
	9700 1400 9950 1400
Wire Wire Line
	9700 1500 9950 1500
Wire Wire Line
	9700 1600 9950 1600
Wire Wire Line
	9700 1700 9950 1700
Wire Wire Line
	9700 1800 9950 1800
Wire Wire Line
	9700 1900 9950 1900
Wire Wire Line
	9700 2000 9950 2000
Wire Wire Line
	9700 2100 9950 2100
Wire Wire Line
	9700 2200 9950 2200
Wire Wire Line
	9700 2300 9950 2300
Wire Wire Line
	9700 2400 9950 2400
$Comp
L power:+3.3V #PWR0101
U 1 1 5D37877D
P 8550 900
F 0 "#PWR0101" H 8550 750 50  0001 C CNN
F 1 "+3.3V" H 8565 1073 50  0000 C CNN
F 2 "" H 8550 900 50  0001 C CNN
F 3 "" H 8550 900 50  0001 C CNN
	1    8550 900 
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 5D3787E4
P 8550 1300
F 0 "#PWR0102" H 8550 1050 50  0001 C CNN
F 1 "GND" H 8555 1127 50  0000 C CNN
F 2 "" H 8550 1300 50  0001 C CNN
F 3 "" H 8550 1300 50  0001 C CNN
	1    8550 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	8550 900  8550 1000
Wire Wire Line
	8550 1000 8900 1000
Wire Wire Line
	8550 1300 8550 1200
Wire Wire Line
	8550 1200 8900 1200
Wire Notes Line
	8350 500  8350 3750
$EndSCHEMATC
