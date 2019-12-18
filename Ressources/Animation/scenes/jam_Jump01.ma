//Maya ASCII 2018 scene
//Name: jam_Jump01.ma
//Last modified: Wed, Dec 18, 2019 09:37:58 PM
//Codeset: 1252
file -rdi 1 -ns "jam_RIG_ref" -rfn "jam_RIG_refRN" -op "v=0;" -typ "mayaAscii"
		 "D:/Unity Projects/jam-01/Ressources/Animation//scenes/jam_RIG_ref.ma";
file -r -ns "jam_RIG_ref" -dr 1 -rfn "jam_RIG_refRN" -op "v=0;" -typ "mayaAscii"
		 "D:/Unity Projects/jam-01/Ressources/Animation//scenes/jam_RIG_ref.ma";
requires maya "2018";
requires "stereoCamera" "10.0";
requires "mtoa" "3.1.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2018";
fileInfo "version" "2018";
fileInfo "cutIdentifier" "201706261615-f9658c4cfc";
fileInfo "osv" "Microsoft Windows 8 Business Edition, 64-bit  (Build 9200)\n";
fileInfo "license" "student";
createNode transform -s -n "persp";
	rename -uid "CEAB158F-4DC3-E316-71FC-4883AED07DC5";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -429.55971499710364 120.96807565825878 66.845763891395961 ;
	setAttr ".r" -type "double3" -0.93835272959224914 -81.799999999997922 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "D8CEDDD6-496E-4AFF-33B8-1A9FD8F5B1BE";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 485.61809034834999;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
	setAttr ".ai_translator" -type "string" "perspective";
createNode transform -s -n "top";
	rename -uid "35767EA2-43AD-EAD0-03A8-E0A57E9D0791";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "F1348E13-4AE8-59FB-923D-F5AF1064CC86";
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
	rename -uid "E18F7A47-4B5B-FCF2-C253-26A1C6185B48";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "E60C5089-474B-7A5E-658D-1C82B213541E";
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
	rename -uid "83C27D78-476C-7B5D-E6E5-9AB5E6911592";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "05AC0453-45B6-B33D-896F-CA843EB71871";
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
createNode lightLinker -s -n "lightLinker1";
	rename -uid "5871CBF9-4C13-3904-7078-36AAD1672DB5";
	setAttr -s 4 ".lnk";
	setAttr -s 4 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "D5CF584A-40A5-37F2-30A2-3A8C9305A624";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "150BEA75-45F4-47D1-6157-9393541D14AE";
createNode displayLayerManager -n "layerManager";
	rename -uid "31AC8F0C-4F58-8D0B-2E06-61A1B2E8F502";
createNode displayLayer -n "defaultLayer";
	rename -uid "5598D36D-490F-0461-2611-58B8EFA79F8B";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "3C2583B7-46BD-D6A3-48B2-A6B9608F3B0B";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "A3F47FEB-49C6-BF47-A2A3-ACB8786E6A93";
	setAttr ".g" yes;
