.subckt TRACKS
+SE11 SE21 ref1
+SE12 SE22 ref2

*Parameters:
+length = 0.17145

*The following is the Cadence ASI transmission lines circuit model description Section
***********************************
*[Begin]
*[Source] Cadence Design Systems, Inc. 2DEM 19.0.4.10301.249381   004 05/12/2021
*[Model Type] 2DEM W-element RLGC model 
*[Physical Parameters]
*DEFAULT_2DEM_MODEL N = 2  Coupled Section Length = 171.45mm
*|Index     |Trace    |Layer Name    |Separation     |Width
*|0         |         |            |N/A            |0.10033mm
*|1         |         |            |0.30099mm       |0.10033mm
*[END] 
***********************************
.Model DEFAULT_2DEM_MODEL W MODELTYPE=RLGC N=2
+ L0=
+ 2.93226e-07
+ 2.70181e-08 2.93226e-07
+ C0=
+ 1.05322e-10
+ -2.95970e-12 1.05322e-10
+ R0=
+ 4.38320e+00
+ 0.00000e+00 4.38320e+00
+ G0=
+ 0.00000e+00
+ 0.00000e+00 0.00000e+00
+ Rs=
+ 1.86935e-03
+ 0.00000e+00 1.86935e-03
+ Gd=
+ 1.60308e-11
+ 0.00000e+00 1.60308e-11

W1 SE11 SE21 ref1 SE12 SE22 ref2
+ N=2 L='length' RLGCModel=DEFAULT_2DEM_MODEL FGD=5.00000000e+009
.ENDS
