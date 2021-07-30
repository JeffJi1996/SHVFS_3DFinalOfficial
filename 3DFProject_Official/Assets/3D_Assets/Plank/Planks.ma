//Maya ASCII 2018 scene
//Name: Planks.ma
//Last modified: Wed, Jul 28, 2021 12:05:52 PM
//Codeset: 936
requires maya "2018";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2018";
fileInfo "version" "2018";
fileInfo "cutIdentifier" "201706261615-f9658c4cfc";
fileInfo "osv" "Microsoft Windows 8 , 64-bit  (Build 9200)\n";
fileInfo "license" "student";
createNode transform -s -n "persp";
	rename -uid "0BAF6966-4110-A484-4F86-6984D41223A9";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -66.213857176562996 73.245581542398469 176.7061590693863 ;
	setAttr ".r" -type "double3" -17.13835272962897 -36.600000000001117 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "02C02ABB-46CE-CD0D-C2EC-3AA6FC8FCC91";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 249.90310699438396;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
	setAttr ".ai_translator" -type "string" "perspective";
createNode transform -s -n "top";
	rename -uid "173DB5F4-4535-9E71-F36E-2BB795285088";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "D8716600-4D5E-5301-6432-56B79E221470";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "front";
	rename -uid "2E09AF49-4869-6538-E772-218932A09093";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "2BF396A7-48B1-BC54-06FE-D5BA1CCB5CF0";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "side";
	rename -uid "7A7295E5-4735-76A1-61F4-169639D81DB1";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "A5E4AFBB-43FC-F886-0CB7-59918B422643";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -n "SM_Plank_Whole";
	rename -uid "383E50BB-4C90-EBF6-C37A-C2B196350954";
	setAttr ".v" no;
