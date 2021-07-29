//Maya ASCII 2018 scene
//Name: Books.ma
//Last modified: Fri, Jul 23, 2021 10:51:58 AM
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
	rename -uid "5410BAAA-4F34-DE5B-910F-C898DB8CAB5A";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -52.824147172401588 24.277316168698086 91.971488525776309 ;
	setAttr ".r" -type "double3" -9.3383527297058144 -29.799999999991208 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "F168B13D-4E0E-150B-ADAC-9D99B57F80C5";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 105.16068718241729;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 1.1436065932357167 11.353568077087402 0.046747058629989624 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
	setAttr ".ai_translator" -type "string" "perspective";
createNode transform -s -n "top";
	rename -uid "2FE28D1A-4BB9-50DE-4CFB-4B96E00A0475";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "33E46318-4CF5-AF28-3A8F-AA9E62CDDD59";
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
	rename -uid "021D6B1A-4FCE-8299-ABD2-6EA8D031A7CE";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -25.5732034959969 -0.88910165793345275 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "8DA9EE22-4B1F-E7AA-C9DB-46A5FBA6BB0E";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 73.308710371743075;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "side";
	rename -uid "CC358C7D-48A0-AA97-FDD8-75941C7276F6";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "DED96294-4A03-52B8-12C7-E0A2677B3B54";
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
createNode transform -n "SM_Book_01";
	rename -uid "003D7A21-4102-9122-21D9-BEAFA1CD678B";
createNode mesh -n "SM_Book_0Shape1" -p "SM_Book_01";
	rename -uid "6D2DF14F-4426-FE20-1710-C88F42B07FE6";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.015855129773209853 0.25247390959066568 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 36 ".uvst[0].uvsp[0:35]" -type "float2" 0.0071691275 0.22015069
		 0.02454102 0.22015069 0.02454102 0.28479713 0.0071691275 0.28479713 0.31160125 0.99612617
		 0.31160128 0.6437133 0.53901446 0.6437133 0.53901446 0.99612617 0.0086396933 0.12119579
		 0.0086396933 0.038695395 0.023639619 0.038695395 0.23027591 0.99612635 0.0045568347
		 0.99612635 0.0045568347 0.64371365 0.0086395741 0.1211958 0.0086395741 0.038695633
		 0.023639619 0.038695633 0.29344565 0.65137446 0.29344591 0.98846579 0.24837999 0.98846579
		 0.023639619 0.1211958 0.24838023 0.65137446 0.23027594 0.64371365 0.023639619 0.12119581
		 0.30471069 0.6437133 0.023639619 0.12369555 0.30471066 0.6437133 0.0086396933 0.12369555
		 0.30471069 0.99612617 0.30471066 0.99612617 0.2371152 0.99612635 0.2371152 0.99612617
		 0.023639619 0.12369555 0.0086395741 0.12369555 0.2371152 0.6437133 0.2371152 0.64371365;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 16 ".pt[0:15]" -type "float3"  8.0000496 11.5 1.5 8.0000496 
		11.5 1.5 8.0000496 11.5 1.5 8.0000496 11.5 1.5 8.0000496 11.5 1.5 8.0000496 11.5 
		1.5 8.0000496 11.5 1.5 8.0000496 11.5 1.5 8.0000496 11.5 1.5 8.0000496 11.5 1.5 8.0000496 
		11.5 1.5 8.0000496 11.5 1.5 8.0000496 11.5 1.5 8.0000496 11.5 1.5 8.0000496 11.5 
		1.5 8.0000496 11.5 1.5;
	setAttr -s 16 ".vt[0:15]"  8.5 -11.5 1.5 8.5 11.5 1.5 8.5 11.5 -1.5
		 8.5 -11.5 -1.5 -8.000049591064 -11.5 1.5 -8.35356808 -11.35356808 1.35356808 -8.5 -11.000049591064 1.000049948692
		 -8.5 11.000049591064 1.000049948692 -8.35356808 11.35356808 1.35356808 -8.000049591064 11.5 1.5
		 -8.5 11.000049591064 -1.000049948692 -8.35356808 11.35356808 -1.35356808 -8.000049591064 11.5 -1.5
		 -8.5 -11.000049591064 -1.000049948692 -8.35356808 -11.35356808 -1.35356808 -8.000049591064 -11.5 -1.5;
	setAttr -s 28 ".ed[0:27]"  0 1 0 1 2 0 2 3 0 3 0 0 15 4 1 6 13 1 6 5 0
		 5 8 0 8 7 0 7 6 1 5 4 0 4 9 1 9 8 0 11 10 0 10 7 1 9 12 1 12 11 0 14 13 0 13 10 1
		 12 15 1 15 14 0 4 0 0 1 9 0 2 12 0 3 15 0 8 11 0 11 14 0 5 14 0;
	setAttr -s 14 -ch 56 ".fc[0:13]" -type "polyFaces" 
		f 4 -4 -3 -2 -1
		mu 0 4 0 1 2 3
		f 4 6 7 8 9
		mu 0 4 17 24 28 18
		f 4 10 11 12 -8
		mu 0 4 26 5 4 29
		f 4 21 0 22 -12
		mu 0 4 5 6 7 4
		f 4 -23 1 23 -16
		mu 0 4 8 9 10 20
		f 4 -24 2 24 -20
		mu 0 4 11 12 13 22
		f 4 -25 3 -22 -5
		mu 0 4 14 15 16 23
		f 4 -6 -10 -15 -19
		mu 0 4 21 17 18 19
		f 4 -9 25 13 14
		mu 0 4 18 28 31 19
		f 4 -13 15 16 -26
		mu 0 4 27 8 20 32
		f 4 -14 26 17 18
		mu 0 4 19 31 34 21
		f 4 -17 19 20 -27
		mu 0 4 30 11 22 35
		f 4 -11 27 -21 4
		mu 0 4 23 25 33 14
		f 4 -7 5 -18 -28
		mu 0 4 24 17 21 34;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "SM_Book_02";
	rename -uid "87DA99C9-4BA3-0B69-17BD-EF8C58DB141E";
