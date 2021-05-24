
.subckt Tx_Default 5 7 8 in

*[MCP Begin]
*[MCP Ver] 1.2
*[MCP Source] Cadence Design Systems MCP Editor
*
*[REM]***********************************************************************
*[Connection] Tx_Out  Tx_Out
*[Connection Type] 
*[Power Nets]
*7	7	POWER
*[Ground Nets]
*8	8	GND
*[Signal Nets]
*5	5	TX
*
*[REM]***********************************************************************
*[Connection] Repeater  Repeater
*[Connection Type] Repeater
*[Ground Nets]
*2	8	8
*[Signal Nets]
*1	in	in
*
*[MCP End]
.ends Tx_Default


.subckt Tx_Default_OnDie_RC
+ in_5     in_7     in_8     out_5     out_7     out_8
* User-specified OnDie parasitics parameters
+ rshort = 0.001		$ Short Resistor
+ rpds = 0.3		$ PDS Resistor
+ cpds = 0.5n		$ PDS Capacitor

* NOTE - This is the TopXplorer generated sub-circuit definition
* for the OnDie parasitics based on the user-specified OnDie parameters.
* Editing of sub-circuit definition is NOT recommended.

** Signals
* For 5
r1_5 in_5 out_5 'rshort'

** Powers
* For 7
r1_7 in_7 out_7 'rshort'
r2_7 in_7 node_1_7 'rpds'
c1_7 node_1_7 in_8 'cpds'

** Grounds
* For 8
* .connect in_8 out_8
* .connect in_8 ngnd
* r_in_8_ngnd  in_8 ngnd 1e-5

.ends Tx_Default_OnDie_RC


.subckt Tx_Default_Pin_RLC
+ in_5     in_7     in_8     out_5     out_7     out_8
* Package RLC Parameters
+ R_pkg = 0.1m
+ L_pkg = 0.1nH
+ C_pkg = 1.0pF

* NOTE - This is the TopXplorer generated sub-circuit definition
* for the package parasitics based on the values of R_pin, L_pin and
* C_pin in the [Pin] section of the component 'Default' in 'ibis.ibs' file.
* Editing of sub-circuit definition is NOT recommended.

** Signals
x_5 in_5 out_5 in_8 onpkg_RLC R_Pin='R_pkg' L_Pin='L_pkg' C_Pin='C_pkg'

** Powers
* .connect in_7 out_7

** Grounds
* .connect in_8 out_8
* .connect in_8 ngnd
* r_in_8_ngnd  in_8 ngnd 1e-5

.subckt onpkg_RLC in out ngnd
+ R_Pin=0.1m
+ L_Pin=0.1nH
+ C_Pin=1.0pF
r1 in 1 R_Pin
l1 1 out L_Pin
c1 out ngnd C_Pin
.ends onpkg_RLC

.ends Tx_Default_Pin_RLC


.subckt Tx_Default_PkgModel
+ in_5     in_7     in_8     out_5     out_7     out_8

* NOTE - This is the TopXplorer generated sub-circuit definition
* Editing of sub-circuit definition is NOT recommended.

* .connect in_5 out_5
* .connect in_7 out_7
* .connect in_8 out_8
* .connect in_8 ngnd
r_in_8_ngnd  in_8 ngnd 1e-5

.ends Tx_Default_PkgModel