createNode mesh -n "SM_Plank_WholeShape" -p "SM_Plank_Whole";
	rename -uid "E55C5FFD-4C08-D120-BAFA-5A8C6DF790E4";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.76361525058746338 0.84730452299118042 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 96 ".uvst[0].uvsp[0:95]" -type "float2" -0.35718825 0.76358747
		 -0.35718825 0.77872771 1.88442063 0.76358765 1.89946139 0.77872777 -0.35718825 0.91588116
		 1.88441849 0.91588134 1.89946139 0.9158814 -0.38727674 0.77872777 -0.35718825 0.94606721
		 1.88441932 0.94606739 1.91450727 0.9158814 1.91450715 0.77872777 1.88442063 0.74854183
		 1.88442016 0.77872771 -0.35718822 0.77872777 1.88441849 0.77872777 -0.35718825 0.93102139
		 1.88441956 0.93102157 1.88442004 0.91588098 -0.35718825 0.91588122 -0.35718822 0.74854165
		 -0.37223101 0.77872777 -0.37223101 0.91588128 -0.38727677 0.91588122 -0.36470962
		 0.76543456 -0.37038389 0.77110898 -0.36014187 0.77110893 -0.36014187 0.77110893 -0.36470959
		 0.77591312 -0.36470962 0.77591306 1.89761424 0.77110898 1.89194214 0.7654348 1.89193988
		 0.77591312 1.89193988 0.77591312 1.8873744 0.7711091 1.88737214 0.77110898 -0.37038389
		 0.9235 -0.36470962 0.9291743 -0.36470962 0.91869587 -0.36470959 0.91869587 -0.36014187
		 0.9235 -0.36014187 0.9235 1.89194095 0.92917448 1.89761424 0.92350018 1.88737214
		 0.92350012 1.88737321 0.92350012 1.89193988 0.91869605 1.89193988 0.91869599 -0.39479816
		 0.91869587 1.89194143 0.91869563 -0.36470962 0.9479143 -0.38912386 0.9235 1.88737369
		 0.92349976 -0.36014187 0.9535886 -0.36470962 0.91869587 1.92202866 0.91869605 1.88737297
		 0.95358884 -0.36014187 0.9235 1.9163543 0.92350018 1.89194071 0.94791448 -0.38912386
		 0.77110898 -0.36470959 0.74669456 1.89194143 0.77591306 -0.39479816 0.77591312 -0.36014184
		 0.7410202 1.88737369 0.77110893 1.89194202 0.74669474 1.9163543 0.77110898 -0.36014187
		 0.77110898 1.88737428 0.74102044 1.92202866 0.77591312 -0.36470962 0.77591312 -0.36470962
		 0.77110893 -0.36470962 0.77110893 -0.36470959 0.77110898 1.89193988 0.77110898 1.89193988
		 0.77110898 1.89194214 0.7711091 -0.36470959 0.9235 -0.36470962 0.9235 -0.36470962
		 0.9235 1.89194095 0.92350012 1.89193988 0.92350012 1.89193988 0.92350018 -0.39479816
		 0.9235 -0.36470962 0.9535886 1.89194143 0.92349976 -0.36470962 0.9235 1.89194071
		 0.95358884 1.92202866 0.92350018 -0.39479816 0.77110898 1.89194143 0.77110893 -0.36470959
		 0.7410202 1.89194202 0.74102044 -0.36470962 0.77110898 1.92202866 0.77110898;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 56 ".vt[0:55]"  -149.70713806 -9.70713615 1.00010001659 -149.00010681152 -10 1.00010001659
		 -149.00010681152 -9.70713615 1.70713603 -149.00010681152 -9.0001001358 2 -149.70713806 -9.0001001358 1.70713603
		 -150 -9.0001001358 1.00010001659 149.70713806 -9.70713615 1.00010001659 150 -9.0001001358 1.00010001659
		 149.70713806 -9.0001001358 1.70713603 149.00010681152 -9.0001001358 2 149.00010681152 -9.70713615 1.70713603
		 149.00010681152 -10 1.00010001659 -149.70713806 9.70713615 1.00010001659 -150 9.0001001358 1.00010001659
		 -149.70713806 9.0001001358 1.70713603 -149.00010681152 9.0001001358 2 -149.00010681152 9.70713615 1.70713603
		 -149.00010681152 10 1.00010001659 149.70713806 9.70713615 1.00010001659 149.00010681152 10 1.00010001659
		 149.00010681152 9.70713615 1.70713603 149.00010681152 9.0001001358 2 149.70713806 9.0001001358 1.70713603
		 150 9.0001001358 1.00010001659 -149.70713806 9.0001001358 -1.70713603 -150 9.0001001358 -1.00010001659
		 -149.70713806 9.70713615 -1.00010001659 -149.00010681152 10 -1.00010001659 -149.00010681152 9.70713615 -1.70713603
		 -149.00010681152 9.0001001358 -2 149.70713806 9.0001001358 -1.70713603 149.00010681152 9.0001001358 -2
		 149.00010681152 9.70713615 -1.70713603 149.00010681152 10 -1.00010001659 149.70713806 9.70713615 -1.00010001659
		 150 9.0001001358 -1.00010001659 -149.70713806 -9.70713615 -1.00010001659 -150 -9.0001001358 -1.00010001659
		 -149.70713806 -9.0001001358 -1.70713603 -149.00010681152 -9.0001001358 -2 -149.00010681152 -9.70713615 -1.70713603
		 -149.00010681152 -10 -1.00010001659 149.70713806 -9.70713615 -1.00010001659 149.00010681152 -10 -1.00010001659
		 149.00010681152 -9.70713615 -1.70713603 149.00010681152 -9.0001001358 -2 149.70713806 -9.0001001358 -1.70713603
		 150 -9.0001001358 -1.00010001659 -149.57719421 -9.57719135 1.57719088 149.57719421 -9.57719135 1.57719088
		 -149.57719421 9.57719135 1.57719088 149.57719421 9.57719135 1.57719088 -149.57719421 9.57719135 -1.57719088
		 149.57719421 9.57719135 -1.57719088 -149.57719421 -9.57719135 -1.57719088 149.57719421 -9.57719135 -1.57719088;
	setAttr -s 108 ".ed[0:107]"  1 0 1 0 36 0 36 41 1 41 1 1 0 5 1 5 37 1
		 37 36 1 3 2 1 2 10 0 10 9 1 9 3 1 2 1 1 1 11 1 11 10 1 5 4 1 4 14 0 14 13 1 13 5 1
		 4 3 1 3 15 1 15 14 1 7 6 1 6 42 0 42 47 1 47 7 1 6 11 1 11 43 1 43 42 1 9 8 1 8 22 0
		 22 21 1 21 9 1 8 7 1 7 23 1 23 22 1 13 12 1 12 26 0 26 25 1 25 13 1 12 17 1 17 27 1
		 27 26 1 17 16 1 16 20 0 20 19 1 19 17 1 16 15 1 15 21 1 21 20 1 19 18 1 18 34 0 34 33 1
		 33 19 1 18 23 1 23 35 1 35 34 1 25 24 1 24 38 0 38 37 1 37 25 1 24 29 1 29 39 1 39 38 1
		 29 28 1 28 32 0 32 31 1 31 29 1 28 27 1 27 33 1 33 32 1 31 30 1 30 46 0 46 45 1 45 31 1
		 30 35 1 35 47 1 47 46 1 41 40 1 40 44 0 44 43 1 43 41 1 40 39 1 39 45 1 45 44 1 0 48 0
		 48 4 0 2 48 0 6 49 0 49 10 0 8 49 0 12 50 0 50 16 0 14 50 0 18 51 0 51 22 0 20 51 0
		 24 52 0 52 28 0 26 52 0 30 53 0 53 34 0 32 53 0 36 54 0 54 40 0 38 54 0 42 55 0 55 46 0
		 44 55 0;
	setAttr -s 54 -ch 216 ".fc[0:53]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 24 61 20
		f 4 4 5 6 -2
		mu 0 4 25 21 7 60
		f 4 7 8 9 10
		mu 0 4 1 26 35 15
		f 4 11 12 13 -9
		mu 0 4 27 0 2 34
		f 4 14 15 16 17
		mu 0 4 21 28 39 22
		f 4 18 19 20 -16
		mu 0 4 29 1 4 38
		f 4 21 22 23 24
		mu 0 4 3 30 67 11
		f 4 25 26 27 -23
		mu 0 4 31 2 12 66
		f 4 28 29 30 31
		mu 0 4 15 32 47 5
		f 4 32 33 34 -30
		mu 0 4 33 3 6 46
		f 4 35 36 37 38
		mu 0 4 22 36 51 23
		f 4 39 40 41 -37
		mu 0 4 37 16 8 50
		f 4 42 43 44 45
		mu 0 4 16 40 45 17
		f 4 46 47 48 -44
		mu 0 4 41 4 5 44
		f 4 49 50 51 52
		mu 0 4 17 42 59 9
		f 4 53 54 55 -51
		mu 0 4 43 6 10 58
		f 4 56 57 58 59
		mu 0 4 23 48 63 7
		f 4 60 61 62 -58
		mu 0 4 49 18 13 62
		f 4 63 64 65 66
		mu 0 4 18 52 57 19
		f 4 67 68 69 -65
		mu 0 4 53 8 9 56
		f 4 70 71 72 73
		mu 0 4 19 54 71 14
		f 4 74 75 76 -72
		mu 0 4 55 10 11 70
		f 4 77 78 79 80
		mu 0 4 20 64 69 12
		f 4 81 82 83 -79
		mu 0 4 65 13 14 68
		f 4 -11 -32 -48 -20
		mu 0 4 1 15 5 4
		f 4 -46 -53 -69 -41
		mu 0 4 16 17 9 8
		f 4 -67 -74 -83 -62
		mu 0 4 18 19 14 13
		f 4 -81 -27 -13 -4
		mu 0 4 20 12 2 0
		f 4 -25 -76 -55 -34
		mu 0 4 3 11 10 6
		f 4 -6 -18 -39 -60
		mu 0 4 7 21 22 23
		f 4 -15 -5 84 85
		mu 0 4 28 21 25 74
		f 4 -1 -12 86 -85
		mu 0 4 24 0 27 72
		f 4 -8 -19 -86 -87
		mu 0 4 26 1 29 73
		f 4 -14 -26 87 88
		mu 0 4 34 2 31 77
		f 4 -22 -33 89 -88
		mu 0 4 30 3 33 75
		f 4 -29 -10 -89 -90
		mu 0 4 32 15 35 76
		f 4 -43 -40 90 91
		mu 0 4 40 16 37 80
		f 4 -36 -17 92 -91
		mu 0 4 36 22 39 78
		f 4 -21 -47 -92 -93
		mu 0 4 38 4 41 79
		f 4 -35 -54 93 94
		mu 0 4 46 6 43 83
		f 4 -50 -45 95 -94
		mu 0 4 42 17 45 81
		f 4 -49 -31 -95 -96
		mu 0 4 44 5 47 82
		f 4 -64 -61 96 97
		mu 0 4 52 18 49 86
		f 4 -57 -38 98 -97
		mu 0 4 48 23 51 84
		f 4 -42 -68 -98 -99
		mu 0 4 50 8 53 85
		f 4 -56 -75 99 100
		mu 0 4 58 10 55 89
		f 4 -71 -66 101 -100
		mu 0 4 54 19 57 87
		f 4 -70 -52 -101 -102
		mu 0 4 56 9 59 88
		f 4 -78 -3 102 103
		mu 0 4 64 20 61 92
		f 4 -7 -59 104 -103
		mu 0 4 60 7 63 90
		f 4 -63 -82 -104 -105
		mu 0 4 62 13 65 91
		f 4 -77 -24 105 106
		mu 0 4 70 11 67 95
		f 4 -28 -80 107 -106
		mu 0 4 66 12 69 93
		f 4 -84 -73 -107 -108
		mu 0 4 68 14 71 94;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "SM_Plank_01";
	rename -uid "DFF0D944-42E1-B3AC-5B0F-E7A9FE0EDBB4";
	setAttr ".v" no;
	setAttr ".rp" -type "double3" -111.22322717626079 2.5102201108850863e-06 -1.2908443816073145e-06 ;
	setAttr ".sp" -type "double3" -111.22322717626079 2.5102201108850863e-06 -1.2908443816073145e-06 ;