createNode mesh -n "SM_Book_0Shape2" -p "SM_Book_02";
	rename -uid "2C6B5D0E-4522-FAA0-D805-5AB308B747BC";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.016358927610733348 0.13028741178621789 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 36 ".uvst[0].uvsp[0:35]" -type "float2" 0.0073314421 0.094295189
		 0.025386412 0.094295189 0.025386412 0.1662796 0.0073314421 0.1662796 0.8029896 0.99450797
		 0.80298954 0.6564427 0.98946726 0.6564427 0.98946726 0.99450797 0.0077324593 0.26270011
		 0.0077324589 0.18082464 0.022732444 0.18082464 0.73531753 0.99450809 0.55464387 0.99450809
		 0.55464387 0.656443 0.0077323997 0.26270011 0.0077323993 0.18082488 0.022732444 0.18082488
		 0.78693026 0.66460854 0.78693044 0.98634297 0.7511552 0.98634291 0.022732444 0.26270011
		 0.75115538 0.66460854 0.73531747 0.656443 0.022732444 0.26270011 0.79587293 0.6564427
		 0.022732444 0.26582479 0.79587287 0.6564427 0.0077324589 0.26582479 0.79587293 0.99450797
		 0.79587287 0.99450797 0.74221271 0.99450809 0.74221271 0.99450797 0.022732444 0.26582479
		 0.0077323993 0.26582479 0.74221271 0.6564427 0.74221271 0.656443;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 16 ".pt[0:15]" -type "float3"  4.6000514 11.499999 1.5 4.6000514 
		9.1999998 1.5 4.6000514 9.1999998 1.5 4.6000514 11.499999 1.5 7.8750639 11.499999 
		1.5 7.9634433 11.483729 1.5 8.0000515 11.444449 1.5 8.0000515 9.2555494 1.5 7.9634433 
		9.2162695 1.5 7.8750639 9.1999998 1.5 8.0000515 9.2555494 1.5 7.9634433 9.2162695 
		1.5 7.8750639 9.1999998 1.5 8.0000515 11.444449 1.5 7.9634433 11.483729 1.5 7.8750639 
		11.499999 1.5;
	setAttr -s 16 ".vt[0:15]"  8.5 -11.5 1.5 8.5 11.5 1.5 8.5 11.5 -1.5
		 8.5 -11.5 -1.5 -7.87506294 -11.5 1.5 -8.31695938 -11.33729744 1.35356808 -8.5 -10.94449902 1.000049948692
		 -8.5 10.94449902 1.000049948692 -8.31695938 11.33729744 1.35356808 -7.87506294 11.5 1.5
		 -8.5 10.94449902 -1.000049948692 -8.31695938 11.33729744 -1.35356808 -7.87506294 11.5 -1.5
		 -8.5 -10.94449902 -1.000049948692 -8.31695938 -11.33729744 -1.35356808 -7.87506294 -11.5 -1.5;
	setAttr -s 28 ".ed[0:27]"  0 1 0 1 2 0 2 3 0 3 0 0 15 4 1 6 13 1 6 5 0
		 5 8 0 8 7 0 7 6 1 5 4 0 4 9 1 9 8 0 11 10 0 10 7 1 9 12 1 12 11 0 14 13 0 13 10 1
		 12 15 1 15 14 0 4 0 0 1 9 0 2 12 0 3 15 0 8 11 0 11 14 0 5 14 0;
	setAttr -s 14 -ch 56 ".fc[0:13]" -type "polyFaces" 
		f 4 -4 -3 -2 -1
		mu 0 4 0 1 2 3
		f 4 6 7 8 9
		mu 0 4 17 24 28 18
		f 4 10 11 12 -8
		mu 0 4 26 5 4 29
		f 4 21 0 22 -12
		mu 0 4 5 6 7 4
		f 4 -23 1 23 -16
		mu 0 4 8 9 10 20
		f 4 -24 2 24 -20
		mu 0 4 11 12 13 22
		f 4 -25 3 -22 -5
		mu 0 4 14 15 16 23
		f 4 -6 -10 -15 -19
		mu 0 4 21 17 18 19
		f 4 -9 25 13 14
		mu 0 4 18 28 31 19
		f 4 -13 15 16 -26
		mu 0 4 27 8 20 32
		f 4 -14 26 17 18
		mu 0 4 19 31 34 21
		f 4 -17 19 20 -27
		mu 0 4 30 11 22 35
		f 4 -11 27 -21 4
		mu 0 4 23 25 33 14
		f 4 -7 5 -18 -28
		mu 0 4 24 17 21 34;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "SM_Book_03";
	rename -uid "0AE30424-4A1F-4EDB-38F3-278687FBCA1D";
