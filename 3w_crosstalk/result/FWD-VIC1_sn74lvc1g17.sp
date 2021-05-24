
.subckt FWD-VIC1_LVC1G17_DSF 2 6 3 rxnode

*[MCP Begin]
*[MCP Ver] 1.2
*[MCP Source] Cadence Design Systems MCP Editor
*
*[REM]***********************************************************************
*[Connection] Rx_Out  Rx_Out
*[Connection Type] 
*[Power Nets]
*6	6	VCC
*[Ground Nets]
*3	3	GND
*[Signal Nets]
*2	2	A
*
*[REM]***********************************************************************
*[Connection] Repeater  Repeater
*[Connection Type] Repeater
*[Ground Nets]
*2	3	3
*[Signal Nets]
*1	rxnode	rxnode
*
*[MCP End]
.ends FWD-VIC1_LVC1G17_DSF


.subckt FWD-VIC1_LVC1G17_DSF_OnDie_RC
+ in_2     in_6     in_3     out_2     out_6     out_3
* User-specified OnDie parasitics parameters
+ rshort = 0.001		$ Short Resistor
+ rpds = 0.3		$ PDS Resistor
+ cpds = 0.5n		$ PDS Capacitor

* NOTE - This is the TopXplorer generated sub-circuit definition
* for the OnDie parasitics based on the user-specified OnDie parameters.
* Editing of sub-circuit definition is NOT recommended.

** Signals
* For 2
r1_2 in_2 out_2 'rshort'

** Powers
* For 6
r1_6 in_6 out_6 'rshort'
r2_6 in_6 node_1_6 'rpds'
c1_6 node_1_6 in_3 'cpds'

** Grounds
* For 3
* .connect in_3 out_3
* .connect in_3 ngnd
* r_in_3_ngnd  in_3 ngnd 1e-5

.ends FWD-VIC1_LVC1G17_DSF_OnDie_RC


.subckt FWD-VIC1_LVC1G17_DSF_Pin_RLC
+ in_2     in_6     in_3     out_2     out_6     out_3
* Package RLC Parameters
+ R_pkg = 0.041145
+ L_pkg = 0.422435nH
+ C_pkg = 0.109645pF

* NOTE - This is the TopXplorer generated sub-circuit definition
* for the package parasitics based on the values of R_pin, L_pin and
* C_pin in the [Pin] section of the component 'LVC1G17_DSF' in 'sn74lvc1g17.ibs' file.
* Editing of sub-circuit definition is NOT recommended.
* Warning: Pin parasitics found for GND pins; will be ignored.

** Signals
x_2 in_2 out_2 in_3 onpkg_RLC R_Pin=0.03325 L_Pin=0.33414nH C_Pin=0.10407pF

** Powers
x_6 in_6 out_6 in_3 onpkg_RLC R_Pin=0.04377 L_Pin=0.44894nH C_Pin=0.11085pF

** Grounds
* x_3 in_3 out_3 in_3 onpkg_RLC R_Pin=0.04429 L_Pin=0.45885nH C_Pin=0.11133pF

.subckt onpkg_RLC in out ngnd
+ R_Pin=0.041145
+ L_Pin=0.422435nH
+ C_Pin=0.109645pF
r1 in 1 R_Pin
l1 1 out L_Pin
c1 out ngnd C_Pin
.ends onpkg_RLC

.ends FWD-VIC1_LVC1G17_DSF_Pin_RLC


.subckt FWD-VIC1_LVC1G17_DSF_PkgModel
+ in_2     in_6     in_3     out_2     out_6     out_3

* NOTE - This is the TopXplorer generated sub-circuit definition
* Editing of sub-circuit definition is NOT recommended.

* .connect in_2 out_2
* .connect in_6 out_6
* .connect in_3 out_3
* .connect in_3 ngnd
r_in_3_ngnd  in_3 ngnd 1e-5

.ends FWD-VIC1_LVC1G17_DSF_PkgModel