createNode reference -n "jam_RIG_refRN";
	rename -uid "4F70290E-4D27-F049-B7BB-E7BA18E35626";
	setAttr -s 89 ".phl";
	setAttr ".phl[1]" 0;
	setAttr ".phl[2]" 0;
	setAttr ".phl[3]" 0;
	setAttr ".phl[4]" 0;
	setAttr ".phl[5]" 0;
	setAttr ".phl[6]" 0;
	setAttr ".phl[7]" 0;
	setAttr ".phl[8]" 0;
	setAttr ".phl[9]" 0;
	setAttr ".phl[10]" 0;
	setAttr ".phl[11]" 0;
	setAttr ".phl[12]" 0;
	setAttr ".phl[13]" 0;
	setAttr ".phl[14]" 0;
	setAttr ".phl[15]" 0;
	setAttr ".phl[16]" 0;
	setAttr ".phl[17]" 0;
	setAttr ".phl[18]" 0;
	setAttr ".phl[19]" 0;
	setAttr ".phl[20]" 0;
	setAttr ".phl[21]" 0;
	setAttr ".phl[22]" 0;
	setAttr ".phl[23]" 0;
	setAttr ".phl[24]" 0;
	setAttr ".phl[25]" 0;
	setAttr ".phl[26]" 0;
	setAttr ".phl[27]" 0;
	setAttr ".phl[28]" 0;
	setAttr ".phl[29]" 0;
	setAttr ".phl[30]" 0;
	setAttr ".phl[31]" 0;
	setAttr ".phl[32]" 0;
	setAttr ".phl[33]" 0;
	setAttr ".phl[34]" 0;
	setAttr ".phl[35]" 0;
	setAttr ".phl[36]" 0;
	setAttr ".phl[37]" 0;
	setAttr ".phl[38]" 0;
	setAttr ".phl[39]" 0;
	setAttr ".phl[40]" 0;
	setAttr ".phl[41]" 0;
	setAttr ".phl[42]" 0;
	setAttr ".phl[43]" 0;
	setAttr ".phl[44]" 0;
	setAttr ".phl[45]" 0;
	setAttr ".phl[46]" 0;
	setAttr ".phl[47]" 0;
	setAttr ".phl[48]" 0;
	setAttr ".phl[49]" 0;
	setAttr ".phl[50]" 0;
	setAttr ".phl[51]" 0;
	setAttr ".phl[52]" 0;
	setAttr ".phl[53]" 0;
	setAttr ".phl[54]" 0;
	setAttr ".phl[55]" 0;
	setAttr ".phl[56]" 0;
	setAttr ".phl[57]" 0;
	setAttr ".phl[58]" 0;
	setAttr ".phl[59]" 0;
	setAttr ".phl[60]" 0;
	setAttr ".phl[61]" 0;
	setAttr ".phl[62]" 0;
	setAttr ".phl[63]" 0;
	setAttr ".phl[64]" 0;
	setAttr ".phl[65]" 0;
	setAttr ".phl[66]" 0;
	setAttr ".phl[67]" 0;
	setAttr ".phl[68]" 0;
	setAttr ".phl[69]" 0;
	setAttr ".phl[70]" 0;
	setAttr ".phl[71]" 0;
	setAttr ".phl[72]" 0;
	setAttr ".phl[73]" 0;
	setAttr ".phl[74]" 0;
	setAttr ".phl[75]" 0;
	setAttr ".phl[76]" 0;
	setAttr ".phl[77]" 0;
	setAttr ".phl[78]" 0;
	setAttr ".phl[79]" 0;
	setAttr ".phl[80]" 0;
	setAttr ".phl[81]" 0;
	setAttr ".phl[82]" 0;
	setAttr ".phl[83]" 0;
	setAttr ".phl[84]" 0;
	setAttr ".phl[85]" 0;
	setAttr ".phl[86]" 0;
	setAttr ".phl[87]" 0;
	setAttr ".phl[88]" 0;
	setAttr ".phl[89]" 0;
	setAttr ".ed" -type "dataReferenceEdits" 
		"jam_RIG_refRN"
		"jam_RIG_refRN" 0
		"jam_RIG_refRN" 141
		2 "|jam_RIG_ref:Group|jam_RIG_ref:Main" "visibility" " 1"
		2 "|jam_RIG_ref:Group|jam_RIG_ref:Main" "translate" " -type \"double3\" 0 0 0"
		
		2 "|jam_RIG_ref:Group|jam_RIG_ref:Main" "rotate" " -type \"double3\" 0 0 0"
		
		2 "|jam_RIG_ref:Group|jam_RIG_ref:Main" "scale" " -type \"double3\" 1 1 1"
		
		2 "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:FKSystem|jam_RIG_ref:FKParentConstraintToChest_M|jam_RIG_ref:FKOffsetScapula_R|jam_RIG_ref:FKExtraScapula_R|jam_RIG_ref:FKScapula_R" 
		"visibility" " 1"
		2 "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:FKSystem|jam_RIG_ref:FKParentConstraintToChest_M|jam_RIG_ref:FKOffsetScapula_R|jam_RIG_ref:FKExtraScapula_R|jam_RIG_ref:FKScapula_R" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:FKSystem|jam_RIG_ref:FKParentConstraintToChest_M|jam_RIG_ref:FKOffsetScapula_R|jam_RIG_ref:FKExtraScapula_R|jam_RIG_ref:FKScapula_R" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:FKSystem|jam_RIG_ref:FKParentConstraintToChest_M|jam_RIG_ref:FKOffsetScapula_R|jam_RIG_ref:FKExtraScapula_R|jam_RIG_ref:FKScapula_R" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:FKSystem|jam_RIG_ref:FKParentConstraintToChest_M|jam_RIG_ref:FKOffsetScapula_R|jam_RIG_ref:FKExtraScapula_R|jam_RIG_ref:FKScapula_R|jam_RIG_ref:FKXScapula_R|jam_RIG_ref:FKOffsetShoulder_R|jam_RIG_ref:FKExtraShoulder_R|jam_RIG_ref:FKShoulder_R" 
		"visibility" " 1"
		2 "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:FKSystem|jam_RIG_ref:FKParentConstraintToChest_M|jam_RIG_ref:FKOffsetScapula_R|jam_RIG_ref:FKExtraScapula_R|jam_RIG_ref:FKScapula_R|jam_RIG_ref:FKXScapula_R|jam_RIG_ref:FKOffsetShoulder_R|jam_RIG_ref:FKExtraShoulder_R|jam_RIG_ref:FKShoulder_R" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:FKSystem|jam_RIG_ref:FKParentConstraintToChest_M|jam_RIG_ref:FKOffsetScapula_R|jam_RIG_ref:FKExtraScapula_R|jam_RIG_ref:FKScapula_R|jam_RIG_ref:FKXScapula_R|jam_RIG_ref:FKOffsetShoulder_R|jam_RIG_ref:FKExtraShoulder_R|jam_RIG_ref:FKShoulder_R" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:FKSystem|jam_RIG_ref:FKParentConstraintToChest_M|jam_RIG_ref:FKOffsetScapula_R|jam_RIG_ref:FKExtraScapula_R|jam_RIG_ref:FKScapula_R|jam_RIG_ref:FKXScapula_R|jam_RIG_ref:FKOffsetShoulder_R|jam_RIG_ref:FKExtraShoulder_R|jam_RIG_ref:FKShoulder_R" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:FKSystem|jam_RIG_ref:FKParentConstraintToChest_M|jam_RIG_ref:FKOffsetScapula_R|jam_RIG_ref:FKExtraScapula_R|jam_RIG_ref:FKScapula_R|jam_RIG_ref:FKXScapula_R|jam_RIG_ref:FKOffsetShoulder_R|jam_RIG_ref:FKExtraShoulder_R|jam_RIG_ref:FKShoulder_R|jam_RIG_ref:FKXShoulder_R|jam_RIG_ref:FKOffsetElbow_R|jam_RIG_ref:FKExtraElbow_R|jam_RIG_ref:FKElbow_R" 
		"visibility" " 1"
		2 "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:FKSystem|jam_RIG_ref:FKParentConstraintToChest_M|jam_RIG_ref:FKOffsetScapula_R|jam_RIG_ref:FKExtraScapula_R|jam_RIG_ref:FKScapula_R|jam_RIG_ref:FKXScapula_R|jam_RIG_ref:FKOffsetShoulder_R|jam_RIG_ref:FKExtraShoulder_R|jam_RIG_ref:FKShoulder_R|jam_RIG_ref:FKXShoulder_R|jam_RIG_ref:FKOffsetElbow_R|jam_RIG_ref:FKExtraElbow_R|jam_RIG_ref:FKElbow_R" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:FKSystem|jam_RIG_ref:FKParentConstraintToChest_M|jam_RIG_ref:FKOffsetScapula_R|jam_RIG_ref:FKExtraScapula_R|jam_RIG_ref:FKScapula_R|jam_RIG_ref:FKXScapula_R|jam_RIG_ref:FKOffsetShoulder_R|jam_RIG_ref:FKExtraShoulder_R|jam_RIG_ref:FKShoulder_R|jam_RIG_ref:FKXShoulder_R|jam_RIG_ref:FKOffsetElbow_R|jam_RIG_ref:FKExtraElbow_R|jam_RIG_ref:FKElbow_R" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:FKSystem|jam_RIG_ref:FKParentConstraintToChest_M|jam_RIG_ref:FKOffsetScapula_R|jam_RIG_ref:FKExtraScapula_R|jam_RIG_ref:FKScapula_R|jam_RIG_ref:FKXScapula_R|jam_RIG_ref:FKOffsetShoulder_R|jam_RIG_ref:FKExtraShoulder_R|jam_RIG_ref:FKShoulder_R|jam_RIG_ref:FKXShoulder_R|jam_RIG_ref:FKOffsetElbow_R|jam_RIG_ref:FKExtraElbow_R|jam_RIG_ref:FKElbow_R" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:FKSystem|jam_RIG_ref:FKParentConstraintToChest_M|jam_RIG_ref:FKOffsetScapula_L|jam_RIG_ref:FKExtraScapula_L|jam_RIG_ref:FKScapula_L" 
		"visibility" " 1"
		2 "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:FKSystem|jam_RIG_ref:FKParentConstraintToChest_M|jam_RIG_ref:FKOffsetScapula_L|jam_RIG_ref:FKExtraScapula_L|jam_RIG_ref:FKScapula_L" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:FKSystem|jam_RIG_ref:FKParentConstraintToChest_M|jam_RIG_ref:FKOffsetScapula_L|jam_RIG_ref:FKExtraScapula_L|jam_RIG_ref:FKScapula_L" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:FKSystem|jam_RIG_ref:FKParentConstraintToChest_M|jam_RIG_ref:FKOffsetScapula_L|jam_RIG_ref:FKExtraScapula_L|jam_RIG_ref:FKScapula_L" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:FKSystem|jam_RIG_ref:FKParentConstraintToChest_M|jam_RIG_ref:FKOffsetScapula_L|jam_RIG_ref:FKExtraScapula_L|jam_RIG_ref:FKScapula_L|jam_RIG_ref:FKXScapula_L|jam_RIG_ref:FKOffsetShoulder_L|jam_RIG_ref:FKExtraShoulder_L|jam_RIG_ref:FKShoulder_L" 
		"visibility" " 1"
		2 "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:FKSystem|jam_RIG_ref:FKParentConstraintToChest_M|jam_RIG_ref:FKOffsetScapula_L|jam_RIG_ref:FKExtraScapula_L|jam_RIG_ref:FKScapula_L|jam_RIG_ref:FKXScapula_L|jam_RIG_ref:FKOffsetShoulder_L|jam_RIG_ref:FKExtraShoulder_L|jam_RIG_ref:FKShoulder_L" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:FKSystem|jam_RIG_ref:FKParentConstraintToChest_M|jam_RIG_ref:FKOffsetScapula_L|jam_RIG_ref:FKExtraScapula_L|jam_RIG_ref:FKScapula_L|jam_RIG_ref:FKXScapula_L|jam_RIG_ref:FKOffsetShoulder_L|jam_RIG_ref:FKExtraShoulder_L|jam_RIG_ref:FKShoulder_L" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:FKSystem|jam_RIG_ref:FKParentConstraintToChest_M|jam_RIG_ref:FKOffsetScapula_L|jam_RIG_ref:FKExtraScapula_L|jam_RIG_ref:FKScapula_L|jam_RIG_ref:FKXScapula_L|jam_RIG_ref:FKOffsetShoulder_L|jam_RIG_ref:FKExtraShoulder_L|jam_RIG_ref:FKShoulder_L" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:FKSystem|jam_RIG_ref:FKParentConstraintToChest_M|jam_RIG_ref:FKOffsetScapula_L|jam_RIG_ref:FKExtraScapula_L|jam_RIG_ref:FKScapula_L|jam_RIG_ref:FKXScapula_L|jam_RIG_ref:FKOffsetShoulder_L|jam_RIG_ref:FKExtraShoulder_L|jam_RIG_ref:FKShoulder_L|jam_RIG_ref:FKXShoulder_L|jam_RIG_ref:FKOffsetElbow_L|jam_RIG_ref:FKExtraElbow_L|jam_RIG_ref:FKElbow_L" 
		"visibility" " 1"
		2 "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:FKSystem|jam_RIG_ref:FKParentConstraintToChest_M|jam_RIG_ref:FKOffsetScapula_L|jam_RIG_ref:FKExtraScapula_L|jam_RIG_ref:FKScapula_L|jam_RIG_ref:FKXScapula_L|jam_RIG_ref:FKOffsetShoulder_L|jam_RIG_ref:FKExtraShoulder_L|jam_RIG_ref:FKShoulder_L|jam_RIG_ref:FKXShoulder_L|jam_RIG_ref:FKOffsetElbow_L|jam_RIG_ref:FKExtraElbow_L|jam_RIG_ref:FKElbow_L" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:FKSystem|jam_RIG_ref:FKParentConstraintToChest_M|jam_RIG_ref:FKOffsetScapula_L|jam_RIG_ref:FKExtraScapula_L|jam_RIG_ref:FKScapula_L|jam_RIG_ref:FKXScapula_L|jam_RIG_ref:FKOffsetShoulder_L|jam_RIG_ref:FKExtraShoulder_L|jam_RIG_ref:FKShoulder_L|jam_RIG_ref:FKXShoulder_L|jam_RIG_ref:FKOffsetElbow_L|jam_RIG_ref:FKExtraElbow_L|jam_RIG_ref:FKElbow_L" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:FKSystem|jam_RIG_ref:FKParentConstraintToChest_M|jam_RIG_ref:FKOffsetScapula_L|jam_RIG_ref:FKExtraScapula_L|jam_RIG_ref:FKScapula_L|jam_RIG_ref:FKXScapula_L|jam_RIG_ref:FKOffsetShoulder_L|jam_RIG_ref:FKExtraShoulder_L|jam_RIG_ref:FKShoulder_L|jam_RIG_ref:FKXShoulder_L|jam_RIG_ref:FKOffsetElbow_L|jam_RIG_ref:FKExtraElbow_L|jam_RIG_ref:FKElbow_L" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:FKSystem|jam_RIG_ref:FKOffsetRoot_M|jam_RIG_ref:FKExtraRoot_M|jam_RIG_ref:FKRoot_M" 
		"visibility" " 1"
		2 "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:FKSystem|jam_RIG_ref:FKOffsetRoot_M|jam_RIG_ref:FKExtraRoot_M|jam_RIG_ref:FKRoot_M" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:FKSystem|jam_RIG_ref:FKOffsetRoot_M|jam_RIG_ref:FKExtraRoot_M|jam_RIG_ref:FKRoot_M" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:FKSystem|jam_RIG_ref:FKOffsetRoot_M|jam_RIG_ref:FKExtraRoot_M|jam_RIG_ref:FKRoot_M" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:FKSystem|jam_RIG_ref:FKOffsetRoot_M|jam_RIG_ref:FKExtraRoot_M|jam_RIG_ref:FKRoot_M|jam_RIG_ref:HipSwingerOffset_M|jam_RIG_ref:HipSwinger_M" 
		"visibility" " 1"
		2 "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:FKSystem|jam_RIG_ref:FKOffsetRoot_M|jam_RIG_ref:FKExtraRoot_M|jam_RIG_ref:FKRoot_M|jam_RIG_ref:HipSwingerOffset_M|jam_RIG_ref:HipSwinger_M" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:IKSystem|jam_RIG_ref:IKHandle|jam_RIG_ref:PoleOffsetLeg_R|jam_RIG_ref:PoleExtraLeg_R|jam_RIG_ref:PoleLeg_R" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:IKSystem|jam_RIG_ref:IKHandle|jam_RIG_ref:PoleOffsetLeg_R|jam_RIG_ref:PoleExtraLeg_R|jam_RIG_ref:PoleLeg_R" 
		"follow" " -k 1 10"
		2 "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:IKSystem|jam_RIG_ref:IKHandle|jam_RIG_ref:PoleOffsetLeg_R|jam_RIG_ref:PoleExtraLeg_R|jam_RIG_ref:PoleLeg_R" 
		"lock" " -k 1 0"
		2 "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:IKSystem|jam_RIG_ref:IKHandle|jam_RIG_ref:IKSpineHandle_M" 
		"translate" " -type \"double3\" 0 145.16098416523254855 1.75232159469498039"
		2 "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:IKSystem|jam_RIG_ref:IKHandle|jam_RIG_ref:PoleOffsetLeg_L|jam_RIG_ref:PoleExtraLeg_L|jam_RIG_ref:PoleLeg_L" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:IKSystem|jam_RIG_ref:IKHandle|jam_RIG_ref:PoleOffsetLeg_L|jam_RIG_ref:PoleExtraLeg_L|jam_RIG_ref:PoleLeg_L" 
		"follow" " -k 1 10"
		2 "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:IKSystem|jam_RIG_ref:IKHandle|jam_RIG_ref:PoleOffsetLeg_L|jam_RIG_ref:PoleExtraLeg_L|jam_RIG_ref:PoleLeg_L" 
		"lock" " -k 1 0"
		2 "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:FKIKSystem|jam_RIG_ref:FKIKParentConstraintLeg_R|jam_RIG_ref:FKIKLeg_R" 
		"FKIKBlend" " -k 1 10"
		2 "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:FKIKSystem|jam_RIG_ref:FKIKParentConstraintLeg_R|jam_RIG_ref:FKIKLeg_R" 
		"FKVis" " -k 1 1"
		2 "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:FKIKSystem|jam_RIG_ref:FKIKParentConstraintLeg_R|jam_RIG_ref:FKIKLeg_R" 
		"IKVis" " -k 1 1"
		2 "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:FKIKSystem|jam_RIG_ref:FKIKParentConstraintSpine_M|jam_RIG_ref:FKIKSpine_M" 
		"FKIKBlend" " -k 1 0"
		2 "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:FKIKSystem|jam_RIG_ref:FKIKParentConstraintSpine_M|jam_RIG_ref:FKIKSpine_M" 
		"FKVis" " -k 1 1"
		2 "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:FKIKSystem|jam_RIG_ref:FKIKParentConstraintSpine_M|jam_RIG_ref:FKIKSpine_M" 
		"IKVis" " -k 1 1"
		2 "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:FKIKSystem|jam_RIG_ref:FKIKParentConstraintLeg_L|jam_RIG_ref:FKIKLeg_L" 
		"FKIKBlend" " -k 1 10"
		2 "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:FKIKSystem|jam_RIG_ref:FKIKParentConstraintLeg_L|jam_RIG_ref:FKIKLeg_L" 
		"FKVis" " -k 1 1"
		2 "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:FKIKSystem|jam_RIG_ref:FKIKParentConstraintLeg_L|jam_RIG_ref:FKIKLeg_L" 
		"IKVis" " -k 1 1"
		2 "|jam_RIG_ref:bag_ctrl_grp|jam_RIG_ref:bag_ctrl" "rotate" " -type \"double3\" 0 0 0"
		
		2 "|jam_RIG_ref:bag_ctrl_grp|jam_RIG_ref:bag_ctrl" "rotateX" " -av"
		5 4 "jam_RIG_refRN" "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:FKSystem|jam_RIG_ref:FKParentConstraintToChest_M|jam_RIG_ref:FKOffsetNeck_M|jam_RIG_ref:FKExtraNeck_M|jam_RIG_ref:FKNeck_M.scaleX" 
		"jam_RIG_refRN.placeHolderList[1]" ""
		5 4 "jam_RIG_refRN" "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:FKSystem|jam_RIG_ref:FKParentConstraintToChest_M|jam_RIG_ref:FKOffsetNeck_M|jam_RIG_ref:FKExtraNeck_M|jam_RIG_ref:FKNeck_M.scaleY" 
		"jam_RIG_refRN.placeHolderList[2]" ""
		5 4 "jam_RIG_refRN" "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:FKSystem|jam_RIG_ref:FKParentConstraintToChest_M|jam_RIG_ref:FKOffsetNeck_M|jam_RIG_ref:FKExtraNeck_M|jam_RIG_ref:FKNeck_M.scaleZ" 
		"jam_RIG_refRN.placeHolderList[3]" ""
		5 4 "jam_RIG_refRN" "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:FKSystem|jam_RIG_ref:FKParentConstraintToChest_M|jam_RIG_ref:FKOffsetNeck_M|jam_RIG_ref:FKExtraNeck_M|jam_RIG_ref:FKNeck_M.rotateX" 
		"jam_RIG_refRN.placeHolderList[4]" ""
		5 4 "jam_RIG_refRN" "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:FKSystem|jam_RIG_ref:FKParentConstraintToChest_M|jam_RIG_ref:FKOffsetNeck_M|jam_RIG_ref:FKExtraNeck_M|jam_RIG_ref:FKNeck_M.rotateY" 
		"jam_RIG_refRN.placeHolderList[5]" ""
		5 4 "jam_RIG_refRN" "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:FKSystem|jam_RIG_ref:FKParentConstraintToChest_M|jam_RIG_ref:FKOffsetNeck_M|jam_RIG_ref:FKExtraNeck_M|jam_RIG_ref:FKNeck_M.rotateZ" 
		"jam_RIG_refRN.placeHolderList[6]" ""
		5 4 "jam_RIG_refRN" "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:FKSystem|jam_RIG_ref:FKParentConstraintToChest_M|jam_RIG_ref:FKOffsetNeck_M|jam_RIG_ref:FKExtraNeck_M|jam_RIG_ref:FKNeck_M.translateX" 
		"jam_RIG_refRN.placeHolderList[7]" ""
		5 4 "jam_RIG_refRN" "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:FKSystem|jam_RIG_ref:FKParentConstraintToChest_M|jam_RIG_ref:FKOffsetNeck_M|jam_RIG_ref:FKExtraNeck_M|jam_RIG_ref:FKNeck_M.translateY" 
		"jam_RIG_refRN.placeHolderList[8]" ""
		5 4 "jam_RIG_refRN" "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:FKSystem|jam_RIG_ref:FKParentConstraintToChest_M|jam_RIG_ref:FKOffsetNeck_M|jam_RIG_ref:FKExtraNeck_M|jam_RIG_ref:FKNeck_M.translateZ" 
		"jam_RIG_refRN.placeHolderList[9]" ""
		5 4 "jam_RIG_refRN" "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:FKSystem|jam_RIG_ref:FKParentConstraintToChest_M|jam_RIG_ref:FKOffsetNeck_M|jam_RIG_ref:FKExtraNeck_M|jam_RIG_ref:FKNeck_M.visibility" 
		"jam_RIG_refRN.placeHolderList[10]" ""
		5 4 "jam_RIG_refRN" "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:FKSystem|jam_RIG_ref:FKParentConstraintToChest_M|jam_RIG_ref:FKOffsetNeck_M|jam_RIG_ref:FKExtraNeck_M|jam_RIG_ref:FKNeck_M|jam_RIG_ref:FKXNeck_M|jam_RIG_ref:FKOffsetHead_M|jam_RIG_ref:FKGlobalStaticHead_M|jam_RIG_ref:FKGlobalHead_M|jam_RIG_ref:FKExtraHead_M|jam_RIG_ref:FKHead_M.scaleX" 
		"jam_RIG_refRN.placeHolderList[11]" ""
		5 4 "jam_RIG_refRN" "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:FKSystem|jam_RIG_ref:FKParentConstraintToChest_M|jam_RIG_ref:FKOffsetNeck_M|jam_RIG_ref:FKExtraNeck_M|jam_RIG_ref:FKNeck_M|jam_RIG_ref:FKXNeck_M|jam_RIG_ref:FKOffsetHead_M|jam_RIG_ref:FKGlobalStaticHead_M|jam_RIG_ref:FKGlobalHead_M|jam_RIG_ref:FKExtraHead_M|jam_RIG_ref:FKHead_M.scaleY" 
		"jam_RIG_refRN.placeHolderList[12]" ""
		5 4 "jam_RIG_refRN" "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:FKSystem|jam_RIG_ref:FKParentConstraintToChest_M|jam_RIG_ref:FKOffsetNeck_M|jam_RIG_ref:FKExtraNeck_M|jam_RIG_ref:FKNeck_M|jam_RIG_ref:FKXNeck_M|jam_RIG_ref:FKOffsetHead_M|jam_RIG_ref:FKGlobalStaticHead_M|jam_RIG_ref:FKGlobalHead_M|jam_RIG_ref:FKExtraHead_M|jam_RIG_ref:FKHead_M.scaleZ" 
		"jam_RIG_refRN.placeHolderList[13]" ""
		5 4 "jam_RIG_refRN" "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:FKSystem|jam_RIG_ref:FKParentConstraintToChest_M|jam_RIG_ref:FKOffsetNeck_M|jam_RIG_ref:FKExtraNeck_M|jam_RIG_ref:FKNeck_M|jam_RIG_ref:FKXNeck_M|jam_RIG_ref:FKOffsetHead_M|jam_RIG_ref:FKGlobalStaticHead_M|jam_RIG_ref:FKGlobalHead_M|jam_RIG_ref:FKExtraHead_M|jam_RIG_ref:FKHead_M.Global" 
		"jam_RIG_refRN.placeHolderList[14]" ""
		5 4 "jam_RIG_refRN" "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:FKSystem|jam_RIG_ref:FKParentConstraintToChest_M|jam_RIG_ref:FKOffsetNeck_M|jam_RIG_ref:FKExtraNeck_M|jam_RIG_ref:FKNeck_M|jam_RIG_ref:FKXNeck_M|jam_RIG_ref:FKOffsetHead_M|jam_RIG_ref:FKGlobalStaticHead_M|jam_RIG_ref:FKGlobalHead_M|jam_RIG_ref:FKExtraHead_M|jam_RIG_ref:FKHead_M.rotateX" 
		"jam_RIG_refRN.placeHolderList[15]" ""
		5 4 "jam_RIG_refRN" "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:FKSystem|jam_RIG_ref:FKParentConstraintToChest_M|jam_RIG_ref:FKOffsetNeck_M|jam_RIG_ref:FKExtraNeck_M|jam_RIG_ref:FKNeck_M|jam_RIG_ref:FKXNeck_M|jam_RIG_ref:FKOffsetHead_M|jam_RIG_ref:FKGlobalStaticHead_M|jam_RIG_ref:FKGlobalHead_M|jam_RIG_ref:FKExtraHead_M|jam_RIG_ref:FKHead_M.rotateY" 
		"jam_RIG_refRN.placeHolderList[16]" ""
		5 4 "jam_RIG_refRN" "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:FKSystem|jam_RIG_ref:FKParentConstraintToChest_M|jam_RIG_ref:FKOffsetNeck_M|jam_RIG_ref:FKExtraNeck_M|jam_RIG_ref:FKNeck_M|jam_RIG_ref:FKXNeck_M|jam_RIG_ref:FKOffsetHead_M|jam_RIG_ref:FKGlobalStaticHead_M|jam_RIG_ref:FKGlobalHead_M|jam_RIG_ref:FKExtraHead_M|jam_RIG_ref:FKHead_M.rotateZ" 
		"jam_RIG_refRN.placeHolderList[17]" ""
		5 4 "jam_RIG_refRN" "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:FKSystem|jam_RIG_ref:FKParentConstraintToChest_M|jam_RIG_ref:FKOffsetNeck_M|jam_RIG_ref:FKExtraNeck_M|jam_RIG_ref:FKNeck_M|jam_RIG_ref:FKXNeck_M|jam_RIG_ref:FKOffsetHead_M|jam_RIG_ref:FKGlobalStaticHead_M|jam_RIG_ref:FKGlobalHead_M|jam_RIG_ref:FKExtraHead_M|jam_RIG_ref:FKHead_M.translateX" 
		"jam_RIG_refRN.placeHolderList[18]" ""
		5 4 "jam_RIG_refRN" "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:FKSystem|jam_RIG_ref:FKParentConstraintToChest_M|jam_RIG_ref:FKOffsetNeck_M|jam_RIG_ref:FKExtraNeck_M|jam_RIG_ref:FKNeck_M|jam_RIG_ref:FKXNeck_M|jam_RIG_ref:FKOffsetHead_M|jam_RIG_ref:FKGlobalStaticHead_M|jam_RIG_ref:FKGlobalHead_M|jam_RIG_ref:FKExtraHead_M|jam_RIG_ref:FKHead_M.translateY" 
		"jam_RIG_refRN.placeHolderList[19]" ""
		5 4 "jam_RIG_refRN" "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:FKSystem|jam_RIG_ref:FKParentConstraintToChest_M|jam_RIG_ref:FKOffsetNeck_M|jam_RIG_ref:FKExtraNeck_M|jam_RIG_ref:FKNeck_M|jam_RIG_ref:FKXNeck_M|jam_RIG_ref:FKOffsetHead_M|jam_RIG_ref:FKGlobalStaticHead_M|jam_RIG_ref:FKGlobalHead_M|jam_RIG_ref:FKExtraHead_M|jam_RIG_ref:FKHead_M.translateZ" 
		"jam_RIG_refRN.placeHolderList[20]" ""
		5 4 "jam_RIG_refRN" "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:FKSystem|jam_RIG_ref:FKParentConstraintToChest_M|jam_RIG_ref:FKOffsetNeck_M|jam_RIG_ref:FKExtraNeck_M|jam_RIG_ref:FKNeck_M|jam_RIG_ref:FKXNeck_M|jam_RIG_ref:FKOffsetHead_M|jam_RIG_ref:FKGlobalStaticHead_M|jam_RIG_ref:FKGlobalHead_M|jam_RIG_ref:FKExtraHead_M|jam_RIG_ref:FKHead_M.visibility" 
		"jam_RIG_refRN.placeHolderList[21]" ""
		5 4 "jam_RIG_refRN" "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:FKSystem|jam_RIG_ref:FKOffsetRoot_M|jam_RIG_ref:FKExtraRoot_M|jam_RIG_ref:FKRoot_M|jam_RIG_ref:FKXRoot_M|jam_RIG_ref:FKOffsetSpine1_M|jam_RIG_ref:HipSwingerStabilizer|jam_RIG_ref:FKExtraSpine1_M|jam_RIG_ref:FKSpine1_M.scaleX" 
		"jam_RIG_refRN.placeHolderList[22]" ""
		5 4 "jam_RIG_refRN" "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:FKSystem|jam_RIG_ref:FKOffsetRoot_M|jam_RIG_ref:FKExtraRoot_M|jam_RIG_ref:FKRoot_M|jam_RIG_ref:FKXRoot_M|jam_RIG_ref:FKOffsetSpine1_M|jam_RIG_ref:HipSwingerStabilizer|jam_RIG_ref:FKExtraSpine1_M|jam_RIG_ref:FKSpine1_M.scaleY" 
		"jam_RIG_refRN.placeHolderList[23]" ""
		5 4 "jam_RIG_refRN" "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:FKSystem|jam_RIG_ref:FKOffsetRoot_M|jam_RIG_ref:FKExtraRoot_M|jam_RIG_ref:FKRoot_M|jam_RIG_ref:FKXRoot_M|jam_RIG_ref:FKOffsetSpine1_M|jam_RIG_ref:HipSwingerStabilizer|jam_RIG_ref:FKExtraSpine1_M|jam_RIG_ref:FKSpine1_M.scaleZ" 
		"jam_RIG_refRN.placeHolderList[24]" ""
		5 4 "jam_RIG_refRN" "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:FKSystem|jam_RIG_ref:FKOffsetRoot_M|jam_RIG_ref:FKExtraRoot_M|jam_RIG_ref:FKRoot_M|jam_RIG_ref:FKXRoot_M|jam_RIG_ref:FKOffsetSpine1_M|jam_RIG_ref:HipSwingerStabilizer|jam_RIG_ref:FKExtraSpine1_M|jam_RIG_ref:FKSpine1_M.rotateX" 
		"jam_RIG_refRN.placeHolderList[25]" ""
		5 4 "jam_RIG_refRN" "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:FKSystem|jam_RIG_ref:FKOffsetRoot_M|jam_RIG_ref:FKExtraRoot_M|jam_RIG_ref:FKRoot_M|jam_RIG_ref:FKXRoot_M|jam_RIG_ref:FKOffsetSpine1_M|jam_RIG_ref:HipSwingerStabilizer|jam_RIG_ref:FKExtraSpine1_M|jam_RIG_ref:FKSpine1_M.rotateY" 
		"jam_RIG_refRN.placeHolderList[26]" ""
		5 4 "jam_RIG_refRN" "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:FKSystem|jam_RIG_ref:FKOffsetRoot_M|jam_RIG_ref:FKExtraRoot_M|jam_RIG_ref:FKRoot_M|jam_RIG_ref:FKXRoot_M|jam_RIG_ref:FKOffsetSpine1_M|jam_RIG_ref:HipSwingerStabilizer|jam_RIG_ref:FKExtraSpine1_M|jam_RIG_ref:FKSpine1_M.rotateZ" 
		"jam_RIG_refRN.placeHolderList[27]" ""
		5 4 "jam_RIG_refRN" "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:FKSystem|jam_RIG_ref:FKOffsetRoot_M|jam_RIG_ref:FKExtraRoot_M|jam_RIG_ref:FKRoot_M|jam_RIG_ref:FKXRoot_M|jam_RIG_ref:FKOffsetSpine1_M|jam_RIG_ref:HipSwingerStabilizer|jam_RIG_ref:FKExtraSpine1_M|jam_RIG_ref:FKSpine1_M.translateX" 
		"jam_RIG_refRN.placeHolderList[28]" ""
		5 4 "jam_RIG_refRN" "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:FKSystem|jam_RIG_ref:FKOffsetRoot_M|jam_RIG_ref:FKExtraRoot_M|jam_RIG_ref:FKRoot_M|jam_RIG_ref:FKXRoot_M|jam_RIG_ref:FKOffsetSpine1_M|jam_RIG_ref:HipSwingerStabilizer|jam_RIG_ref:FKExtraSpine1_M|jam_RIG_ref:FKSpine1_M.translateY" 
		"jam_RIG_refRN.placeHolderList[29]" ""
		5 4 "jam_RIG_refRN" "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:FKSystem|jam_RIG_ref:FKOffsetRoot_M|jam_RIG_ref:FKExtraRoot_M|jam_RIG_ref:FKRoot_M|jam_RIG_ref:FKXRoot_M|jam_RIG_ref:FKOffsetSpine1_M|jam_RIG_ref:HipSwingerStabilizer|jam_RIG_ref:FKExtraSpine1_M|jam_RIG_ref:FKSpine1_M.translateZ" 
		"jam_RIG_refRN.placeHolderList[30]" ""
		5 4 "jam_RIG_refRN" "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:FKSystem|jam_RIG_ref:FKOffsetRoot_M|jam_RIG_ref:FKExtraRoot_M|jam_RIG_ref:FKRoot_M|jam_RIG_ref:FKXRoot_M|jam_RIG_ref:FKOffsetSpine1_M|jam_RIG_ref:HipSwingerStabilizer|jam_RIG_ref:FKExtraSpine1_M|jam_RIG_ref:FKSpine1_M.visibility" 
		"jam_RIG_refRN.placeHolderList[31]" ""
		5 4 "jam_RIG_refRN" "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:FKSystem|jam_RIG_ref:FKOffsetRoot_M|jam_RIG_ref:FKExtraRoot_M|jam_RIG_ref:FKRoot_M|jam_RIG_ref:FKXRoot_M|jam_RIG_ref:FKOffsetSpine1_M|jam_RIG_ref:HipSwingerStabilizer|jam_RIG_ref:FKExtraSpine1_M|jam_RIG_ref:FKSpine1_M|jam_RIG_ref:FKXSpine1_M|jam_RIG_ref:FKOffsetChest_M|jam_RIG_ref:FKExtraChest_M|jam_RIG_ref:FKChest_M.scaleX" 
		"jam_RIG_refRN.placeHolderList[32]" ""
		5 4 "jam_RIG_refRN" "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:FKSystem|jam_RIG_ref:FKOffsetRoot_M|jam_RIG_ref:FKExtraRoot_M|jam_RIG_ref:FKRoot_M|jam_RIG_ref:FKXRoot_M|jam_RIG_ref:FKOffsetSpine1_M|jam_RIG_ref:HipSwingerStabilizer|jam_RIG_ref:FKExtraSpine1_M|jam_RIG_ref:FKSpine1_M|jam_RIG_ref:FKXSpine1_M|jam_RIG_ref:FKOffsetChest_M|jam_RIG_ref:FKExtraChest_M|jam_RIG_ref:FKChest_M.scaleY" 
		"jam_RIG_refRN.placeHolderList[33]" ""
		5 4 "jam_RIG_refRN" "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:FKSystem|jam_RIG_ref:FKOffsetRoot_M|jam_RIG_ref:FKExtraRoot_M|jam_RIG_ref:FKRoot_M|jam_RIG_ref:FKXRoot_M|jam_RIG_ref:FKOffsetSpine1_M|jam_RIG_ref:HipSwingerStabilizer|jam_RIG_ref:FKExtraSpine1_M|jam_RIG_ref:FKSpine1_M|jam_RIG_ref:FKXSpine1_M|jam_RIG_ref:FKOffsetChest_M|jam_RIG_ref:FKExtraChest_M|jam_RIG_ref:FKChest_M.scaleZ" 
		"jam_RIG_refRN.placeHolderList[34]" ""
		5 4 "jam_RIG_refRN" "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:FKSystem|jam_RIG_ref:FKOffsetRoot_M|jam_RIG_ref:FKExtraRoot_M|jam_RIG_ref:FKRoot_M|jam_RIG_ref:FKXRoot_M|jam_RIG_ref:FKOffsetSpine1_M|jam_RIG_ref:HipSwingerStabilizer|jam_RIG_ref:FKExtraSpine1_M|jam_RIG_ref:FKSpine1_M|jam_RIG_ref:FKXSpine1_M|jam_RIG_ref:FKOffsetChest_M|jam_RIG_ref:FKExtraChest_M|jam_RIG_ref:FKChest_M.rotateX" 
		"jam_RIG_refRN.placeHolderList[35]" ""
		5 4 "jam_RIG_refRN" "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:FKSystem|jam_RIG_ref:FKOffsetRoot_M|jam_RIG_ref:FKExtraRoot_M|jam_RIG_ref:FKRoot_M|jam_RIG_ref:FKXRoot_M|jam_RIG_ref:FKOffsetSpine1_M|jam_RIG_ref:HipSwingerStabilizer|jam_RIG_ref:FKExtraSpine1_M|jam_RIG_ref:FKSpine1_M|jam_RIG_ref:FKXSpine1_M|jam_RIG_ref:FKOffsetChest_M|jam_RIG_ref:FKExtraChest_M|jam_RIG_ref:FKChest_M.rotateY" 
		"jam_RIG_refRN.placeHolderList[36]" ""
		5 4 "jam_RIG_refRN" "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:FKSystem|jam_RIG_ref:FKOffsetRoot_M|jam_RIG_ref:FKExtraRoot_M|jam_RIG_ref:FKRoot_M|jam_RIG_ref:FKXRoot_M|jam_RIG_ref:FKOffsetSpine1_M|jam_RIG_ref:HipSwingerStabilizer|jam_RIG_ref:FKExtraSpine1_M|jam_RIG_ref:FKSpine1_M|jam_RIG_ref:FKXSpine1_M|jam_RIG_ref:FKOffsetChest_M|jam_RIG_ref:FKExtraChest_M|jam_RIG_ref:FKChest_M.rotateZ" 
		"jam_RIG_refRN.placeHolderList[37]" ""
		5 4 "jam_RIG_refRN" "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:FKSystem|jam_RIG_ref:FKOffsetRoot_M|jam_RIG_ref:FKExtraRoot_M|jam_RIG_ref:FKRoot_M|jam_RIG_ref:FKXRoot_M|jam_RIG_ref:FKOffsetSpine1_M|jam_RIG_ref:HipSwingerStabilizer|jam_RIG_ref:FKExtraSpine1_M|jam_RIG_ref:FKSpine1_M|jam_RIG_ref:FKXSpine1_M|jam_RIG_ref:FKOffsetChest_M|jam_RIG_ref:FKExtraChest_M|jam_RIG_ref:FKChest_M.translateX" 
		"jam_RIG_refRN.placeHolderList[38]" ""
		5 4 "jam_RIG_refRN" "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:FKSystem|jam_RIG_ref:FKOffsetRoot_M|jam_RIG_ref:FKExtraRoot_M|jam_RIG_ref:FKRoot_M|jam_RIG_ref:FKXRoot_M|jam_RIG_ref:FKOffsetSpine1_M|jam_RIG_ref:HipSwingerStabilizer|jam_RIG_ref:FKExtraSpine1_M|jam_RIG_ref:FKSpine1_M|jam_RIG_ref:FKXSpine1_M|jam_RIG_ref:FKOffsetChest_M|jam_RIG_ref:FKExtraChest_M|jam_RIG_ref:FKChest_M.translateY" 
		"jam_RIG_refRN.placeHolderList[39]" ""
		5 4 "jam_RIG_refRN" "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:FKSystem|jam_RIG_ref:FKOffsetRoot_M|jam_RIG_ref:FKExtraRoot_M|jam_RIG_ref:FKRoot_M|jam_RIG_ref:FKXRoot_M|jam_RIG_ref:FKOffsetSpine1_M|jam_RIG_ref:HipSwingerStabilizer|jam_RIG_ref:FKExtraSpine1_M|jam_RIG_ref:FKSpine1_M|jam_RIG_ref:FKXSpine1_M|jam_RIG_ref:FKOffsetChest_M|jam_RIG_ref:FKExtraChest_M|jam_RIG_ref:FKChest_M.translateZ" 
		"jam_RIG_refRN.placeHolderList[40]" ""
		5 4 "jam_RIG_refRN" "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:FKSystem|jam_RIG_ref:FKOffsetRoot_M|jam_RIG_ref:FKExtraRoot_M|jam_RIG_ref:FKRoot_M|jam_RIG_ref:FKXRoot_M|jam_RIG_ref:FKOffsetSpine1_M|jam_RIG_ref:HipSwingerStabilizer|jam_RIG_ref:FKExtraSpine1_M|jam_RIG_ref:FKSpine1_M|jam_RIG_ref:FKXSpine1_M|jam_RIG_ref:FKOffsetChest_M|jam_RIG_ref:FKExtraChest_M|jam_RIG_ref:FKChest_M.visibility" 
		"jam_RIG_refRN.placeHolderList[41]" ""
		5 4 "jam_RIG_refRN" "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:IKSystem|jam_RIG_ref:IKHandle|jam_RIG_ref:IKOffsetLeg_R|jam_RIG_ref:IKExtraLeg_R|jam_RIG_ref:IKLeg_R.scaleX" 
		"jam_RIG_refRN.placeHolderList[42]" ""
		5 4 "jam_RIG_refRN" "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:IKSystem|jam_RIG_ref:IKHandle|jam_RIG_ref:IKOffsetLeg_R|jam_RIG_ref:IKExtraLeg_R|jam_RIG_ref:IKLeg_R.scaleY" 
		"jam_RIG_refRN.placeHolderList[43]" ""
		5 4 "jam_RIG_refRN" "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:IKSystem|jam_RIG_ref:IKHandle|jam_RIG_ref:IKOffsetLeg_R|jam_RIG_ref:IKExtraLeg_R|jam_RIG_ref:IKLeg_R.scaleZ" 
		"jam_RIG_refRN.placeHolderList[44]" ""
		5 4 "jam_RIG_refRN" "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:IKSystem|jam_RIG_ref:IKHandle|jam_RIG_ref:IKOffsetLeg_R|jam_RIG_ref:IKExtraLeg_R|jam_RIG_ref:IKLeg_R.translateX" 
		"jam_RIG_refRN.placeHolderList[45]" ""
		5 4 "jam_RIG_refRN" "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:IKSystem|jam_RIG_ref:IKHandle|jam_RIG_ref:IKOffsetLeg_R|jam_RIG_ref:IKExtraLeg_R|jam_RIG_ref:IKLeg_R.translateY" 
		"jam_RIG_refRN.placeHolderList[46]" ""
		5 4 "jam_RIG_refRN" "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:IKSystem|jam_RIG_ref:IKHandle|jam_RIG_ref:IKOffsetLeg_R|jam_RIG_ref:IKExtraLeg_R|jam_RIG_ref:IKLeg_R.translateZ" 
		"jam_RIG_refRN.placeHolderList[47]" ""
		5 4 "jam_RIG_refRN" "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:IKSystem|jam_RIG_ref:IKHandle|jam_RIG_ref:IKOffsetLeg_R|jam_RIG_ref:IKExtraLeg_R|jam_RIG_ref:IKLeg_R.stretchy" 
		"jam_RIG_refRN.placeHolderList[48]" ""
		5 4 "jam_RIG_refRN" "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:IKSystem|jam_RIG_ref:IKHandle|jam_RIG_ref:IKOffsetLeg_R|jam_RIG_ref:IKExtraLeg_R|jam_RIG_ref:IKLeg_R.antiPop" 
		"jam_RIG_refRN.placeHolderList[49]" ""
		5 4 "jam_RIG_refRN" "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:IKSystem|jam_RIG_ref:IKHandle|jam_RIG_ref:IKOffsetLeg_R|jam_RIG_ref:IKExtraLeg_R|jam_RIG_ref:IKLeg_R.Lenght1" 
		"jam_RIG_refRN.placeHolderList[50]" ""
		5 4 "jam_RIG_refRN" "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:IKSystem|jam_RIG_ref:IKHandle|jam_RIG_ref:IKOffsetLeg_R|jam_RIG_ref:IKExtraLeg_R|jam_RIG_ref:IKLeg_R.Lenght2" 
		"jam_RIG_refRN.placeHolderList[51]" ""
		5 4 "jam_RIG_refRN" "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:IKSystem|jam_RIG_ref:IKHandle|jam_RIG_ref:IKOffsetLeg_R|jam_RIG_ref:IKExtraLeg_R|jam_RIG_ref:IKLeg_R.volume" 
		"jam_RIG_refRN.placeHolderList[52]" ""
		5 4 "jam_RIG_refRN" "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:IKSystem|jam_RIG_ref:IKHandle|jam_RIG_ref:IKOffsetLeg_R|jam_RIG_ref:IKExtraLeg_R|jam_RIG_ref:IKLeg_R.rotateX" 
		"jam_RIG_refRN.placeHolderList[53]" ""
		5 4 "jam_RIG_refRN" "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:IKSystem|jam_RIG_ref:IKHandle|jam_RIG_ref:IKOffsetLeg_R|jam_RIG_ref:IKExtraLeg_R|jam_RIG_ref:IKLeg_R.rotateY" 
		"jam_RIG_refRN.placeHolderList[54]" ""
		5 4 "jam_RIG_refRN" "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:IKSystem|jam_RIG_ref:IKHandle|jam_RIG_ref:IKOffsetLeg_R|jam_RIG_ref:IKExtraLeg_R|jam_RIG_ref:IKLeg_R.rotateZ" 
		"jam_RIG_refRN.placeHolderList[55]" ""
		5 4 "jam_RIG_refRN" "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:IKSystem|jam_RIG_ref:IKHandle|jam_RIG_ref:IKOffsetLeg_R|jam_RIG_ref:IKExtraLeg_R|jam_RIG_ref:IKLeg_R.visibility" 
		"jam_RIG_refRN.placeHolderList[56]" ""
		5 4 "jam_RIG_refRN" "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:IKSystem|jam_RIG_ref:IKHandle|jam_RIG_ref:IKOffsetLeg_L|jam_RIG_ref:IKExtraLeg_L|jam_RIG_ref:IKLeg_L.scaleX" 
		"jam_RIG_refRN.placeHolderList[57]" ""
		5 4 "jam_RIG_refRN" "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:IKSystem|jam_RIG_ref:IKHandle|jam_RIG_ref:IKOffsetLeg_L|jam_RIG_ref:IKExtraLeg_L|jam_RIG_ref:IKLeg_L.scaleY" 
		"jam_RIG_refRN.placeHolderList[58]" ""
		5 4 "jam_RIG_refRN" "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:IKSystem|jam_RIG_ref:IKHandle|jam_RIG_ref:IKOffsetLeg_L|jam_RIG_ref:IKExtraLeg_L|jam_RIG_ref:IKLeg_L.scaleZ" 
		"jam_RIG_refRN.placeHolderList[59]" ""
		5 4 "jam_RIG_refRN" "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:IKSystem|jam_RIG_ref:IKHandle|jam_RIG_ref:IKOffsetLeg_L|jam_RIG_ref:IKExtraLeg_L|jam_RIG_ref:IKLeg_L.translateX" 
		"jam_RIG_refRN.placeHolderList[60]" ""
		5 4 "jam_RIG_refRN" "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:IKSystem|jam_RIG_ref:IKHandle|jam_RIG_ref:IKOffsetLeg_L|jam_RIG_ref:IKExtraLeg_L|jam_RIG_ref:IKLeg_L.translateY" 
		"jam_RIG_refRN.placeHolderList[61]" ""
		5 4 "jam_RIG_refRN" "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:IKSystem|jam_RIG_ref:IKHandle|jam_RIG_ref:IKOffsetLeg_L|jam_RIG_ref:IKExtraLeg_L|jam_RIG_ref:IKLeg_L.translateZ" 
		"jam_RIG_refRN.placeHolderList[62]" ""
		5 4 "jam_RIG_refRN" "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:IKSystem|jam_RIG_ref:IKHandle|jam_RIG_ref:IKOffsetLeg_L|jam_RIG_ref:IKExtraLeg_L|jam_RIG_ref:IKLeg_L.stretchy" 
		"jam_RIG_refRN.placeHolderList[63]" ""
		5 4 "jam_RIG_refRN" "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:IKSystem|jam_RIG_ref:IKHandle|jam_RIG_ref:IKOffsetLeg_L|jam_RIG_ref:IKExtraLeg_L|jam_RIG_ref:IKLeg_L.antiPop" 
		"jam_RIG_refRN.placeHolderList[64]" ""
		5 4 "jam_RIG_refRN" "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:IKSystem|jam_RIG_ref:IKHandle|jam_RIG_ref:IKOffsetLeg_L|jam_RIG_ref:IKExtraLeg_L|jam_RIG_ref:IKLeg_L.Lenght1" 
		"jam_RIG_refRN.placeHolderList[65]" ""
		5 4 "jam_RIG_refRN" "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:IKSystem|jam_RIG_ref:IKHandle|jam_RIG_ref:IKOffsetLeg_L|jam_RIG_ref:IKExtraLeg_L|jam_RIG_ref:IKLeg_L.Lenght2" 
		"jam_RIG_refRN.placeHolderList[66]" ""
		5 4 "jam_RIG_refRN" "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:IKSystem|jam_RIG_ref:IKHandle|jam_RIG_ref:IKOffsetLeg_L|jam_RIG_ref:IKExtraLeg_L|jam_RIG_ref:IKLeg_L.volume" 
		"jam_RIG_refRN.placeHolderList[67]" ""
		5 4 "jam_RIG_refRN" "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:IKSystem|jam_RIG_ref:IKHandle|jam_RIG_ref:IKOffsetLeg_L|jam_RIG_ref:IKExtraLeg_L|jam_RIG_ref:IKLeg_L.rotateX" 
		"jam_RIG_refRN.placeHolderList[68]" ""
		5 4 "jam_RIG_refRN" "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:IKSystem|jam_RIG_ref:IKHandle|jam_RIG_ref:IKOffsetLeg_L|jam_RIG_ref:IKExtraLeg_L|jam_RIG_ref:IKLeg_L.rotateY" 
		"jam_RIG_refRN.placeHolderList[69]" ""
		5 4 "jam_RIG_refRN" "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:IKSystem|jam_RIG_ref:IKHandle|jam_RIG_ref:IKOffsetLeg_L|jam_RIG_ref:IKExtraLeg_L|jam_RIG_ref:IKLeg_L.rotateZ" 
		"jam_RIG_refRN.placeHolderList[70]" ""
		5 4 "jam_RIG_refRN" "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:IKSystem|jam_RIG_ref:IKHandle|jam_RIG_ref:IKOffsetLeg_L|jam_RIG_ref:IKExtraLeg_L|jam_RIG_ref:IKLeg_L.visibility" 
		"jam_RIG_refRN.placeHolderList[71]" ""
		5 4 "jam_RIG_refRN" "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:RootSystem|jam_RIG_ref:RootOffsetX_M|jam_RIG_ref:RootExtraX_M|jam_RIG_ref:RootX_M.rotateX" 
		"jam_RIG_refRN.placeHolderList[72]" ""
		5 4 "jam_RIG_refRN" "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:RootSystem|jam_RIG_ref:RootOffsetX_M|jam_RIG_ref:RootExtraX_M|jam_RIG_ref:RootX_M.rotateY" 
		"jam_RIG_refRN.placeHolderList[73]" ""
		5 4 "jam_RIG_refRN" "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:RootSystem|jam_RIG_ref:RootOffsetX_M|jam_RIG_ref:RootExtraX_M|jam_RIG_ref:RootX_M.rotateZ" 
		"jam_RIG_refRN.placeHolderList[74]" ""
		5 4 "jam_RIG_refRN" "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:RootSystem|jam_RIG_ref:RootOffsetX_M|jam_RIG_ref:RootExtraX_M|jam_RIG_ref:RootX_M.legLock" 
		"jam_RIG_refRN.placeHolderList[75]" ""
		5 4 "jam_RIG_refRN" "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:RootSystem|jam_RIG_ref:RootOffsetX_M|jam_RIG_ref:RootExtraX_M|jam_RIG_ref:RootX_M.translateX" 
		"jam_RIG_refRN.placeHolderList[76]" ""
		5 4 "jam_RIG_refRN" "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:RootSystem|jam_RIG_ref:RootOffsetX_M|jam_RIG_ref:RootExtraX_M|jam_RIG_ref:RootX_M.translateY" 
		"jam_RIG_refRN.placeHolderList[77]" ""
		5 4 "jam_RIG_refRN" "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:RootSystem|jam_RIG_ref:RootOffsetX_M|jam_RIG_ref:RootExtraX_M|jam_RIG_ref:RootX_M.translateZ" 
		"jam_RIG_refRN.placeHolderList[78]" ""
		5 4 "jam_RIG_refRN" "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:RootSystem|jam_RIG_ref:RootOffsetX_M|jam_RIG_ref:RootExtraX_M|jam_RIG_ref:RootX_M.visibility" 
		"jam_RIG_refRN.placeHolderList[79]" ""
		5 4 "jam_RIG_refRN" "|jam_RIG_ref:bag_ctrl_grp|jam_RIG_ref:bag_ctrl.translateX" 
		"jam_RIG_refRN.placeHolderList[80]" ""
		5 4 "jam_RIG_refRN" "|jam_RIG_ref:bag_ctrl_grp|jam_RIG_ref:bag_ctrl.translateY" 
		"jam_RIG_refRN.placeHolderList[81]" ""
		5 4 "jam_RIG_refRN" "|jam_RIG_ref:bag_ctrl_grp|jam_RIG_ref:bag_ctrl.translateZ" 
		"jam_RIG_refRN.placeHolderList[82]" ""
		5 4 "jam_RIG_refRN" "|jam_RIG_ref:bag_ctrl_grp|jam_RIG_ref:bag_ctrl.rotateX" 
		"jam_RIG_refRN.placeHolderList[83]" ""
		5 4 "jam_RIG_refRN" "|jam_RIG_ref:bag_ctrl_grp|jam_RIG_ref:bag_ctrl.rotateY" 
		"jam_RIG_refRN.placeHolderList[84]" ""
		5 4 "jam_RIG_refRN" "|jam_RIG_ref:bag_ctrl_grp|jam_RIG_ref:bag_ctrl.rotateZ" 
		"jam_RIG_refRN.placeHolderList[85]" ""
		5 4 "jam_RIG_refRN" "|jam_RIG_ref:bag_ctrl_grp|jam_RIG_ref:bag_ctrl.scaleX" 
		"jam_RIG_refRN.placeHolderList[86]" ""
		5 4 "jam_RIG_refRN" "|jam_RIG_ref:bag_ctrl_grp|jam_RIG_ref:bag_ctrl.scaleY" 
		"jam_RIG_refRN.placeHolderList[87]" ""
		5 4 "jam_RIG_refRN" "|jam_RIG_ref:bag_ctrl_grp|jam_RIG_ref:bag_ctrl.scaleZ" 
		"jam_RIG_refRN.placeHolderList[88]" ""
		5 4 "jam_RIG_refRN" "|jam_RIG_ref:bag_ctrl_grp|jam_RIG_ref:bag_ctrl.visibility" 
		"jam_RIG_refRN.placeHolderList[89]" "";
	setAttr ".ptag" -type "string" "";