createNode mesh -n "SM_Book_0Shape3" -p "SM_Book_03";
	rename -uid "149FABC3-49FE-7C5A-2F26-DE8101D57847";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.015811813049950843 0.20612715459312031 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 36 ".uvst[0].uvsp[0:35]" -type "float2" 0.005496304 0.16966811
		 0.026127331 0.16966811 0.026127331 0.24258617 0.005496304 0.24258617 0.30145213 0.64113063
		 0.30145216 0.30921432 0.5100311 0.30921432 0.5100311 0.64113063 0.0083376691 0.12468404
		 0.0083376691 0.042183638 0.023337655 0.042183638 0.21504329 0.64113086 0.0066579403
		 0.64113086 0.0066579403 0.30921468 0.0083376095 0.12468404 0.0083376095 0.042183876
		 0.023337655 0.042183876 0.28395504 0.31642988 0.28395534 0.63391578 0.23253424 0.63391578
		 0.023337655 0.12468404 0.2325341 0.31642988 0.21504331 0.30921468 0.023337655 0.12468405
		 0.29513225 0.30921432 0.023337655 0.12718379 0.29513222 0.30921432 0.0083376691 0.12718379
		 0.29513225 0.64113063 0.29513222 0.64113063 0.22135736 0.64113086 0.22135736 0.64113063
		 0.023337655 0.12718379 0.0083376095 0.12718379 0.22135736 0.30921432 0.22135736 0.30921468;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 16 ".pt[0:15]" -type "float3"  8.0000515 11.5 1.8000003 
		8.0000515 11.5 1.8000003 8.0000515 11.5 1.5000004 8.0000515 11.5 1.5000004 8.0000515 
		11.5 1.8000003 8.0000515 11.5 1.7866883 8.0000515 11.5 1.7545503 8.0000515 11.5 1.7545503 
		8.0000515 11.5 1.7866883 8.0000515 11.5 1.8000003 8.0000515 11.5 1.5454503 8.0000515 
		11.5 1.5133123 8.0000515 11.5 1.5000004 8.0000515 11.5 1.5454503 8.0000515 11.5 1.5133123 
		8.0000515 11.5 1.5000004;
	setAttr -s 16 ".vt[0:15]"  8.5 -11.5 1.50000024 8.5 11.5 1.50000024
		 8.5 11.5 -1.50000024 8.5 -11.5 -1.50000024 -8.000049591064 -11.5 1.50000024 -8.35356903 -11.35356808 1.36688018
		 -8.5 -11.000049591064 1.04550004 -8.5 11.000049591064 1.04550004 -8.35356903 11.35356808 1.36688018
		 -8.000049591064 11.5 1.50000024 -8.5 11.000049591064 -1.04550004 -8.35356903 11.35356808 -1.36688018
		 -8.000049591064 11.5 -1.50000024 -8.5 -11.000049591064 -1.04550004 -8.35356903 -11.35356808 -1.36688018
		 -8.000049591064 -11.5 -1.50000024;
	setAttr -s 28 ".ed[0:27]"  0 1 0 1 2 0 2 3 0 3 0 0 15 4 1 6 13 1 6 5 0
		 5 8 0 8 7 0 7 6 1 5 4 0 4 9 1 9 8 0 11 10 0 10 7 1 9 12 1 12 11 0 14 13 0 13 10 1
		 12 15 1 15 14 0 4 0 0 1 9 0 2 12 0 3 15 0 8 11 0 11 14 0 5 14 0;
	setAttr -s 14 -ch 56 ".fc[0:13]" -type "polyFaces" 
		f 4 -4 -3 -2 -1
		mu 0 4 0 1 2 3
		f 4 6 7 8 9
		mu 0 4 17 24 28 18
		f 4 10 11 12 -8
		mu 0 4 26 5 4 29
		f 4 21 0 22 -12
		mu 0 4 5 6 7 4
		f 4 -23 1 23 -16
		mu 0 4 8 9 10 20
		f 4 -24 2 24 -20
		mu 0 4 11 12 13 22
		f 4 -25 3 -22 -5
		mu 0 4 14 15 16 23
		f 4 -6 -10 -15 -19
		mu 0 4 21 17 18 19
		f 4 -9 25 13 14
		mu 0 4 18 28 31 19
		f 4 -13 15 16 -26
		mu 0 4 27 8 20 32
		f 4 -14 26 17 18
		mu 0 4 19 31 34 21
		f 4 -17 19 20 -27
		mu 0 4 30 11 22 35
		f 4 -11 27 -21 4
		mu 0 4 23 25 33 14
		f 4 -7 5 -18 -28
		mu 0 4 24 17 21 34;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "SM_Book_04";
	rename -uid "05970FE3-450B-4CD7-E57A-D8A51C44F7F0";