createNode mesh -n "SM_Plank_01Shape" -p "SM_Plank_01";
	rename -uid "AB8B0641-4E2A-065D-B339-29865B57C05A";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:9]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" -0.2604343444108963 0.80918854475021362 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 32 ".uvst[0].uvsp[0:31]" -type "float2" 1.22564316 0.56176221
		 1.22564316 0.69487703 -0.22564316 0.56176221 -0.22564316 0.69487703 -0.29522553 0.92350006
		 -0.31160808 0.77110887 0.17385828 0.77110893 0.084709316 0.92350006 -0.29528812 0.9535886
		 -0.2952255 0.92350006 0.084709525 0.92350006 0.07743603 0.95358866 1.83890247 0.77110893
		 1.8225199 0.92349982 1.4497956 0.92349982 1.36064649 0.77110893 -0.31160805 0.77110893
		 -0.3116706 0.7410202 0.16658545 0.7410202 0.17385882 0.77110898 1.22564316 0.56176221
		 1.22564316 0.69487703 -0.22564316 0.69487703 -0.22564316 0.56176221 0.49507111 0.69487703
		 -0.30336118 0.84782201 0.49507111 0.56176221 1.83065557 0.84782195 0.49507111 0.69487703
		 1.40552378 0.84782195 0.12898102 0.84782207 0.49507111 0.56176221;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt";
	setAttr ".pt[0]" -type "float3" -1.2398629 0 0 ;
	setAttr ".pt[2]" -type "float3" -0.40972543 -0.46331289 0 ;
	setAttr ".pt[4]" -type "float3" 0 0.2216551 0 ;
	setAttr ".pt[5]" -type "float3" 0 -0.30586147 0 ;
	setAttr ".pt[8]" -type "float3" 1.2933935 -1.2405356 0 ;
	setAttr ".pt[9]" -type "float3" 0.95050061 1.1920929e-07 0 ;
	setAttr ".pt[10]" -type "float3" -2.3841858e-07 1.3968085 0 ;
	setAttr ".pt[11]" -type "float3" -1.3986018 0 0 ;
	setAttr -s 12 ".vt[0:11]"  -78.40254211 -10 2.000000238419 -79.36946106 -10 -1.99999976
		 -90.25404358 10 1.99999988 -91.22097778 10 -2 -142.94065857 -10.000001907349 2 -140.76275635 10 2
		 -140.77107239 10 -2 -142.94897461 -10 -1.99999976 -141.84429932 0.067923546 2 -141.85263062 0.0679245 -1.99999988
		 -85.33547211 0.0679245 -1.99999988 -84.36854553 0.0679245 2;
	setAttr -s 20 ".ed[0:19]"  0 1 0 0 11 0 1 10 0 2 3 0 4 0 0 5 2 0 6 3 0
		 7 1 0 4 8 0 5 6 0 6 9 0 7 4 0 8 5 0 9 7 0 8 9 1 10 3 0 9 10 1 11 2 0 10 11 1 11 8 1;
	setAttr -s 10 -ch 40 ".fc[0:9]" -type "polyFaces" 
		f 4 0 2 18 -2
		mu 0 4 0 1 28 31
		f 4 19 -9 4 1
		mu 0 4 30 25 5 6
		f 4 -10 5 3 -7
		mu 0 4 8 9 10 11
		f 4 -14 16 -3 -8
		mu 0 4 12 27 29 15
		f 4 -12 7 -1 -5
		mu 0 4 16 17 18 19
		f 4 11 8 14 13
		mu 0 4 20 21 24 26
		f 4 -15 12 9 10
		mu 0 4 26 24 22 23
		f 4 -17 -11 6 -16
		mu 0 4 29 27 13 14
		f 4 -19 15 -4 -18
		mu 0 4 31 28 3 2
		f 4 -13 -20 17 -6
		mu 0 4 4 25 30 7;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "SM_Plank_02";
	rename -uid "BD15BEFA-49F4-9F92-6B66-A6840A36834F";
	setAttr ".v" no;
	setAttr ".rp" -type "double3" -56.328374373062161 -5.9516441464069203e-07 -2.8568315890709073e-07 ;
	setAttr ".sp" -type "double3" -56.328374373062161 -5.9516441464069203e-07 -2.8568315890709073e-07 ;