lockNode -l 1 ;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "52D95E3D-49FF-770E-32CF-B4A7EE265A41";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n"
		+ "            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n"
		+ "            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n"
		+ "            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n"
		+ "            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n"
		+ "            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 0\n"
		+ "            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n"
		+ "            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n"
		+ "            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n"
		+ "            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n"
		+ "            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n"
		+ "            -width 868\n            -height 756\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n"
		+ "            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n"
		+ "            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n"
		+ "            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n"
		+ "            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 1\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n"
		+ "                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n"
		+ "                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 1\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -showCurveNames 0\n                -showActiveCurveNames 0\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n"
		+ "                -classicMode 1\n                -valueLinesToggle 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n"
		+ "                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 1\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n"
		+ "                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n"
		+ "                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n"
		+ "                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n"
		+ "                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n"
		+ "                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n"
		+ "                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n"
		+ "                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -controllers 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n"
		+ "                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n"
		+ "                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n"
		+ "            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n"
		+ "            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n"
		+ "            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1914\n            -height 1013\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -highlightConnections 0\n"
		+ "                -copyConnectionsOnPaste 0\n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n"
		+ "\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 868\\n    -height 756\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 868\\n    -height 756\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "66541A67-43B8-150E-8465-A38C389D3BDC";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 7 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode animCurveTA -n "FKNeck_M_rotateX";
	rename -uid "865015AF-4D0F-6FCD-2699-629658E3EBBD";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  3 0 5 0 7 0;