createNode mesh -n "SM_Book_0Shape4" -p "SM_Book_04";
	rename -uid "1A13918F-4230-6971-81DF-4BAC23E1FD3F";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.015795114615023587 0.17988240423093216 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 36 ".uvst[0].uvsp[0:35]" -type "float2" 0.0053987876 0.14755917
		 0.026191438 0.14755917 0.026191438 0.21220559 0.0053987876 0.21220559 0.80539125
		 0.64604932 0.80539125 0.31388262 0.99785024 0.31388262 0.99785024 0.64604932 0.0087409392
		 0.11556564 0.0087409383 0.033196822 0.023740925 0.033196822 0.72380155 0.64604956
		 0.52632588 0.64604956 0.52632588 0.31388298 0.0087408796 0.11556564 0.0087408787
		 0.03319706 0.023740925 0.03319706 0.78644216 0.32148299 0.78644186 0.63844901 0.74291116
		 0.63844901 0.023740925 0.11556563 0.7429114 0.32148299 0.72380149 0.31388298 0.023740925
		 0.11556564 0.79924303 0.31388262 0.023740925 0.11819698 0.79924297 0.31388262 0.0087409383
		 0.11819698 0.79924303 0.64604932 0.79924297 0.64604932 0.73011005 0.64604956 0.73011005
		 0.64604932 0.023740925 0.11819698 0.0087408787 0.11819698 0.73011005 0.31388262 0.73011005
		 0.31388298;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 16 ".pt[0:15]" -type "float3"  7.150032 11.500002 1.1999999 
		7.150032 10.350002 1.1999999 7.150032 10.350002 1.4999999 7.150032 11.500002 1.4999999 
		7.9737182 11.500002 1.1999999 7.9923248 11.492295 1.2162701 8.0000315 11.473689 1.2555499 
		8.0000315 10.376315 1.2555499 7.9923248 10.357709 1.2162701 7.9737182 10.350002 1.1999999 
		8.0000315 10.376315 1.4444499 7.9923248 10.357709 1.4837297 7.9737182 10.350002 1.4999999 
		8.0000315 11.473689 1.4444499 7.9923248 11.492295 1.4837297 7.9737182 11.500002 1.4999999;
	setAttr -s 16 ".vt[0:15]"  8.5 -11.50000191 1.5 8.5 11.50000191 1.5
		 8.5 11.50000191 -1.5 8.5 -11.50000191 -1.5 -7.97372437 -11.50000191 1.5 -8.34585571 -11.34586143 1.3372978
		 -8.49998474 -10.97373676 0.94450003 -8.49998474 10.97373676 0.94450003 -8.34585571 11.34586143 1.3372978
		 -7.97372437 11.50000191 1.5 -8.49998474 10.97373676 -0.94450003 -8.34585571 11.34586143 -1.3372978
		 -7.97372437 11.50000191 -1.5 -8.49998474 -10.97373676 -0.94450003 -8.34585571 -11.34586143 -1.3372978
		 -7.97372437 -11.50000191 -1.5;
	setAttr -s 28 ".ed[0:27]"  0 1 0 1 2 0 2 3 0 3 0 0 15 4 1 6 13 1 6 5 0
		 5 8 0 8 7 0 7 6 1 5 4 0 4 9 1 9 8 0 11 10 0 10 7 1 9 12 1 12 11 0 14 13 0 13 10 1
		 12 15 1 15 14 0 4 0 0 1 9 0 2 12 0 3 15 0 8 11 0 11 14 0 5 14 0;
	setAttr -s 14 -ch 56 ".fc[0:13]" -type "polyFaces" 
		f 4 -4 -3 -2 -1
		mu 0 4 0 1 2 3
		f 4 6 7 8 9
		mu 0 4 17 24 28 18
		f 4 10 11 12 -8
		mu 0 4 26 5 4 29
		f 4 21 0 22 -12
		mu 0 4 5 6 7 4
		f 4 -23 1 23 -16
		mu 0 4 8 9 10 20
		f 4 -24 2 24 -20
		mu 0 4 11 12 13 22
		f 4 -25 3 -22 -5
		mu 0 4 14 15 16 23
		f 4 -6 -10 -15 -19
		mu 0 4 21 17 18 19
		f 4 -9 25 13 14
		mu 0 4 18 28 31 19
		f 4 -13 15 16 -26
		mu 0 4 27 8 20 32
		f 4 -14 26 17 18
		mu 0 4 19 31 34 21
		f 4 -17 19 20 -27
		mu 0 4 30 11 22 35
		f 4 -11 27 -21 4
		mu 0 4 23 25 33 14
		f 4 -7 5 -18 -28
		mu 0 4 24 17 21 34;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "SM_Book_05";
	rename -uid "5F454279-43CB-F4BA-1264-4E93AE54FEC8";