createNode mesh -n "SM_Plank_02Shape" -p "SM_Plank_02";
	rename -uid "80327C15-4B44-CE00-5E4E-3D971077E4EF";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:9]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.25063024461269379 0.92350006103515625 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 32 ".uvst[0].uvsp[0:31]" -type "float2" 0.084709316 0.92350006
		 0.17385828 0.77110893 0.51579964 0.77110893 0.53012943 0.92350006 0.07743603 0.95358866
		 0.084709525 0.92350006 0.53012979 0.92350006 0.53319913 0.95358872 1.36064649 0.77110893
		 1.4497956 0.92349982 0.99403244 0.92349988 1.0083620548 0.77110893 0.17385882 0.77110898
		 0.16658545 0.7410202 0.51886988 0.74102026 0.51580054 0.77110898 1.22564316 0.56176221
		 1.22564316 0.69487703 -0.22564316 0.69487703 -0.22564316 0.56176221 1.22564316 0.56176221
		 1.22564316 0.69487703 -0.22564316 0.69487703 -0.22564316 0.56176221 0.30123284 0.77110887
		 0.3012335 0.77110898 0.25063038 0.92350006 0.25063011 0.92350006 1.28002191 0.92349982
		 0.24720965 0.9535886 0.29781282 0.7410202 1.22941899 0.77110887;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 6 ".pt";
	setAttr ".pt[0]" -type "float3" 0.86495447 0.7103675 0 ;
	setAttr ".pt[1]" -type "float3" 0.96853065 -0.48502731 0 ;
	setAttr ".pt[4]" -type "float3" -0.58872306 0.26370367 0 ;
	setAttr ".pt[5]" -type "float3" -0.76326394 -0.25124758 0 ;
	setAttr ".pt[8]" -type "float3" -1.1863917 0.85264558 0 ;
	setAttr ".pt[9]" -type "float3" 2.1998374 -1.9315093 -1.4121405 ;
	setAttr -s 12 ".vt[0:11]"  -78.40254211 -10 2.000000238419 -90.25404358 10 1.99999976
		 -91.22097778 10 -2 -79.36946106 -10 -2 -32.94470596 -10 2 -31.03969574 10 2 -30.63164902 10 -2
		 -32.53665161 -10 -1.99999952 -61.46931076 -10 2 -68.19645691 10 1.99999976 -68.65119934 10 -2
		 -61.92404175 -10 -1.99999976;
	setAttr -s 20 ".ed[0:19]"  0 8 0 1 9 0 2 10 0 3 11 0 0 1 0 1 2 0 2 3 0
		 3 0 0 4 5 0 5 6 0 6 7 0 7 4 0 8 4 0 9 5 0 8 9 1 10 6 0 9 10 1 11 7 0 10 11 1 11 8 1;
	setAttr -s 10 -ch 40 ".fc[0:9]" -type "polyFaces" 
		f 4 -5 0 14 -2
		mu 0 4 0 1 24 27
		f 4 -6 1 16 -3
		mu 0 4 4 5 26 29
		f 4 -7 2 18 -4
		mu 0 4 8 9 28 31
		f 4 -8 3 19 -1
		mu 0 4 12 13 30 25
		f 4 7 4 5 6
		mu 0 4 16 17 18 19
		f 4 -12 -11 -10 -9
		mu 0 4 20 21 22 23
		f 4 -15 12 8 -14
		mu 0 4 27 24 2 3
		f 4 -17 13 9 -16
		mu 0 4 29 26 6 7
		f 4 -19 15 10 -18
		mu 0 4 31 28 10 11
		f 4 -20 17 11 -13
		mu 0 4 25 30 14 15;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "SM_Plank_03";
	rename -uid "9E908DE0-4A8F-F40D-1389-9EA79B0A4F20";
	setAttr ".v" no;
	setAttr ".rp" -type "double3" -0.89826074075523366 -2.9611954666108886e-07 6.7523895364018927e-07 ;
	setAttr ".sp" -type "double3" -0.89826074075523366 -2.9611954666108886e-07 6.7523895364018927e-07 ;