createNode animCurveTA -n "FKNeck_M_rotateY";
	rename -uid "FCCEB899-4861-BB5A-B028-9AA937DDBEF8";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  3 0 5 0 7 0;
createNode animCurveTA -n "FKNeck_M_rotateZ";
	rename -uid "152AB4CC-41D1-A0D7-B4C8-5CBE0C13B432";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  3 0 5 0 7 0;
createNode animCurveTU -n "FKNeck_M_scaleX";
	rename -uid "95A80487-46B5-A4FB-58E4-A7B09B96CC6E";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  3 1 5 1 7 1;
createNode animCurveTU -n "FKNeck_M_scaleY";
	rename -uid "2E267DBF-4791-E1EB-FE49-C79DCB5D4045";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  3 1 5 1 7 1;
createNode animCurveTU -n "FKNeck_M_scaleZ";
	rename -uid "6B775F6E-4881-28A6-B901-DA8A066C57AD";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  3 1 5 1 7 1;
createNode animCurveTL -n "FKNeck_M_translateX";
	rename -uid "F4753507-4C94-07A5-D874-519C8A15DECD";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  3 0 5 12.864757 7 0;
createNode animCurveTL -n "FKNeck_M_translateY";
	rename -uid "8ACF87B6-4E0C-4566-CC42-8AB76A0BBB41";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  3 0 5 7.7756429000000002 7 0;