createNode mesh -n "SM_Book_0Shape5" -p "SM_Book_05";
	rename -uid "80F2B4FF-4958-2CE6-D373-F18BB9AAECF6";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.015997476025757754 0.2142699970543851 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 36 ".uvst[0].uvsp[0:35]" -type "float2" 0.0069205943 0.1194552
		 0.025378913 0.1194552 0.025378913 0.16417426 0.0069205943 0.16417426 0.29272586 0.30588788
		 0.29272586 0.0036323594 0.49499705 0.0036323692 0.49499702 0.30588788 0.0075814831
		 0.25962341 0.0075814906 0.16657911 0.02441353 0.16657911 0.22555539 0.305888 0.025880467
		 0.305888 0.025880473 0.0036326647 0.007581417 0.25962341 0.0075814244 0.16657938
		 0.02441353 0.16657938 0.28032818 0.0091080107 0.28032804 0.30041277 0.23788802 0.30041277
		 0.02441353 0.25962341 0.23788826 0.0091080088 0.22555539 0.0036326647 0.02441353
		 0.25962341 0.2876443 0.0036323667 0.02441353 0.26196092 0.28764427 0.0036323667 0.0075814826
		 0.26196092 0.2876443 0.30588788 0.28764427 0.30588788 0.23057176 0.305888 0.23057176
		 0.30588788 0.02441353 0.26196092 0.0075814165 0.26196092 0.23057176 0.0036323667
		 0.23057176 0.0036326647;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 16 ".pt[0:15]" -type "float3"  11.400065 11.5 2.3999999 
		11.400065 16.1 2.3999999 11.400065 16.1 1.4999999 11.400065 11.5 1.4999999 8.0833883 
		11.5 2.3999999 8.0244703 11.524405 2.3662078 8.0000668 11.583325 2.2846267 8.0000668 
		16.016676 2.2846267 8.0244703 16.075596 2.3662078 8.0833883 16.1 2.3999999 8.0000668 
		16.016676 1.615373 8.0244703 16.075596 1.5337919 8.0833883 16.1 1.4999999 8.0000668 
		11.583325 1.615373 8.0244703 11.524405 1.5337919 8.0833883 11.5 1.4999999;
	setAttr -s 16 ".vt[0:15]"  8.49999237 -11.5 1.5 8.49999237 11.5 1.5
		 8.49999237 11.5 -1.5 8.49999237 -11.5 -1.5 -8.083389282 -11.5 1.5 -8.37798309 -11.37797451 1.38735998
		 -8.5 -11.083374977 1.11542296 -8.5 11.083374977 1.11542296 -8.37798309 11.37797451 1.38735998
		 -8.083389282 11.5 1.5 -8.5 11.083374977 -1.11542296 -8.37798309 11.37797451 -1.38735998
		 -8.083389282 11.5 -1.5 -8.5 -11.083374977 -1.11542296 -8.37798309 -11.37797451 -1.38735998
		 -8.083389282 -11.5 -1.5;
	setAttr -s 28 ".ed[0:27]"  0 1 0 1 2 0 2 3 0 3 0 0 15 4 1 6 13 1 6 5 0
		 5 8 0 8 7 0 7 6 1 5 4 0 4 9 1 9 8 0 11 10 0 10 7 1 9 12 1 12 11 0 14 13 0 13 10 1
		 12 15 1 15 14 0 4 0 0 1 9 0 2 12 0 3 15 0 8 11 0 11 14 0 5 14 0;
	setAttr -s 14 -ch 56 ".fc[0:13]" -type "polyFaces" 
		f 4 -4 -3 -2 -1
		mu 0 4 0 1 2 3
		f 4 6 7 8 9
		mu 0 4 17 24 28 18
		f 4 10 11 12 -8
		mu 0 4 26 5 4 29
		f 4 21 0 22 -12
		mu 0 4 5 6 7 4
		f 4 -23 1 23 -16
		mu 0 4 8 9 10 20
		f 4 -24 2 24 -20
		mu 0 4 11 12 13 22
		f 4 -25 3 -22 -5
		mu 0 4 14 15 16 23
		f 4 -6 -10 -15 -19
		mu 0 4 21 17 18 19
		f 4 -9 25 13 14
		mu 0 4 18 28 31 19
		f 4 -13 15 16 -26
		mu 0 4 27 8 20 32
		f 4 -14 26 17 18
		mu 0 4 19 31 34 21
		f 4 -17 19 20 -27
		mu 0 4 30 11 22 35
		f 4 -11 27 -21 4
		mu 0 4 23 25 33 14
		f 4 -7 5 -18 -28
		mu 0 4 24 17 21 34;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "SM_Book_page";
	rename -uid "BB6D89E8-4E47-CF35-28D6-84BD9BA8BB2F";
	setAttr ".t" -type "double3" 0.14360563956140027 11.353568077087402 1.2535663843154907 ;
	setAttr ".rp" -type "double3" -0.14360563956140027 -11.353568077087402 -1.2535663843154907 ;
	setAttr ".sp" -type "double3" -0.14360563956140027 -11.353568077087402 -1.2535663843154907 ;