createNode mesh -n "SM_Plank_03Shape" -p "SM_Plank_03";
	rename -uid "A835DF50-4716-CC3A-50CD-0EA88B626A9E";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:9]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.87225651741027832 0.66643556952476501 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 32 ".uvst[0].uvsp[0:31]" -type "float2" 1.22564316 0.56176221
		 1.22564316 0.69487703 -0.22564316 0.56176221 -0.22564316 0.69487703 1.22564316 0.56176221
		 1.22564316 0.69487703 -0.22564316 0.69487703 -0.22564316 0.56176221 0.53012943 0.92350006
		 0.51579964 0.77110893 1.014244676 0.77110893 0.976987 0.92350006 0.53319913 0.95358872
		 0.53012979 0.92350006 0.9769876 0.92350006 0.9842177 0.95358872 1.0083620548 0.77110893
		 0.99403244 0.92349988 0.54301375 0.92349994 0.50575614 0.77110898 0.51580054 0.77110898
		 0.51886988 0.74102026 1.02147603 0.74102032 1.014245987 0.77110904 0.76666951 0.92350006
		 0.76666903 0.92350006 0.75529015 0.92349994 0.77194136 0.95358872 0.78491944 0.74102032
		 0.74231261 0.77110898 0.77964658 0.77110893 0.77964771 0.77110898;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 9 ".pt";
	setAttr ".pt[0]" -type "float3" 0.59242046 0.64185923 0 ;
	setAttr ".pt[1]" -type "float3" 3.1571312 1.4637797 0 ;
	setAttr ".pt[3]" -type "float3" 0 -2.0526574 0 ;
	setAttr ".pt[4]" -type "float3" -2.4522243 0 0 ;
	setAttr ".pt[6]" -type "float3" -1.2595558 -1.2050554 0 ;
	setAttr ".pt[8]" -type "float3" -5.9849834 -2.7840586 -0.75585425 ;
	setAttr ".pt[9]" -type "float3" 0 0 1.7363279 ;
	setAttr ".pt[10]" -type "float3" 0 -0.83427125 -1.0426288 ;
	setAttr ".pt[11]" -type "float3" 3.0658817 2.2220612 0 ;
	setAttr -s 12 ".vt[0:11]"  -32.53665924 -10 -2 -32.94470978 -9.99999809 1.99999976
		 -30.63165092 10 -2.000000953674 -31.039699554 10 1.99999905 33.31879425 -10 2 34.27996445 -10 -1.99999976
		 28.36576462 10.000000953674 2.000000238419 29.32693481 10 -2.000000238419 0.40599442 10 1.99999964
		 1.10683155 10 -2.000000476837 2.83205795 -10 -1.99999988 2.13121986 -9.99999905 1.99999988;
	setAttr -s 20 ".ed[0:19]"  0 1 0 0 2 0 1 3 0 2 3 0 4 5 0 4 6 0 5 7 0
		 6 7 0 1 11 0 3 8 0 2 9 0 0 10 0 8 6 0 9 7 0 8 9 1 10 5 0 9 10 1 11 4 0 10 11 1 11 8 1;
	setAttr -s 10 -ch 40 ".fc[0:9]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2
		f 4 4 6 -8 -6
		mu 0 4 4 5 6 7
		f 4 -3 8 19 -10
		mu 0 4 8 9 30 25
		f 4 3 9 14 -11
		mu 0 4 12 13 24 27
		f 4 1 10 16 -12
		mu 0 4 16 17 26 29
		f 4 -1 11 18 -9
		mu 0 4 20 21 28 31
		f 4 -15 12 7 -14
		mu 0 4 27 24 14 15
		f 4 -17 13 -7 -16
		mu 0 4 29 26 18 19
		f 4 -19 15 -5 -18
		mu 0 4 31 28 22 23
		f 4 -20 17 5 -13
		mu 0 4 25 30 10 11;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "SM_Plank_04";
	rename -uid "C956041E-4A9D-DF84-BF8A-BC9F88E8A4B4";
	setAttr ".rp" -type "double3" 67.955469251606203 -2.1927720679215668e-06 6.6082450089766098e-07 ;
	setAttr ".sp" -type "double3" 67.955469251606203 -2.1927720679215668e-06 6.6082450089766098e-07 ;