createNode animCurveTL -n "FKNeck_M_translateZ";
	rename -uid "393B5213-4039-13A8-CC07-619378960B69";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  3 0 5 0 7 0;
createNode animCurveTU -n "FKNeck_M_visibility";
	rename -uid "6D09BC06-45DC-823C-FD96-E8AA5068EBC0";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  3 1 5 1 7 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTU -n "FKHead_M_Global";
	rename -uid "FB709D97-40D6-B324-7437-65807A7B3FEC";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 3 0 5 0 7 0;
createNode animCurveTA -n "FKHead_M_rotateX";
	rename -uid "0B977A62-4884-A1A8-5BF4-1C9C8D025FD5";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 3 0 5 0 7 0;
createNode animCurveTA -n "FKHead_M_rotateY";
	rename -uid "4E44F495-4B77-D8E4-7254-328D96019BB2";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 3 0 5 0 7 0;
createNode animCurveTA -n "FKHead_M_rotateZ";
	rename -uid "2BCA9A6B-402F-5158-7A9D-4C956D45E23A";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 3 0 5 0 7 0;
createNode animCurveTU -n "FKHead_M_scaleX";
	rename -uid "5FD2223A-4330-E05F-790B-2C8301614313";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 1 3 1 5 1 7 1;
createNode animCurveTU -n "FKHead_M_scaleY";
	rename -uid "AA56222A-43FB-B788-46EA-1984A91EDEBC";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 1 3 1 5 1 7 1;