createNode mesh -n "SM_Book_pageShape" -p "SM_Book_page";
	rename -uid "BD5834D9-4766-B457-E81C-4E8DF47DCBE3";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5573276003148957 0.17352129566922966 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode lightLinker -s -n "lightLinker1";
	rename -uid "69219118-4CFF-4E19-C3B9-D8815A7FC04B";
	setAttr -s 3 ".lnk";
	setAttr -s 3 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "CFB9C47D-472F-9208-377E-C4B860121156";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "E00A85FD-4A92-1F35-2181-CFA3828A4386";
createNode displayLayerManager -n "layerManager";
	rename -uid "3F6B99E1-4A0B-0539-78CE-A1A9DA0219EE";
createNode displayLayer -n "defaultLayer";
	rename -uid "4291174A-4161-85C7-CB6F-FB91836DABF6";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "214106A0-44CC-7BE0-78E2-CF95C3393B22";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "3AF1164C-46FB-A546-36E0-B08C936874C0";
	setAttr ".g" yes;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "321721EA-4D7D-561C-BCAF-8BAFA5A0D31B";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n"
		+ "            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n"
		+ "            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n"
		+ "            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n"
		+ "            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n"
		+ "            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n"
		+ "            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n"
		+ "            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n"
		+ "            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n"
		+ "            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1257\n            -height 761\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n"
		+ "            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n"
		+ "            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n"
		+ "            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n"
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
		+ "                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -highlightConnections 0\n                -copyConnectionsOnPaste 0\n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n"
		+ "                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n"
		+ "\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1257\\n    -height 761\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1257\\n    -height 761\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "8199747A-4D05-4E1B-EC91-499D942857CC";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode lambert -n "MI_Books";
	rename -uid "DD6EBC18-4E04-E8F5-0A93-E7B475D4D4B0";
createNode shadingEngine -n "lambert2SG";
	rename -uid "69AE1555-4853-F94E-4775-D081241CD2AD";
	setAttr ".ihi" 0;
	setAttr -s 6 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
	rename -uid "F6B88C41-4749-BBC7-DAAC-65A70A975625";