createNode mesh -n "SM_Plank_04Shape" -p "SM_Plank_04";
	rename -uid "F2B10F84-436F-9B95-2732-F483A3D3023F";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:9]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 1.0881538987159729 0.69276952743530273 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 32 ".uvst[0].uvsp[0:31]" -type "float2" 0.976987 0.92350006
		 1.014244676 0.77110893 1.36952114 0.77110898 1.60887206 0.92350012 0.9842177 0.95358872
		 0.9769876 0.92350006 1.60887301 0.92350012 1.62444377 0.95358878 0.50575614 0.77110898
		 0.54301375 0.92349994 -0.097212598 0.92349994 0.14213838 0.77110898 1.014245987 0.77110904
		 1.02147603 0.74102032 1.38509381 0.74102032 1.36952281 0.7711091 1.22564316 0.56176221
		 1.22564316 0.69487703 -0.22564316 0.69487703 -0.22564316 0.56176221 1.22564316 0.56176221
		 1.22564316 0.69487703 -0.22564316 0.69487703 -0.22564316 0.56176221 0.72406471 0.69487703
		 1.0013680458 0.82377678 0.72406471 0.56176221 0.51863277 0.82377672 0.059416391 0.82377672
		 0.72406471 0.69487703 1.45224309 0.82377684 0.72406471 0.56176221;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 2 ".pt";
	setAttr ".pt[8]" -type "float3" 1.5271848 1.8520758 0.65468496 ;
	setAttr ".pt[11]" -type "float3" 0 3.9137342 0 ;
	setAttr -s 12 ".vt[0:11]"  35.17556381 -8.14297104 2.000000476837 28.36576462 10 1.99999988
		 29.32693481 8.71539688 -2 34.27996445 -10.000000953674 -2.000000238419 80.54941559 -8.094621658 2.000000238419
		 107.65634918 10 2 114.43885803 10 -2 82.61943817 -10 -1.99999976 32.82203293 -1.87258673 2.000000476837
		 32.56814957 -3.53178096 -2 93.61653137 -3.087808847 -1.99999988 89.91783142 -1.84094763 2.000000238419;
	setAttr -s 20 ".ed[0:19]"  0 4 0 1 5 0 2 6 0 3 7 0 0 8 0 1 2 0 2 9 0
		 3 0 0 4 11 0 5 6 0 6 10 0 7 4 0 8 1 0 9 3 0 8 9 1 10 7 0 9 10 1 11 5 0 10 11 1 11 8 1;
	setAttr -s 10 -ch 40 ".fc[0:9]" -type "polyFaces" 
		f 4 19 -5 0 8
		mu 0 4 30 25 1 2
		f 4 -6 1 9 -3
		mu 0 4 4 5 6 7
		f 4 -14 16 15 -4
		mu 0 4 8 27 28 11
		f 4 -8 3 11 -1
		mu 0 4 12 13 14 15
		f 4 7 4 14 13
		mu 0 4 16 17 24 26
		f 4 -12 -16 18 -9
		mu 0 4 20 21 29 31
		f 4 -15 12 5 6
		mu 0 4 26 24 18 19
		f 4 -17 -7 2 10
		mu 0 4 28 27 9 10
		f 4 -19 -11 -10 -18
		mu 0 4 31 29 22 23
		f 4 -13 -20 17 -2
		mu 0 4 0 25 30 3;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode lightLinker -s -n "lightLinker1";
	rename -uid "CD1B9BDE-4ECE-C094-046F-1AAA1031D91B";
	setAttr -s 3 ".lnk";
	setAttr -s 3 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "280EECDA-4DF2-CFF3-55F4-ABB28146DE1C";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "6D4C49ED-4606-7633-808F-0DAFBCE4FCFA";
createNode displayLayerManager -n "layerManager";
	rename -uid "62ECB348-4BD0-03DD-A64D-90AFDB2D8A4C";
createNode displayLayer -n "defaultLayer";
	rename -uid "770A6F07-40B2-E3D8-818A-49A8AB1BBF8C";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "0B5E8EC6-427D-72A9-EAC1-3B952A559844";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "EBB3293F-493E-FAAD-89EF-B587B1CAF407";
	setAttr ".g" yes;
createNode lambert -n "MI_Wood_02";
	rename -uid "5CE46327-4B41-F998-641E-20AD0ADCE3B3";