createNode animCurveTU -n "FKHead_M_scaleZ";
	rename -uid "73ED3F7D-46BC-5CEF-A224-F7A812A5F305";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 1 3 1 5 1 7 1;
createNode animCurveTL -n "FKHead_M_translateX";
	rename -uid "C811A96F-471C-833B-D734-15AE24F4626E";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 3 0 5 10.081859 7 0;
createNode animCurveTL -n "FKHead_M_translateY";
	rename -uid "A553EFB5-4C9F-7F63-DF6E-EAAF2B498C14";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 3 0 5 -3.2547590999999998 7 0;
createNode animCurveTL -n "FKHead_M_translateZ";
	rename -uid "A6CD5189-4CE8-8BE8-CC62-81BB730D4FCD";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 3 0 5 0 7 0;
createNode animCurveTU -n "FKHead_M_visibility";
	rename -uid "E2138270-4D84-0134-8A98-3593F00ECDCE";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 1 3 1 5 1 7 1;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "FKSpine1_M_rotateX";
	rename -uid "B32F9462-4B22-F394-E5FF-0AA07A89BF14";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  3 0 5 0 7 0;
createNode animCurveTA -n "FKSpine1_M_rotateY";
	rename -uid "DF919D6E-4B1B-E9E2-8610-9784F41712B6";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  3 0 5 0 7 0;