createNode file -n "file1";
	rename -uid "5AE3E661-4AB4-C44D-3104-07B46C34B2AE";
	setAttr ".ftn" -type "string" "D:/T5/3D_Art/Environment/Books/T_Books_albedo.png";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture1";
	rename -uid "38C389E7-42D6-0071-02E3-59AF858D6277";
createNode polyCube -n "polyCube2";
	rename -uid "2CACBA3E-4FC2-2B56-C803-7091E488D0B8";
	setAttr ".w" 30;
	setAttr ".h" 23;
	setAttr ".d" 2;
	setAttr ".cuv" 4;
createNode polySplitRing -n "polySplitRing1";
	rename -uid "FB399BFE-4175-F17B-7453-05ADBB31A8A9";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[0:3]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -26.494232888220473 0 0 1;
	setAttr ".wt" 0.42994228005409241;
	setAttr ".re" 1;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyAutoProj -n "polyAutoProj2";
	rename -uid "EEEDA32B-45E8-3463-D966-46B54DB509A2";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:13]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -26.494232888220473 0 0 1;
	setAttr ".s" -type "double3" 30 30 30 ;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode polyTweak -n "polyTweak1";
	rename -uid "B2CB1B50-4826-D591-25AE-3B86C6EE06AE";
	setAttr ".uopa" yes;
	setAttr -s 12 ".tk";
	setAttr ".tk[0]" -type "float3" 0.20000003 0 0 ;
	setAttr ".tk[1]" -type "float3" -0.20000003 0 0 ;
	setAttr ".tk[2]" -type "float3" 0.20000003 0 0 ;
	setAttr ".tk[3]" -type "float3" -0.20000003 0 0 ;
	setAttr ".tk[8]" -type "float3" -4.7777772 0 0 ;
	setAttr ".tk[9]" -type "float3" -4.7777772 0 0 ;
	setAttr ".tk[10]" -type "float3" -4.8568978 0 0 ;
	setAttr ".tk[11]" -type "float3" -4.8568978 0 0 ;
	setAttr ".tk[12]" -type "float3" 4.7777772 0 0 ;
	setAttr ".tk[13]" -type "float3" 4.7777772 0 0 ;
	setAttr ".tk[14]" -type "float3" 4.8568978 0 0 ;
	setAttr ".tk[15]" -type "float3" 4.8568978 0 0 ;
createNode polyTweakUV -n "polyTweakUV2";
	rename -uid "8906BD30-4114-15F3-739E-3B87BD3C138E";
	setAttr ".uopa" yes;
	setAttr -s 40 ".uvtk[0:39]" -type "float2" -0.39964113 0.10022694 -0.42649195
		 0.10022694 -0.42649195 -0.20855832 -0.39964113 -0.20855832 -0.40859589 -0.32065114
		 -0.43544695 -0.32065114 -0.43544695 -0.62943631 -0.40859589 -0.62943631 0.55033559
		 -0.30363244 0.55033559 -0.10773768 0.52345985 -0.10773768 0.52345985 -0.30632001
		 0.55033559 -0.10176529 0.52345985 -0.10176529 0.55033559 0.09412948 0.52345985 0.096817069
		 0.076769575 -0.30946335 0.076769575 -0.1098178 0.049893703 -0.1098178 0.049893703
		 -0.30677575 0.076769575 -0.10597181 0.049893703 -0.10597181 0.076769575 0.093673751
		 0.049893703 0.090986162 0.041867577 -0.53948653 0.22664797 -0.26924413 -0.19842118
		 0.027691856 -0.382204 -0.24109171 0.2302562 -0.26396716 -0.19281811 0.035886485 0.41503656
		 0.0062752655 -0.0090350378 0.3046701 0.94388282 0.4380776 0.72971344 0.71054894 0.30449471
		 0.37867716 0.51981097 0.10474697 0.72327268 0.71874356 0.30034694 0.38395396 0.50910366
		 0.99121475 0.085031033 0.65788412;
createNode polyBevel3 -n "polyBevel6";
	rename -uid "EEB03563-4C77-2805-4E8E-11AF65DA3B03";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 6 "e[0:13]" "e[15]" "e[17]" "e[20:21]" "e[23]" "e[25]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -26.494232888220473 0 0 1;
	setAttr ".ws" yes;
	setAttr ".o" 0.5;
	setAttr ".sg" 2;
	setAttr ".at" 180;
	setAttr ".sn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