createNode shadingEngine -n "lambert2SG";
	rename -uid "F634AFBD-42D1-686D-086F-89806A95BD51";
	setAttr ".ihi" 0;
	setAttr -s 5 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 4 ".gn";
createNode materialInfo -n "materialInfo1";
	rename -uid "510878B5-4FE4-57FC-28A7-0A9E5E371B87";
createNode file -n "file1";
	rename -uid "591D2994-421E-62A0-B253-5B860632DD58";
	setAttr ".ftn" -type "string" "D:/T6/3D_Assets/Wall_Bar/Wallbar_Wood/T_Wood_02_albedo.png";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture1";
	rename -uid "F98CBDDF-4BFC-0695-1B45-00B8C99445AD";
createNode file -n "file2";
	rename -uid "5FC68347-41B9-401A-BF5F-D7AB3642456D";
	setAttr ".ail" yes;
	setAttr ".ftn" -type "string" "D:/T6/3D_Assets/Wall_Bar/Wallbar_Wood/T_Wood_02_normal.png";
	setAttr ".cs" -type "string" "Raw";
createNode place2dTexture -n "place2dTexture2";
	rename -uid "70B4D2BB-4A64-E58B-71D8-5DA4A244E7E5";
createNode bump2d -n "bump2d1";
	rename -uid "DCAF7436-4C36-80E1-89F3-89B8053E7609";
	setAttr ".bi" 1;
	setAttr ".vc1" -type "float3" 0 0.00077000028 0 ;
	setAttr ".vc2" -type "float3" 9.9999997e-06 9.9999997e-06 0 ;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "7855064B-4551-F1CA-67D2-C4963895AEFF";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n"
		+ "            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n"
		+ "            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n"
		+ "            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 625\n            -height 359\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 625\n            -height 358\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n"
		+ "            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n"
		+ "            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 625\n            -height 358\n"
		+ "            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n"
		+ "            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n"
		+ "            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n"
		+ "            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1257\n            -height 761\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n"
		+ "            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n"
		+ "            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n"
		+ "            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"0\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n"
		+ "                -showParentContainers 1\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -isSet 0\n                -isSetMember 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n"
		+ "                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                -selectionOrder \"display\" \n                -expandAttribute 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 1\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n"
		+ "                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -showCurveNames 0\n                -showActiveCurveNames 0\n                -clipTime \"on\" \n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                -valueLinesToggle 1\n                -outliner \"graphEditor1OutlineEd\" \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 1\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n"
		+ "                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n"
		+ "                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n"
		+ "                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -highlightConnections 0\n                -copyConnectionsOnPaste 0\n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n"
		+ "                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n"
		+ "\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n"
		+ "\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1257\\n    -height 761\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1257\\n    -height 761\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "EFA0E5B1-4815-9F3F-0075-17A0E82AD5F3";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode nodeGraphEditorInfo -n "hyperShadePrimaryNodeEditorSavedTabsInfo";
	rename -uid "91E46756-45CE-4C9B-3816-BD82467F0D66";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -553.57923865436646 -593.11949397540843 ;
	setAttr ".tgi[0].vh" -type "double2" 544.36088062468104 608.59568383663043 ;
	setAttr -s 7 ".tgi[0].ni";
	setAttr ".tgi[0].ni[0].x" -95.714286804199219;
	setAttr ".tgi[0].ni[0].y" 175.71427917480469;
	setAttr ".tgi[0].ni[0].nvs" 1923;
	setAttr ".tgi[0].ni[1].x" -402.85714721679688;
	setAttr ".tgi[0].ni[1].y" 154.28572082519531;
	setAttr ".tgi[0].ni[1].nvs" 1923;
	setAttr ".tgi[0].ni[2].x" -402.85714721679688;
	setAttr ".tgi[0].ni[2].y" -22.857143402099609;
	setAttr ".tgi[0].ni[2].nvs" 1923;
	setAttr ".tgi[0].ni[3].x" -710;
	setAttr ".tgi[0].ni[3].y" -44.285713195800781;
	setAttr ".tgi[0].ni[3].nvs" 1923;
	setAttr ".tgi[0].ni[4].x" -95.714286804199219;
	setAttr ".tgi[0].ni[4].nvs" 1923;
	setAttr ".tgi[0].ni[5].x" 211.42857360839844;
	setAttr ".tgi[0].ni[5].y" 155.71427917480469;
	setAttr ".tgi[0].ni[5].nvs" 1923;
	setAttr ".tgi[0].ni[6].x" 518.5714111328125;
	setAttr ".tgi[0].ni[6].y" 155.71427917480469;
	setAttr ".tgi[0].ni[6].nvs" 1923;
createNode groupId -n "groupId16";
	rename -uid "6BEC8DA5-458E-3C19-BEF7-29AE14D53357";
	setAttr ".ihi" 0;
createNode groupId -n "groupId17";
	rename -uid "608852D8-45A0-C320-BA1D-BFA9468C9E9C";
	setAttr ".ihi" 0;
createNode groupId -n "groupId18";
	rename -uid "8900EC10-4ADD-716C-74B5-058B4B27E396";
	setAttr ".ihi" 0;