createNode animCurveTA -n "FKSpine1_M_rotateZ";
	rename -uid "6F2E1AA7-4AC7-CB69-7442-4E80871CF0BA";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  3 0 5 0 7 0;
createNode animCurveTU -n "FKSpine1_M_scaleX";
	rename -uid "917000C7-40DF-2090-9024-53A8EA9C0060";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  3 1 5 1 7 1;
createNode animCurveTU -n "FKSpine1_M_scaleY";
	rename -uid "CF472D56-483F-D7FA-F684-E8A10CF343DF";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  3 1 5 1 7 1;
createNode animCurveTU -n "FKSpine1_M_scaleZ";
	rename -uid "872E71F5-489E-EE1A-6A7E-9F9F467827F2";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  3 1 5 1 7 1;
createNode animCurveTL -n "FKSpine1_M_translateX";
	rename -uid "5CE6B7FF-49A2-4ED0-BB56-939DA5A86024";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  3 0 5 12.413808 7 11.116909;
createNode animCurveTL -n "FKSpine1_M_translateY";
	rename -uid "7C4AE071-4015-5502-577C-E7848E37393F";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  3 0 5 8.4770258999999992 7 6.0354659000000002;
createNode animCurveTL -n "FKSpine1_M_translateZ";
	rename -uid "E5365E95-43B0-A064-E33C-8DA2CBFF9472";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  3 0 5 0 7 0;
createNode animCurveTU -n "FKSpine1_M_visibility";
	rename -uid "EF4C3FF8-4C49-F977-3059-0AA48EFFE2D1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  3 1 5 1 7 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "FKChest_M_rotateX";
	rename -uid "2B0908B9-4D08-9645-3458-43BA11C23B4D";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  3 0 5 0 7 0;
createNode animCurveTA -n "FKChest_M_rotateY";
	rename -uid "89507D49-4213-B6A2-A0C5-39AC7D59CDF0";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  3 0 5 0 7 0;
createNode animCurveTA -n "FKChest_M_rotateZ";
	rename -uid "E30490D6-4CD8-5AA7-4849-8A831383AE1F";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  3 0 5 0 7 0;
createNode animCurveTU -n "FKChest_M_scaleX";
	rename -uid "8B729D1D-4BE1-11A8-D523-2EA7A0DF86B3";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  3 1 5 1 7 1;
createNode animCurveTU -n "FKChest_M_scaleY";
	rename -uid "6CED96A7-468C-CA90-8497-D9B497641565";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  3 1 5 1 7 1;
createNode animCurveTU -n "FKChest_M_scaleZ";
	rename -uid "BF356D75-48DE-8135-34A2-48AD50DF6D2F";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  3 1 5 1 7 1;
createNode animCurveTL -n "FKChest_M_translateX";
	rename -uid "7A328FFE-4534-4279-C0C0-7C9D48593F1D";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  3 0 5 1.3301433 7 0;
createNode animCurveTL -n "FKChest_M_translateY";
	rename -uid "84133D4A-4FDD-FF1D-F042-D68C19D0D049";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  3 0 5 2.4236092999999999 7 0;
createNode animCurveTL -n "FKChest_M_translateZ";
	rename -uid "3E6EFE1B-48C3-A02D-4B81-5DBC5611775A";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  3 0 5 0 7 0;
createNode animCurveTU -n "FKChest_M_visibility";
	rename -uid "FC6BD6CD-4221-C53F-4703-899FE402CFF1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  3 1 5 1 7 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTU -n "IKLeg_R_antiPop";
	rename -uid "977B8CB5-4DF4-56CC-E480-1ABA375739AE";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 7 0;
createNode animCurveTU -n "IKLeg_R_Lenght1";
	rename -uid "072C6E26-41D4-9F12-3790-E7BC00B7D3DF";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 7 1;
createNode animCurveTU -n "IKLeg_R_Lenght2";
	rename -uid "F45D1E29-4FAF-F013-9995-9386C2A31DB8";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 7 1;
createNode animCurveTA -n "IKLeg_R_rotateX";
	rename -uid "08BE6FCB-460F-1A4C-CED9-F8B8A17C5580";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 7 0;
createNode animCurveTA -n "IKLeg_R_rotateY";
	rename -uid "8926B14C-4B88-80FA-89B5-8BAB9CED869B";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 7 0;
createNode animCurveTA -n "IKLeg_R_rotateZ";
	rename -uid "1829554E-4AF7-7ED1-DD43-79A407238078";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 7 0;
createNode animCurveTU -n "IKLeg_R_scaleX";
	rename -uid "C1FE26C4-4BB4-FE52-BC1E-D1B10EB2E58B";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 7 1;
createNode animCurveTU -n "IKLeg_R_scaleY";
	rename -uid "7EC62FD8-4E7E-E370-B529-96AF4346049F";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 7 1;
createNode animCurveTU -n "IKLeg_R_scaleZ";
	rename -uid "FE228DCA-470C-3E9D-667B-A3A578DBFEFE";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 7 1;
createNode animCurveTU -n "IKLeg_R_stretchy";
	rename -uid "A1987EEE-4824-5ABF-2BB7-A8BD4E91746F";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 7 0;
createNode animCurveTL -n "IKLeg_R_translateX";
	rename -uid "D5173F26-45E8-574B-94CA-9F955F9C28F0";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 7 0;
createNode animCurveTL -n "IKLeg_R_translateY";
	rename -uid "8BB53408-4A3D-6468-99D1-9883C17C728C";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 7 0;
createNode animCurveTL -n "IKLeg_R_translateZ";
	rename -uid "BED0344D-4B59-4342-BAF5-72BD3EE47C68";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 3 -14.393513 7 0;
createNode animCurveTU -n "IKLeg_R_visibility";
	rename -uid "C4C44D56-41AE-F87C-DDEF-5FB7509259C4";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 7 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTU -n "IKLeg_R_volume";
	rename -uid "D9892BCD-4946-716F-7A24-00AC02993562";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 10 7 10;
createNode animCurveTU -n "IKLeg_L_antiPop";
	rename -uid "545AFF0E-4ACF-DCFA-D516-E0BA1612AD61";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 7 0;
createNode animCurveTU -n "IKLeg_L_Lenght1";
	rename -uid "69383B04-4618-FBBC-7606-45B1B961A344";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 7 1;
createNode animCurveTU -n "IKLeg_L_Lenght2";
	rename -uid "AE761185-4EEC-5097-60B8-B0BD80CBA03F";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 7 1;
createNode animCurveTA -n "IKLeg_L_rotateX";
	rename -uid "891F8FBB-4C9E-A82D-933F-9991C4D1A109";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 7 0;
createNode animCurveTA -n "IKLeg_L_rotateY";
	rename -uid "BC06C684-414E-20D1-4C64-48B7DB344F2C";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 7 0;
createNode animCurveTA -n "IKLeg_L_rotateZ";
	rename -uid "B7D5D018-49A9-CD04-60AE-78A365A16926";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 7 0;
createNode animCurveTU -n "IKLeg_L_scaleX";
	rename -uid "E4674088-4958-924F-525A-38B31512834E";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 7 1;
createNode animCurveTU -n "IKLeg_L_scaleY";
	rename -uid "C4CE5D57-43E1-2E48-C10E-FD909BAF35EE";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 7 1;
createNode animCurveTU -n "IKLeg_L_scaleZ";
	rename -uid "E4B1529E-4EEE-2D60-12B3-D9A7AEB89419";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 7 1;
createNode animCurveTU -n "IKLeg_L_stretchy";
	rename -uid "C493021E-4127-6237-3DD4-D29B1000C6E7";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 7 0;
createNode animCurveTL -n "IKLeg_L_translateX";
	rename -uid "62A81D35-42D5-FC11-4B30-BBA96E1BEC69";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 7 0;
createNode animCurveTL -n "IKLeg_L_translateY";
	rename -uid "6785C7D8-4C8E-B49F-D50E-ED9CC55701A8";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 7 0;
createNode animCurveTL -n "IKLeg_L_translateZ";
	rename -uid "4CA48AE2-408A-C7AB-0A25-0B97F7763ADD";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 3 -14.393513 7 0;
createNode animCurveTU -n "IKLeg_L_visibility";
	rename -uid "35F9DA6D-4383-EB99-5BD2-FDAD61485390";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 7 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTU -n "IKLeg_L_volume";
	rename -uid "F733FAF4-4F78-C5BA-64FB-208EE50903AD";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 10 7 10;
createNode animCurveTU -n "RootX_M_legLock";
	rename -uid "240863DF-4F85-8FAE-C865-469E2E02AA37";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 5 0 7 0;
createNode animCurveTA -n "RootX_M_rotateX";
	rename -uid "EE8FC122-4A93-5FAF-2B1B-9296E4D9275F";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 5 0 7 0;
createNode animCurveTA -n "RootX_M_rotateY";
	rename -uid "5DD484DF-4FBA-9BFC-EE3B-E783F95AD2A0";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 5 0 7 0;
createNode animCurveTA -n "RootX_M_rotateZ";
	rename -uid "B5107DF5-4969-A886-B8E6-B0A3940746F4";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 5 0 7 0;
createNode animCurveTL -n "RootX_M_translateX";
	rename -uid "D0CF787F-4726-E3BD-4DA9-0C9AFFE38E60";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 5 0 7 0;
createNode animCurveTL -n "RootX_M_translateY";
	rename -uid "B0D82374-415D-218C-D37A-28A2C4269AD0";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 3 -28.432947 5 0 7 0;
createNode animCurveTL -n "RootX_M_translateZ";
	rename -uid "70BA5DEF-4B9F-9AF0-9572-2BBCD60E75BF";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 3 13.340464 5 22.622268 7 0;