createNode polyTweak -n "polyTweak2";
	rename -uid "4F427096-40CD-8B72-1B25-A29EED024E83";
	setAttr ".uopa" yes;
	setAttr -s 15 ".tk";
	setAttr ".tk[4]" -type "float3" 0 0 -0.30000001 ;
	setAttr ".tk[5]" -type "float3" 0 0 -0.30000001 ;
	setAttr ".tk[6]" -type "float3" 0 0 -0.30000001 ;
	setAttr ".tk[7]" -type "float3" 0 0 -0.30000001 ;
	setAttr ".tk[8]" -type "float3" 0 0 -0.40000001 ;
	setAttr ".tk[9]" -type "float3" 0 0 -0.40000001 ;
	setAttr ".tk[10]" -type "float3" 0 0 -0.40000001 ;
	setAttr ".tk[11]" -type "float3" 0 0 -0.40000001 ;
	setAttr ".tk[12]" -type "float3" 0 0 -0.40000001 ;
	setAttr ".tk[13]" -type "float3" 0 0 -0.40000001 ;
	setAttr ".tk[14]" -type "float3" 0 0 -0.40000001 ;
	setAttr ".tk[15]" -type "float3" 0 0 -0.40000001 ;
createNode nodeGraphEditorInfo -n "hyperShadePrimaryNodeEditorSavedTabsInfo";
	rename -uid "FFB4263D-4FC7-B42C-45D6-7E8083E8CBA9";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -333.13154097077944 -316.60754139473903 ;
	setAttr ".tgi[0].vh" -type "double2" 832.85586783186375 421.72637958863612 ;
	setAttr -s 4 ".tgi[0].ni";
	setAttr ".tgi[0].ni[0].x" -407.14285278320313;
	setAttr ".tgi[0].ni[0].y" 130;
	setAttr ".tgi[0].ni[0].nvs" 1923;
	setAttr ".tgi[0].ni[1].x" -100;
	setAttr ".tgi[0].ni[1].y" 152.85714721679688;
	setAttr ".tgi[0].ni[1].nvs" 1923;
	setAttr ".tgi[0].ni[2].x" 514.28570556640625;
	setAttr ".tgi[0].ni[2].y" 130;
	setAttr ".tgi[0].ni[2].nvs" 1923;
	setAttr ".tgi[0].ni[3].x" 207.14285278320313;
	setAttr ".tgi[0].ni[3].y" 152.85714721679688;
	setAttr ".tgi[0].ni[3].nvs" 1923;
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
select -ne :defaultRenderingList1;
select -ne :defaultTextureList1;
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
connectAttr "polyBevel6.out" "SM_Book_pageShape.i";
connectAttr "polyTweakUV2.uvtk[0]" "SM_Book_pageShape.uvst[0].uvtw";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "file1.oc" "MI_Books.c";
connectAttr "MI_Books.oc" "lambert2SG.ss";
connectAttr "SM_Book_0Shape1.iog" "lambert2SG.dsm" -na;
connectAttr "SM_Book_0Shape2.iog" "lambert2SG.dsm" -na;
connectAttr "SM_Book_0Shape3.iog" "lambert2SG.dsm" -na;
connectAttr "SM_Book_0Shape4.iog" "lambert2SG.dsm" -na;
connectAttr "SM_Book_0Shape5.iog" "lambert2SG.dsm" -na;
connectAttr "SM_Book_pageShape.iog" "lambert2SG.dsm" -na;
connectAttr "lambert2SG.msg" "materialInfo1.sg";
connectAttr "MI_Books.msg" "materialInfo1.m";
connectAttr "file1.msg" "materialInfo1.t" -na;
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
connectAttr "polyCube2.out" "polySplitRing1.ip";
connectAttr "SM_Book_pageShape.wm" "polySplitRing1.mp";
connectAttr "polyTweak1.out" "polyAutoProj2.ip";
connectAttr "SM_Book_pageShape.wm" "polyAutoProj2.mp";
connectAttr "polySplitRing1.out" "polyTweak1.ip";
connectAttr "polyAutoProj2.out" "polyTweakUV2.ip";
connectAttr "polyTweak2.out" "polyBevel6.ip";
connectAttr "SM_Book_pageShape.wm" "polyBevel6.mp";
connectAttr "polyTweakUV2.out" "polyTweak2.ip";
connectAttr "place2dTexture1.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[0].dn"
		;
connectAttr "file1.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[1].dn"
		;
connectAttr "lambert2SG.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[2].dn"
		;
connectAttr "MI_Books.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[3].dn"
		;
connectAttr "lambert2SG.pa" ":renderPartition.st" -na;
connectAttr "MI_Books.msg" ":defaultShaderList1.s" -na;
connectAttr "place2dTexture1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "file1.msg" ":defaultTextureList1.tx" -na;
// End of Books.ma