createNode groupId -n "groupId19";
	rename -uid "876BD5D9-4983-5162-C78C-97ACDA159079";
	setAttr ".ihi" 0;
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -s 3 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 5 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 3 ".u";
select -ne :defaultRenderingList1;
select -ne :defaultTextureList1;
	setAttr -s 2 ".tx";
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	setAttr ".ren" -type "string" "arnold";
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :ikSystem;
	setAttr -s 4 ".sol";
connectAttr "groupId16.id" "SM_Plank_01Shape.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "SM_Plank_01Shape.iog.og[0].gco";
connectAttr "groupId17.id" "SM_Plank_02Shape.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "SM_Plank_02Shape.iog.og[0].gco";
connectAttr "groupId18.id" "SM_Plank_03Shape.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "SM_Plank_03Shape.iog.og[0].gco";
connectAttr "groupId19.id" "SM_Plank_04Shape.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "SM_Plank_04Shape.iog.og[0].gco";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "file1.oc" "MI_Wood_02.c";
connectAttr "bump2d1.o" "MI_Wood_02.n";
connectAttr "MI_Wood_02.oc" "lambert2SG.ss";
connectAttr "SM_Plank_WholeShape.iog" "lambert2SG.dsm" -na;
connectAttr "SM_Plank_01Shape.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "SM_Plank_02Shape.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "SM_Plank_03Shape.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "SM_Plank_04Shape.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "groupId16.msg" "lambert2SG.gn" -na;
connectAttr "groupId17.msg" "lambert2SG.gn" -na;
connectAttr "groupId18.msg" "lambert2SG.gn" -na;
connectAttr "groupId19.msg" "lambert2SG.gn" -na;
connectAttr "lambert2SG.msg" "materialInfo1.sg";
connectAttr "MI_Wood_02.msg" "materialInfo1.m";
connectAttr "file2.msg" "materialInfo1.t" -na;
connectAttr ":defaultColorMgtGlobals.cme" "file1.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file1.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file1.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file1.ws";
connectAttr "place2dTexture1.c" "file1.c";
connectAttr "place2dTexture1.tf" "file1.tf";
connectAttr "place2dTexture1.rf" "file1.rf";
connectAttr "place2dTexture1.mu" "file1.mu";
connectAttr "place2dTexture1.mv" "file1.mv";
connectAttr "place2dTexture1.s" "file1.s";
connectAttr "place2dTexture1.wu" "file1.wu";
connectAttr "place2dTexture1.wv" "file1.wv";
connectAttr "place2dTexture1.re" "file1.re";
connectAttr "place2dTexture1.of" "file1.of";
connectAttr "place2dTexture1.r" "file1.ro";
connectAttr "place2dTexture1.n" "file1.n";
connectAttr "place2dTexture1.vt1" "file1.vt1";
connectAttr "place2dTexture1.vt2" "file1.vt2";
connectAttr "place2dTexture1.vt3" "file1.vt3";
connectAttr "place2dTexture1.vc1" "file1.vc1";
connectAttr "place2dTexture1.o" "file1.uv";
connectAttr "place2dTexture1.ofs" "file1.fs";
connectAttr ":defaultColorMgtGlobals.cme" "file2.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file2.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file2.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file2.ws";
connectAttr "place2dTexture2.c" "file2.c";
connectAttr "place2dTexture2.tf" "file2.tf";
connectAttr "place2dTexture2.rf" "file2.rf";
connectAttr "place2dTexture2.mu" "file2.mu";
connectAttr "place2dTexture2.mv" "file2.mv";
connectAttr "place2dTexture2.s" "file2.s";
connectAttr "place2dTexture2.wu" "file2.wu";
connectAttr "place2dTexture2.wv" "file2.wv";
connectAttr "place2dTexture2.re" "file2.re";
connectAttr "place2dTexture2.of" "file2.of";
connectAttr "place2dTexture2.r" "file2.ro";
connectAttr "place2dTexture2.n" "file2.n";
connectAttr "place2dTexture2.vt1" "file2.vt1";
connectAttr "place2dTexture2.vt2" "file2.vt2";
connectAttr "place2dTexture2.vt3" "file2.vt3";
connectAttr "place2dTexture2.vc1" "file2.vc1";
connectAttr "place2dTexture2.o" "file2.uv";
connectAttr "place2dTexture2.ofs" "file2.fs";
connectAttr "file2.oa" "bump2d1.bv";
connectAttr "file1.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[0].dn"
		;
connectAttr "place2dTexture1.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[1].dn"
		;
connectAttr "file2.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[2].dn"
		;
connectAttr "place2dTexture2.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[3].dn"
		;
connectAttr "bump2d1.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[4].dn"
		;
connectAttr "MI_Wood_02.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[5].dn"
		;
connectAttr "lambert2SG.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[6].dn"
		;
connectAttr "lambert2SG.pa" ":renderPartition.st" -na;
connectAttr "MI_Wood_02.msg" ":defaultShaderList1.s" -na;
connectAttr "place2dTexture1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "bump2d1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "file1.msg" ":defaultTextureList1.tx" -na;
connectAttr "file2.msg" ":defaultTextureList1.tx" -na;
// End of Planks.ma