createNode animCurveTU -n "RootX_M_visibility";
	rename -uid "A376C29B-4DBC-2BD6-8339-61A029138A5A";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1 5 1 7 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTU -n "bag_ctrl_visibility";
	rename -uid "F4C565C5-4F34-5E38-B6D5-75B67A296D83";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1 5 1 7 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "bag_ctrl_translateX";
	rename -uid "20F757D8-48DC-75AD-1626-2FB14BD1AD59";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -7.1054273576010019e-15 5 -7.1054273576010019e-15
		 7 -7.1054273576010019e-15;
createNode animCurveTL -n "bag_ctrl_translateY";
	rename -uid "9DB57409-447E-68FF-F6B9-6D975BC3B655";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 5 0 7 0;
createNode animCurveTL -n "bag_ctrl_translateZ";
	rename -uid "F1DD65DA-4166-4CAA-A98D-8C940E51EBC0";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -7.1054273576010019e-15 5 -7.1054273576010019e-15
		 7 -7.1054273576010019e-15;
createNode animCurveTA -n "bag_ctrl_rotateX";
	rename -uid "8435585B-4627-C373-8C38-448CA9939D4F";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 3 29.053243674640338 5 -19.91643562781017
		 7 0;
createNode animCurveTA -n "bag_ctrl_rotateY";
	rename -uid "F5BAEBB1-41C2-1359-2FF3-9BBAFE1A1EA7";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 5 0 7 0;
createNode animCurveTA -n "bag_ctrl_rotateZ";
	rename -uid "27BE2405-4B7A-5F77-4A64-C681EF8C6B52";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 5 0 7 0;
createNode animCurveTU -n "bag_ctrl_scaleX";
	rename -uid "ACE9138A-4B1B-63E8-20CF-1DBF5CB684AE";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1 5 1 7 1;
createNode animCurveTU -n "bag_ctrl_scaleY";
	rename -uid "AAB376F7-445C-9941-82E7-5DBE18A94E91";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1 5 1 7 1;
createNode animCurveTU -n "bag_ctrl_scaleZ";
	rename -uid "0A51C6B6-4134-7BF7-C94A-9AA07722A979";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1 5 1 7 1;
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
	setAttr -s 4 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 6 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
select -ne :defaultRenderingList1;
	setAttr -s 6 ".r";
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
select -ne :ikSystem;
	setAttr -s 2 ".sol";
connectAttr "FKNeck_M_scaleX.o" "jam_RIG_refRN.phl[1]";
connectAttr "FKNeck_M_scaleY.o" "jam_RIG_refRN.phl[2]";
connectAttr "FKNeck_M_scaleZ.o" "jam_RIG_refRN.phl[3]";
connectAttr "FKNeck_M_rotateX.o" "jam_RIG_refRN.phl[4]";
connectAttr "FKNeck_M_rotateY.o" "jam_RIG_refRN.phl[5]";
connectAttr "FKNeck_M_rotateZ.o" "jam_RIG_refRN.phl[6]";
connectAttr "FKNeck_M_translateX.o" "jam_RIG_refRN.phl[7]";
connectAttr "FKNeck_M_translateY.o" "jam_RIG_refRN.phl[8]";
connectAttr "FKNeck_M_translateZ.o" "jam_RIG_refRN.phl[9]";
connectAttr "FKNeck_M_visibility.o" "jam_RIG_refRN.phl[10]";
connectAttr "FKHead_M_scaleX.o" "jam_RIG_refRN.phl[11]";
connectAttr "FKHead_M_scaleY.o" "jam_RIG_refRN.phl[12]";
connectAttr "FKHead_M_scaleZ.o" "jam_RIG_refRN.phl[13]";
connectAttr "FKHead_M_Global.o" "jam_RIG_refRN.phl[14]";
connectAttr "FKHead_M_rotateX.o" "jam_RIG_refRN.phl[15]";
connectAttr "FKHead_M_rotateY.o" "jam_RIG_refRN.phl[16]";
connectAttr "FKHead_M_rotateZ.o" "jam_RIG_refRN.phl[17]";
connectAttr "FKHead_M_translateX.o" "jam_RIG_refRN.phl[18]";
connectAttr "FKHead_M_translateY.o" "jam_RIG_refRN.phl[19]";
connectAttr "FKHead_M_translateZ.o" "jam_RIG_refRN.phl[20]";
connectAttr "FKHead_M_visibility.o" "jam_RIG_refRN.phl[21]";
connectAttr "FKSpine1_M_scaleX.o" "jam_RIG_refRN.phl[22]";
connectAttr "FKSpine1_M_scaleY.o" "jam_RIG_refRN.phl[23]";
connectAttr "FKSpine1_M_scaleZ.o" "jam_RIG_refRN.phl[24]";
connectAttr "FKSpine1_M_rotateX.o" "jam_RIG_refRN.phl[25]";
connectAttr "FKSpine1_M_rotateY.o" "jam_RIG_refRN.phl[26]";
connectAttr "FKSpine1_M_rotateZ.o" "jam_RIG_refRN.phl[27]";
connectAttr "FKSpine1_M_translateX.o" "jam_RIG_refRN.phl[28]";
connectAttr "FKSpine1_M_translateY.o" "jam_RIG_refRN.phl[29]";
connectAttr "FKSpine1_M_translateZ.o" "jam_RIG_refRN.phl[30]";
connectAttr "FKSpine1_M_visibility.o" "jam_RIG_refRN.phl[31]";
connectAttr "FKChest_M_scaleX.o" "jam_RIG_refRN.phl[32]";
connectAttr "FKChest_M_scaleY.o" "jam_RIG_refRN.phl[33]";
connectAttr "FKChest_M_scaleZ.o" "jam_RIG_refRN.phl[34]";
connectAttr "FKChest_M_rotateX.o" "jam_RIG_refRN.phl[35]";
connectAttr "FKChest_M_rotateY.o" "jam_RIG_refRN.phl[36]";
connectAttr "FKChest_M_rotateZ.o" "jam_RIG_refRN.phl[37]";
connectAttr "FKChest_M_translateX.o" "jam_RIG_refRN.phl[38]";
connectAttr "FKChest_M_translateY.o" "jam_RIG_refRN.phl[39]";
connectAttr "FKChest_M_translateZ.o" "jam_RIG_refRN.phl[40]";
connectAttr "FKChest_M_visibility.o" "jam_RIG_refRN.phl[41]";
connectAttr "IKLeg_R_scaleX.o" "jam_RIG_refRN.phl[42]";
connectAttr "IKLeg_R_scaleY.o" "jam_RIG_refRN.phl[43]";
connectAttr "IKLeg_R_scaleZ.o" "jam_RIG_refRN.phl[44]";
connectAttr "IKLeg_R_translateX.o" "jam_RIG_refRN.phl[45]";
connectAttr "IKLeg_R_translateY.o" "jam_RIG_refRN.phl[46]";
connectAttr "IKLeg_R_translateZ.o" "jam_RIG_refRN.phl[47]";
connectAttr "IKLeg_R_stretchy.o" "jam_RIG_refRN.phl[48]";
connectAttr "IKLeg_R_antiPop.o" "jam_RIG_refRN.phl[49]";
connectAttr "IKLeg_R_Lenght1.o" "jam_RIG_refRN.phl[50]";
connectAttr "IKLeg_R_Lenght2.o" "jam_RIG_refRN.phl[51]";
connectAttr "IKLeg_R_volume.o" "jam_RIG_refRN.phl[52]";
connectAttr "IKLeg_R_rotateX.o" "jam_RIG_refRN.phl[53]";
connectAttr "IKLeg_R_rotateY.o" "jam_RIG_refRN.phl[54]";
connectAttr "IKLeg_R_rotateZ.o" "jam_RIG_refRN.phl[55]";
connectAttr "IKLeg_R_visibility.o" "jam_RIG_refRN.phl[56]";
connectAttr "IKLeg_L_scaleX.o" "jam_RIG_refRN.phl[57]";
connectAttr "IKLeg_L_scaleY.o" "jam_RIG_refRN.phl[58]";
connectAttr "IKLeg_L_scaleZ.o" "jam_RIG_refRN.phl[59]";
connectAttr "IKLeg_L_translateX.o" "jam_RIG_refRN.phl[60]";
connectAttr "IKLeg_L_translateY.o" "jam_RIG_refRN.phl[61]";
connectAttr "IKLeg_L_translateZ.o" "jam_RIG_refRN.phl[62]";
connectAttr "IKLeg_L_stretchy.o" "jam_RIG_refRN.phl[63]";
connectAttr "IKLeg_L_antiPop.o" "jam_RIG_refRN.phl[64]";
connectAttr "IKLeg_L_Lenght1.o" "jam_RIG_refRN.phl[65]";
connectAttr "IKLeg_L_Lenght2.o" "jam_RIG_refRN.phl[66]";
connectAttr "IKLeg_L_volume.o" "jam_RIG_refRN.phl[67]";
connectAttr "IKLeg_L_rotateX.o" "jam_RIG_refRN.phl[68]";
connectAttr "IKLeg_L_rotateY.o" "jam_RIG_refRN.phl[69]";
connectAttr "IKLeg_L_rotateZ.o" "jam_RIG_refRN.phl[70]";
connectAttr "IKLeg_L_visibility.o" "jam_RIG_refRN.phl[71]";
connectAttr "RootX_M_rotateX.o" "jam_RIG_refRN.phl[72]";
connectAttr "RootX_M_rotateY.o" "jam_RIG_refRN.phl[73]";
connectAttr "RootX_M_rotateZ.o" "jam_RIG_refRN.phl[74]";
connectAttr "RootX_M_legLock.o" "jam_RIG_refRN.phl[75]";
connectAttr "RootX_M_translateX.o" "jam_RIG_refRN.phl[76]";
connectAttr "RootX_M_translateY.o" "jam_RIG_refRN.phl[77]";
connectAttr "RootX_M_translateZ.o" "jam_RIG_refRN.phl[78]";
connectAttr "RootX_M_visibility.o" "jam_RIG_refRN.phl[79]";
connectAttr "bag_ctrl_translateX.o" "jam_RIG_refRN.phl[80]";
connectAttr "bag_ctrl_translateY.o" "jam_RIG_refRN.phl[81]";
connectAttr "bag_ctrl_translateZ.o" "jam_RIG_refRN.phl[82]";
connectAttr "bag_ctrl_rotateX.o" "jam_RIG_refRN.phl[83]";
connectAttr "bag_ctrl_rotateY.o" "jam_RIG_refRN.phl[84]";
connectAttr "bag_ctrl_rotateZ.o" "jam_RIG_refRN.phl[85]";
connectAttr "bag_ctrl_scaleX.o" "jam_RIG_refRN.phl[86]";
connectAttr "bag_ctrl_scaleY.o" "jam_RIG_refRN.phl[87]";
connectAttr "bag_ctrl_scaleZ.o" "jam_RIG_refRN.phl[88]";
connectAttr "bag_ctrl_visibility.o" "jam_RIG_refRN.phl[89]";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of jam_Jump01.ma
