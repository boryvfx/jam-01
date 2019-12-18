//Maya ASCII 2018ff07 scene
//Name: jam_Run01.ma
//Last modified: Wed, Dec 18, 2019 09:15:39 PM
//Codeset: 1252
file -rdi 1 -ns "jam_RIG_ref" -rfn "jam_RIG_refRN" -op "v=0;" -typ "mayaAscii"
		 "D:/Unity Projects/jam-01/Ressources/Animation//scenes/jam_RIG_ref.ma";
file -r -ns "jam_RIG_ref" -dr 1 -rfn "jam_RIG_refRN" -op "v=0;" -typ "mayaAscii"
		 "D:/Unity Projects/jam-01/Ressources/Animation//scenes/jam_RIG_ref.ma";
requires maya "2018ff07";
requires "stereoCamera" "10.0";
requires "mtoa" "3.2.0.2";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2018";
fileInfo "version" "2018";
fileInfo "cutIdentifier" "201711281015-8e846c9074";
fileInfo "osv" "Microsoft Windows 8 Home Premium Edition, 64-bit  (Build 9200)\n";
createNode transform -s -n "persp";
	rename -uid "CEAB158F-4DC3-E316-71FC-4883AED07DC5";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 13.971734455630314 266.97681719469665 174.58048013607305 ;
	setAttr ".r" -type "double3" -50.138352729589833 -13.799999999996357 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "D8CEDDD6-496E-4AFF-33B8-1A9FD8F5B1BE";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 225.45969045375639;
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
	rename -uid "7353E18A-4929-86A4-7474-2C974C862B2B";
	setAttr -s 4 ".lnk";
	setAttr -s 4 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "3390BAC4-488A-74FA-4600-8496EA44AC17";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "4CF3D1EB-4B1C-C6D0-BE5E-569089A35428";
createNode displayLayerManager -n "layerManager";
	rename -uid "0F781FA5-458B-71EF-848E-22B448FC4CF8";
createNode displayLayer -n "defaultLayer";
	rename -uid "5598D36D-490F-0461-2611-58B8EFA79F8B";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "E353835B-4CAF-FA81-E190-F0967170795E";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "A3F47FEB-49C6-BF47-A2A3-ACB8786E6A93";
	setAttr ".g" yes;
createNode reference -n "jam_RIG_refRN";
	rename -uid "4F70290E-4D27-F049-B7BB-E7BA18E35626";
	setAttr -s 51 ".phl";
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
	setAttr ".ed" -type "dataReferenceEdits" 
		"jam_RIG_refRN"
		"jam_RIG_refRN" 0
		"jam_RIG_refRN" 112
		2 "|jam_RIG_ref:Group|jam_RIG_ref:Main" "visibility" " 1"
		2 "|jam_RIG_ref:Group|jam_RIG_ref:Main" "translate" " -type \"double3\" 0 0 0"
		
		2 "|jam_RIG_ref:Group|jam_RIG_ref:Main" "rotate" " -type \"double3\" 0 0 0"
		
		2 "|jam_RIG_ref:Group|jam_RIG_ref:Main" "scale" " -type \"double3\" 1 1 1"
		
		2 "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:FKSystem|jam_RIG_ref:FKParentConstraintToChest_M|jam_RIG_ref:FKOffsetNeck_M|jam_RIG_ref:FKExtraNeck_M|jam_RIG_ref:FKNeck_M" 
		"visibility" " 1"
		2 "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:FKSystem|jam_RIG_ref:FKParentConstraintToChest_M|jam_RIG_ref:FKOffsetNeck_M|jam_RIG_ref:FKExtraNeck_M|jam_RIG_ref:FKNeck_M" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:FKSystem|jam_RIG_ref:FKParentConstraintToChest_M|jam_RIG_ref:FKOffsetNeck_M|jam_RIG_ref:FKExtraNeck_M|jam_RIG_ref:FKNeck_M" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:FKSystem|jam_RIG_ref:FKParentConstraintToChest_M|jam_RIG_ref:FKOffsetNeck_M|jam_RIG_ref:FKExtraNeck_M|jam_RIG_ref:FKNeck_M" 
		"scale" " -type \"double3\" 1 1 1"
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
		"translate" " -type \"double3\" -7.52652609999999989 42.454124 0"
		2 "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:FKSystem|jam_RIG_ref:FKOffsetRoot_M|jam_RIG_ref:FKExtraRoot_M|jam_RIG_ref:FKRoot_M" 
		"rotate" " -type \"double3\" 0 0 14.74234899999999904"
		2 "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:FKSystem|jam_RIG_ref:FKOffsetRoot_M|jam_RIG_ref:FKExtraRoot_M|jam_RIG_ref:FKRoot_M" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:FKSystem|jam_RIG_ref:FKOffsetRoot_M|jam_RIG_ref:FKExtraRoot_M|jam_RIG_ref:FKRoot_M|jam_RIG_ref:FKXRoot_M|jam_RIG_ref:FKOffsetSpine1_M|jam_RIG_ref:HipSwingerStabilizer|jam_RIG_ref:FKExtraSpine1_M|jam_RIG_ref:FKSpine1_M|jam_RIG_ref:FKXSpine1_M|jam_RIG_ref:FKOffsetChest_M|jam_RIG_ref:FKExtraChest_M|jam_RIG_ref:FKChest_M" 
		"visibility" " 1"
		2 "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:FKSystem|jam_RIG_ref:FKOffsetRoot_M|jam_RIG_ref:FKExtraRoot_M|jam_RIG_ref:FKRoot_M|jam_RIG_ref:FKXRoot_M|jam_RIG_ref:FKOffsetSpine1_M|jam_RIG_ref:HipSwingerStabilizer|jam_RIG_ref:FKExtraSpine1_M|jam_RIG_ref:FKSpine1_M|jam_RIG_ref:FKXSpine1_M|jam_RIG_ref:FKOffsetChest_M|jam_RIG_ref:FKExtraChest_M|jam_RIG_ref:FKChest_M" 
		"translate" " -type \"double3\" 1.14655930000000006 2.56561189999999995 0"
		2 "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:FKSystem|jam_RIG_ref:FKOffsetRoot_M|jam_RIG_ref:FKExtraRoot_M|jam_RIG_ref:FKRoot_M|jam_RIG_ref:FKXRoot_M|jam_RIG_ref:FKOffsetSpine1_M|jam_RIG_ref:HipSwingerStabilizer|jam_RIG_ref:FKExtraSpine1_M|jam_RIG_ref:FKSpine1_M|jam_RIG_ref:FKXSpine1_M|jam_RIG_ref:FKOffsetChest_M|jam_RIG_ref:FKExtraChest_M|jam_RIG_ref:FKChest_M" 
		"rotate" " -type \"double3\" 0 0 -5.62140959999999978"
		2 "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:FKSystem|jam_RIG_ref:FKOffsetRoot_M|jam_RIG_ref:FKExtraRoot_M|jam_RIG_ref:FKRoot_M|jam_RIG_ref:FKXRoot_M|jam_RIG_ref:FKOffsetSpine1_M|jam_RIG_ref:HipSwingerStabilizer|jam_RIG_ref:FKExtraSpine1_M|jam_RIG_ref:FKSpine1_M|jam_RIG_ref:FKXSpine1_M|jam_RIG_ref:FKOffsetChest_M|jam_RIG_ref:FKExtraChest_M|jam_RIG_ref:FKChest_M" 
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
		2 "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:RootSystem|jam_RIG_ref:RootOffsetX_M|jam_RIG_ref:RootExtraX_M|jam_RIG_ref:RootX_M" 
		"visibility" " 1"
		2 "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:RootSystem|jam_RIG_ref:RootOffsetX_M|jam_RIG_ref:RootExtraX_M|jam_RIG_ref:RootX_M" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:RootSystem|jam_RIG_ref:RootOffsetX_M|jam_RIG_ref:RootExtraX_M|jam_RIG_ref:RootX_M" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:RootSystem|jam_RIG_ref:RootOffsetX_M|jam_RIG_ref:RootExtraX_M|jam_RIG_ref:RootX_M" 
		"legLock" " -k 1 0"
		5 4 "jam_RIG_refRN" "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:FKSystem|jam_RIG_ref:FKParentConstraintToChest_M|jam_RIG_ref:FKOffsetNeck_M|jam_RIG_ref:FKExtraNeck_M|jam_RIG_ref:FKNeck_M|jam_RIG_ref:FKXNeck_M|jam_RIG_ref:FKOffsetHead_M|jam_RIG_ref:FKGlobalStaticHead_M|jam_RIG_ref:FKGlobalHead_M|jam_RIG_ref:FKExtraHead_M|jam_RIG_ref:FKHead_M.scaleX" 
		"jam_RIG_refRN.placeHolderList[1]" ""
		5 4 "jam_RIG_refRN" "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:FKSystem|jam_RIG_ref:FKParentConstraintToChest_M|jam_RIG_ref:FKOffsetNeck_M|jam_RIG_ref:FKExtraNeck_M|jam_RIG_ref:FKNeck_M|jam_RIG_ref:FKXNeck_M|jam_RIG_ref:FKOffsetHead_M|jam_RIG_ref:FKGlobalStaticHead_M|jam_RIG_ref:FKGlobalHead_M|jam_RIG_ref:FKExtraHead_M|jam_RIG_ref:FKHead_M.scaleY" 
		"jam_RIG_refRN.placeHolderList[2]" ""
		5 4 "jam_RIG_refRN" "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:FKSystem|jam_RIG_ref:FKParentConstraintToChest_M|jam_RIG_ref:FKOffsetNeck_M|jam_RIG_ref:FKExtraNeck_M|jam_RIG_ref:FKNeck_M|jam_RIG_ref:FKXNeck_M|jam_RIG_ref:FKOffsetHead_M|jam_RIG_ref:FKGlobalStaticHead_M|jam_RIG_ref:FKGlobalHead_M|jam_RIG_ref:FKExtraHead_M|jam_RIG_ref:FKHead_M.scaleZ" 
		"jam_RIG_refRN.placeHolderList[3]" ""
		5 4 "jam_RIG_refRN" "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:FKSystem|jam_RIG_ref:FKParentConstraintToChest_M|jam_RIG_ref:FKOffsetNeck_M|jam_RIG_ref:FKExtraNeck_M|jam_RIG_ref:FKNeck_M|jam_RIG_ref:FKXNeck_M|jam_RIG_ref:FKOffsetHead_M|jam_RIG_ref:FKGlobalStaticHead_M|jam_RIG_ref:FKGlobalHead_M|jam_RIG_ref:FKExtraHead_M|jam_RIG_ref:FKHead_M.Global" 
		"jam_RIG_refRN.placeHolderList[4]" ""
		5 4 "jam_RIG_refRN" "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:FKSystem|jam_RIG_ref:FKParentConstraintToChest_M|jam_RIG_ref:FKOffsetNeck_M|jam_RIG_ref:FKExtraNeck_M|jam_RIG_ref:FKNeck_M|jam_RIG_ref:FKXNeck_M|jam_RIG_ref:FKOffsetHead_M|jam_RIG_ref:FKGlobalStaticHead_M|jam_RIG_ref:FKGlobalHead_M|jam_RIG_ref:FKExtraHead_M|jam_RIG_ref:FKHead_M.rotateX" 
		"jam_RIG_refRN.placeHolderList[5]" ""
		5 4 "jam_RIG_refRN" "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:FKSystem|jam_RIG_ref:FKParentConstraintToChest_M|jam_RIG_ref:FKOffsetNeck_M|jam_RIG_ref:FKExtraNeck_M|jam_RIG_ref:FKNeck_M|jam_RIG_ref:FKXNeck_M|jam_RIG_ref:FKOffsetHead_M|jam_RIG_ref:FKGlobalStaticHead_M|jam_RIG_ref:FKGlobalHead_M|jam_RIG_ref:FKExtraHead_M|jam_RIG_ref:FKHead_M.rotateY" 
		"jam_RIG_refRN.placeHolderList[6]" ""
		5 4 "jam_RIG_refRN" "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:FKSystem|jam_RIG_ref:FKParentConstraintToChest_M|jam_RIG_ref:FKOffsetNeck_M|jam_RIG_ref:FKExtraNeck_M|jam_RIG_ref:FKNeck_M|jam_RIG_ref:FKXNeck_M|jam_RIG_ref:FKOffsetHead_M|jam_RIG_ref:FKGlobalStaticHead_M|jam_RIG_ref:FKGlobalHead_M|jam_RIG_ref:FKExtraHead_M|jam_RIG_ref:FKHead_M.rotateZ" 
		"jam_RIG_refRN.placeHolderList[7]" ""
		5 4 "jam_RIG_refRN" "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:FKSystem|jam_RIG_ref:FKParentConstraintToChest_M|jam_RIG_ref:FKOffsetNeck_M|jam_RIG_ref:FKExtraNeck_M|jam_RIG_ref:FKNeck_M|jam_RIG_ref:FKXNeck_M|jam_RIG_ref:FKOffsetHead_M|jam_RIG_ref:FKGlobalStaticHead_M|jam_RIG_ref:FKGlobalHead_M|jam_RIG_ref:FKExtraHead_M|jam_RIG_ref:FKHead_M.translateX" 
		"jam_RIG_refRN.placeHolderList[8]" ""
		5 4 "jam_RIG_refRN" "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:FKSystem|jam_RIG_ref:FKParentConstraintToChest_M|jam_RIG_ref:FKOffsetNeck_M|jam_RIG_ref:FKExtraNeck_M|jam_RIG_ref:FKNeck_M|jam_RIG_ref:FKXNeck_M|jam_RIG_ref:FKOffsetHead_M|jam_RIG_ref:FKGlobalStaticHead_M|jam_RIG_ref:FKGlobalHead_M|jam_RIG_ref:FKExtraHead_M|jam_RIG_ref:FKHead_M.translateY" 
		"jam_RIG_refRN.placeHolderList[9]" ""
		5 4 "jam_RIG_refRN" "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:FKSystem|jam_RIG_ref:FKParentConstraintToChest_M|jam_RIG_ref:FKOffsetNeck_M|jam_RIG_ref:FKExtraNeck_M|jam_RIG_ref:FKNeck_M|jam_RIG_ref:FKXNeck_M|jam_RIG_ref:FKOffsetHead_M|jam_RIG_ref:FKGlobalStaticHead_M|jam_RIG_ref:FKGlobalHead_M|jam_RIG_ref:FKExtraHead_M|jam_RIG_ref:FKHead_M.translateZ" 
		"jam_RIG_refRN.placeHolderList[10]" ""
		5 4 "jam_RIG_refRN" "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:FKSystem|jam_RIG_ref:FKParentConstraintToChest_M|jam_RIG_ref:FKOffsetNeck_M|jam_RIG_ref:FKExtraNeck_M|jam_RIG_ref:FKNeck_M|jam_RIG_ref:FKXNeck_M|jam_RIG_ref:FKOffsetHead_M|jam_RIG_ref:FKGlobalStaticHead_M|jam_RIG_ref:FKGlobalHead_M|jam_RIG_ref:FKExtraHead_M|jam_RIG_ref:FKHead_M.visibility" 
		"jam_RIG_refRN.placeHolderList[11]" ""
		5 4 "jam_RIG_refRN" "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:FKSystem|jam_RIG_ref:FKOffsetRoot_M|jam_RIG_ref:FKExtraRoot_M|jam_RIG_ref:FKRoot_M|jam_RIG_ref:FKXRoot_M|jam_RIG_ref:FKOffsetSpine1_M|jam_RIG_ref:HipSwingerStabilizer|jam_RIG_ref:FKExtraSpine1_M|jam_RIG_ref:FKSpine1_M.scaleX" 
		"jam_RIG_refRN.placeHolderList[12]" ""
		5 4 "jam_RIG_refRN" "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:FKSystem|jam_RIG_ref:FKOffsetRoot_M|jam_RIG_ref:FKExtraRoot_M|jam_RIG_ref:FKRoot_M|jam_RIG_ref:FKXRoot_M|jam_RIG_ref:FKOffsetSpine1_M|jam_RIG_ref:HipSwingerStabilizer|jam_RIG_ref:FKExtraSpine1_M|jam_RIG_ref:FKSpine1_M.scaleY" 
		"jam_RIG_refRN.placeHolderList[13]" ""
		5 4 "jam_RIG_refRN" "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:FKSystem|jam_RIG_ref:FKOffsetRoot_M|jam_RIG_ref:FKExtraRoot_M|jam_RIG_ref:FKRoot_M|jam_RIG_ref:FKXRoot_M|jam_RIG_ref:FKOffsetSpine1_M|jam_RIG_ref:HipSwingerStabilizer|jam_RIG_ref:FKExtraSpine1_M|jam_RIG_ref:FKSpine1_M.scaleZ" 
		"jam_RIG_refRN.placeHolderList[14]" ""
		5 4 "jam_RIG_refRN" "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:FKSystem|jam_RIG_ref:FKOffsetRoot_M|jam_RIG_ref:FKExtraRoot_M|jam_RIG_ref:FKRoot_M|jam_RIG_ref:FKXRoot_M|jam_RIG_ref:FKOffsetSpine1_M|jam_RIG_ref:HipSwingerStabilizer|jam_RIG_ref:FKExtraSpine1_M|jam_RIG_ref:FKSpine1_M.rotateX" 
		"jam_RIG_refRN.placeHolderList[15]" ""
		5 4 "jam_RIG_refRN" "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:FKSystem|jam_RIG_ref:FKOffsetRoot_M|jam_RIG_ref:FKExtraRoot_M|jam_RIG_ref:FKRoot_M|jam_RIG_ref:FKXRoot_M|jam_RIG_ref:FKOffsetSpine1_M|jam_RIG_ref:HipSwingerStabilizer|jam_RIG_ref:FKExtraSpine1_M|jam_RIG_ref:FKSpine1_M.rotateY" 
		"jam_RIG_refRN.placeHolderList[16]" ""
		5 4 "jam_RIG_refRN" "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:FKSystem|jam_RIG_ref:FKOffsetRoot_M|jam_RIG_ref:FKExtraRoot_M|jam_RIG_ref:FKRoot_M|jam_RIG_ref:FKXRoot_M|jam_RIG_ref:FKOffsetSpine1_M|jam_RIG_ref:HipSwingerStabilizer|jam_RIG_ref:FKExtraSpine1_M|jam_RIG_ref:FKSpine1_M.rotateZ" 
		"jam_RIG_refRN.placeHolderList[17]" ""
		5 4 "jam_RIG_refRN" "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:FKSystem|jam_RIG_ref:FKOffsetRoot_M|jam_RIG_ref:FKExtraRoot_M|jam_RIG_ref:FKRoot_M|jam_RIG_ref:FKXRoot_M|jam_RIG_ref:FKOffsetSpine1_M|jam_RIG_ref:HipSwingerStabilizer|jam_RIG_ref:FKExtraSpine1_M|jam_RIG_ref:FKSpine1_M.translateX" 
		"jam_RIG_refRN.placeHolderList[18]" ""
		5 4 "jam_RIG_refRN" "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:FKSystem|jam_RIG_ref:FKOffsetRoot_M|jam_RIG_ref:FKExtraRoot_M|jam_RIG_ref:FKRoot_M|jam_RIG_ref:FKXRoot_M|jam_RIG_ref:FKOffsetSpine1_M|jam_RIG_ref:HipSwingerStabilizer|jam_RIG_ref:FKExtraSpine1_M|jam_RIG_ref:FKSpine1_M.translateY" 
		"jam_RIG_refRN.placeHolderList[19]" ""
		5 4 "jam_RIG_refRN" "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:FKSystem|jam_RIG_ref:FKOffsetRoot_M|jam_RIG_ref:FKExtraRoot_M|jam_RIG_ref:FKRoot_M|jam_RIG_ref:FKXRoot_M|jam_RIG_ref:FKOffsetSpine1_M|jam_RIG_ref:HipSwingerStabilizer|jam_RIG_ref:FKExtraSpine1_M|jam_RIG_ref:FKSpine1_M.translateZ" 
		"jam_RIG_refRN.placeHolderList[20]" ""
		5 4 "jam_RIG_refRN" "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:FKSystem|jam_RIG_ref:FKOffsetRoot_M|jam_RIG_ref:FKExtraRoot_M|jam_RIG_ref:FKRoot_M|jam_RIG_ref:FKXRoot_M|jam_RIG_ref:FKOffsetSpine1_M|jam_RIG_ref:HipSwingerStabilizer|jam_RIG_ref:FKExtraSpine1_M|jam_RIG_ref:FKSpine1_M.visibility" 
		"jam_RIG_refRN.placeHolderList[21]" ""
		5 4 "jam_RIG_refRN" "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:IKSystem|jam_RIG_ref:IKHandle|jam_RIG_ref:IKOffsetLeg_R|jam_RIG_ref:IKExtraLeg_R|jam_RIG_ref:IKLeg_R.scaleX" 
		"jam_RIG_refRN.placeHolderList[22]" ""
		5 4 "jam_RIG_refRN" "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:IKSystem|jam_RIG_ref:IKHandle|jam_RIG_ref:IKOffsetLeg_R|jam_RIG_ref:IKExtraLeg_R|jam_RIG_ref:IKLeg_R.scaleY" 
		"jam_RIG_refRN.placeHolderList[23]" ""
		5 4 "jam_RIG_refRN" "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:IKSystem|jam_RIG_ref:IKHandle|jam_RIG_ref:IKOffsetLeg_R|jam_RIG_ref:IKExtraLeg_R|jam_RIG_ref:IKLeg_R.scaleZ" 
		"jam_RIG_refRN.placeHolderList[24]" ""
		5 4 "jam_RIG_refRN" "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:IKSystem|jam_RIG_ref:IKHandle|jam_RIG_ref:IKOffsetLeg_R|jam_RIG_ref:IKExtraLeg_R|jam_RIG_ref:IKLeg_R.translateX" 
		"jam_RIG_refRN.placeHolderList[25]" ""
		5 4 "jam_RIG_refRN" "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:IKSystem|jam_RIG_ref:IKHandle|jam_RIG_ref:IKOffsetLeg_R|jam_RIG_ref:IKExtraLeg_R|jam_RIG_ref:IKLeg_R.translateY" 
		"jam_RIG_refRN.placeHolderList[26]" ""
		5 4 "jam_RIG_refRN" "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:IKSystem|jam_RIG_ref:IKHandle|jam_RIG_ref:IKOffsetLeg_R|jam_RIG_ref:IKExtraLeg_R|jam_RIG_ref:IKLeg_R.translateZ" 
		"jam_RIG_refRN.placeHolderList[27]" ""
		5 4 "jam_RIG_refRN" "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:IKSystem|jam_RIG_ref:IKHandle|jam_RIG_ref:IKOffsetLeg_R|jam_RIG_ref:IKExtraLeg_R|jam_RIG_ref:IKLeg_R.stretchy" 
		"jam_RIG_refRN.placeHolderList[28]" ""
		5 4 "jam_RIG_refRN" "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:IKSystem|jam_RIG_ref:IKHandle|jam_RIG_ref:IKOffsetLeg_R|jam_RIG_ref:IKExtraLeg_R|jam_RIG_ref:IKLeg_R.antiPop" 
		"jam_RIG_refRN.placeHolderList[29]" ""
		5 4 "jam_RIG_refRN" "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:IKSystem|jam_RIG_ref:IKHandle|jam_RIG_ref:IKOffsetLeg_R|jam_RIG_ref:IKExtraLeg_R|jam_RIG_ref:IKLeg_R.Lenght1" 
		"jam_RIG_refRN.placeHolderList[30]" ""
		5 4 "jam_RIG_refRN" "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:IKSystem|jam_RIG_ref:IKHandle|jam_RIG_ref:IKOffsetLeg_R|jam_RIG_ref:IKExtraLeg_R|jam_RIG_ref:IKLeg_R.Lenght2" 
		"jam_RIG_refRN.placeHolderList[31]" ""
		5 4 "jam_RIG_refRN" "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:IKSystem|jam_RIG_ref:IKHandle|jam_RIG_ref:IKOffsetLeg_R|jam_RIG_ref:IKExtraLeg_R|jam_RIG_ref:IKLeg_R.volume" 
		"jam_RIG_refRN.placeHolderList[32]" ""
		5 4 "jam_RIG_refRN" "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:IKSystem|jam_RIG_ref:IKHandle|jam_RIG_ref:IKOffsetLeg_R|jam_RIG_ref:IKExtraLeg_R|jam_RIG_ref:IKLeg_R.rotateX" 
		"jam_RIG_refRN.placeHolderList[33]" ""
		5 4 "jam_RIG_refRN" "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:IKSystem|jam_RIG_ref:IKHandle|jam_RIG_ref:IKOffsetLeg_R|jam_RIG_ref:IKExtraLeg_R|jam_RIG_ref:IKLeg_R.rotateY" 
		"jam_RIG_refRN.placeHolderList[34]" ""
		5 4 "jam_RIG_refRN" "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:IKSystem|jam_RIG_ref:IKHandle|jam_RIG_ref:IKOffsetLeg_R|jam_RIG_ref:IKExtraLeg_R|jam_RIG_ref:IKLeg_R.rotateZ" 
		"jam_RIG_refRN.placeHolderList[35]" ""
		5 4 "jam_RIG_refRN" "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:IKSystem|jam_RIG_ref:IKHandle|jam_RIG_ref:IKOffsetLeg_R|jam_RIG_ref:IKExtraLeg_R|jam_RIG_ref:IKLeg_R.visibility" 
		"jam_RIG_refRN.placeHolderList[36]" ""
		5 4 "jam_RIG_refRN" "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:IKSystem|jam_RIG_ref:IKHandle|jam_RIG_ref:IKOffsetLeg_L|jam_RIG_ref:IKExtraLeg_L|jam_RIG_ref:IKLeg_L.scaleX" 
		"jam_RIG_refRN.placeHolderList[37]" ""
		5 4 "jam_RIG_refRN" "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:IKSystem|jam_RIG_ref:IKHandle|jam_RIG_ref:IKOffsetLeg_L|jam_RIG_ref:IKExtraLeg_L|jam_RIG_ref:IKLeg_L.scaleY" 
		"jam_RIG_refRN.placeHolderList[38]" ""
		5 4 "jam_RIG_refRN" "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:IKSystem|jam_RIG_ref:IKHandle|jam_RIG_ref:IKOffsetLeg_L|jam_RIG_ref:IKExtraLeg_L|jam_RIG_ref:IKLeg_L.scaleZ" 
		"jam_RIG_refRN.placeHolderList[39]" ""
		5 4 "jam_RIG_refRN" "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:IKSystem|jam_RIG_ref:IKHandle|jam_RIG_ref:IKOffsetLeg_L|jam_RIG_ref:IKExtraLeg_L|jam_RIG_ref:IKLeg_L.translateX" 
		"jam_RIG_refRN.placeHolderList[40]" ""
		5 4 "jam_RIG_refRN" "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:IKSystem|jam_RIG_ref:IKHandle|jam_RIG_ref:IKOffsetLeg_L|jam_RIG_ref:IKExtraLeg_L|jam_RIG_ref:IKLeg_L.translateY" 
		"jam_RIG_refRN.placeHolderList[41]" ""
		5 4 "jam_RIG_refRN" "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:IKSystem|jam_RIG_ref:IKHandle|jam_RIG_ref:IKOffsetLeg_L|jam_RIG_ref:IKExtraLeg_L|jam_RIG_ref:IKLeg_L.translateZ" 
		"jam_RIG_refRN.placeHolderList[42]" ""
		5 4 "jam_RIG_refRN" "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:IKSystem|jam_RIG_ref:IKHandle|jam_RIG_ref:IKOffsetLeg_L|jam_RIG_ref:IKExtraLeg_L|jam_RIG_ref:IKLeg_L.stretchy" 
		"jam_RIG_refRN.placeHolderList[43]" ""
		5 4 "jam_RIG_refRN" "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:IKSystem|jam_RIG_ref:IKHandle|jam_RIG_ref:IKOffsetLeg_L|jam_RIG_ref:IKExtraLeg_L|jam_RIG_ref:IKLeg_L.antiPop" 
		"jam_RIG_refRN.placeHolderList[44]" ""
		5 4 "jam_RIG_refRN" "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:IKSystem|jam_RIG_ref:IKHandle|jam_RIG_ref:IKOffsetLeg_L|jam_RIG_ref:IKExtraLeg_L|jam_RIG_ref:IKLeg_L.Lenght1" 
		"jam_RIG_refRN.placeHolderList[45]" ""
		5 4 "jam_RIG_refRN" "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:IKSystem|jam_RIG_ref:IKHandle|jam_RIG_ref:IKOffsetLeg_L|jam_RIG_ref:IKExtraLeg_L|jam_RIG_ref:IKLeg_L.Lenght2" 
		"jam_RIG_refRN.placeHolderList[46]" ""
		5 4 "jam_RIG_refRN" "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:IKSystem|jam_RIG_ref:IKHandle|jam_RIG_ref:IKOffsetLeg_L|jam_RIG_ref:IKExtraLeg_L|jam_RIG_ref:IKLeg_L.volume" 
		"jam_RIG_refRN.placeHolderList[47]" ""
		5 4 "jam_RIG_refRN" "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:IKSystem|jam_RIG_ref:IKHandle|jam_RIG_ref:IKOffsetLeg_L|jam_RIG_ref:IKExtraLeg_L|jam_RIG_ref:IKLeg_L.rotateX" 
		"jam_RIG_refRN.placeHolderList[48]" ""
		5 4 "jam_RIG_refRN" "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:IKSystem|jam_RIG_ref:IKHandle|jam_RIG_ref:IKOffsetLeg_L|jam_RIG_ref:IKExtraLeg_L|jam_RIG_ref:IKLeg_L.rotateY" 
		"jam_RIG_refRN.placeHolderList[49]" ""
		5 4 "jam_RIG_refRN" "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:IKSystem|jam_RIG_ref:IKHandle|jam_RIG_ref:IKOffsetLeg_L|jam_RIG_ref:IKExtraLeg_L|jam_RIG_ref:IKLeg_L.rotateZ" 
		"jam_RIG_refRN.placeHolderList[50]" ""
		5 4 "jam_RIG_refRN" "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:IKSystem|jam_RIG_ref:IKHandle|jam_RIG_ref:IKOffsetLeg_L|jam_RIG_ref:IKExtraLeg_L|jam_RIG_ref:IKLeg_L.visibility" 
		"jam_RIG_refRN.placeHolderList[51]" "";
	setAttr ".ptag" -type "string" "";
lockNode -l 1 ;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "52D95E3D-49FF-770E-32CF-B4A7EE265A41";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 277\n            -height 333\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n"
		+ "            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n"
		+ "            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 0\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 277\n            -height 333\n"
		+ "            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n"
		+ "            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n"
		+ "            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n"
		+ "            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 277\n            -height 333\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n"
		+ "            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n"
		+ "            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n"
		+ "            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 744\n            -height 701\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n"
		+ "            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n"
		+ "            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n"
		+ "            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n"
		+ "            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n"
		+ "                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 1\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n"
		+ "                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 1\n                -snapTime \"integer\" \n                -snapValue \"none\" \n"
		+ "                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -showCurveNames 0\n                -showActiveCurveNames 0\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                -valueLinesToggle 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 1\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n"
		+ "                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n"
		+ "                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n"
		+ "                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n"
		+ "\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n"
		+ "                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -editorMode \"default\" \n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n"
		+ "                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -editorMode \"default\" \n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n"
		+ "                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n"
		+ "                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -controllers 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n"
		+ "                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n"
		+ "\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 744\\n    -height 701\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 744\\n    -height 701\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "66541A67-43B8-150E-8465-A38C389D3BDC";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode animCurveTU -n "FKHead_M_Global";
	rename -uid "FB3E53C6-441C-1E28-358C-52BE46986E72";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0.8 0 6.4 0 9.6 0 13.6 0;
createNode animCurveTA -n "FKHead_M_rotateX";
	rename -uid "D9FE4310-4ADF-F9D1-C007-A2BA82A936DE";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0.8 0 6.4 0 9.6 0 13.6 0;
createNode animCurveTA -n "FKHead_M_rotateY";
	rename -uid "00A6FDD4-4439-97DD-49C4-788AC5800A02";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0.8 4.5590828999999999 3.2 -3.2677922000000001
		 6.4 4.5590828999999999 9.6 -3.2677922000000001 13.6 4.5590828999999999;
createNode animCurveTA -n "FKHead_M_rotateZ";
	rename -uid "AC5A47F1-494A-BB58-007D-EC94D9BA7F13";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0.8 0 6.4 0 9.6 0 13.6 0;
createNode animCurveTU -n "FKHead_M_scaleX";
	rename -uid "139CFDDF-40BB-FA6B-831C-36A4CC40B7F2";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0.8 1 6.4 1 9.6 1 13.6 1;
createNode animCurveTU -n "FKHead_M_scaleY";
	rename -uid "6E03BF2C-46CF-60C9-0B96-AE828E940870";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0.8 1 6.4 1 9.6 1 13.6 1;
createNode animCurveTU -n "FKHead_M_scaleZ";
	rename -uid "1611FE22-4E7A-64C7-0798-049DD8CD4C8B";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0.8 1 6.4 1 9.6 1 13.6 1;
createNode animCurveTL -n "FKHead_M_translateX";
	rename -uid "8BD019E2-4EC9-A1E9-E0A6-76ABFBFA4C74";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0.8 0 3.2 -0.013380753 6.4 0 9.6 -0.013380753
		 13.6 0;
createNode animCurveTL -n "FKHead_M_translateY";
	rename -uid "8DFBEA78-42F1-F658-2702-DAB9442AD9EA";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0.8 0 3.2 -0.0030316466 6.4 0 9.6 -0.0030316466
		 13.6 0;
createNode animCurveTL -n "FKHead_M_translateZ";
	rename -uid "4D80F809-41FB-B91E-8374-6DA1AD6C1A30";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0.8 0 3.2 1.7767073 6.4 0 9.6 1.7767073
		 13.6 0;
createNode animCurveTU -n "FKHead_M_visibility";
	rename -uid "0C7600BC-45EF-B5C9-86F2-029A70610D05";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0.8 1 6.4 1 9.6 1 13.6 1;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "FKSpine1_M_rotateX";
	rename -uid "2EC24471-495F-B249-6947-7881C4E85AC9";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0.8 0 6.4 0 9.6 0 13.6 0;
createNode animCurveTA -n "FKSpine1_M_rotateY";
	rename -uid "AADD2CF0-4EDD-69E6-4B35-B9902CFCC5B6";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0.8 11.597862 3.2 -5.794426800000001 6.4 11.597862
		 9.6 -13.080268000000002 13.6 11.597862;
createNode animCurveTA -n "FKSpine1_M_rotateZ";
	rename -uid "AB3A104B-4F83-3FC8-25F7-8A86BA916D27";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0.8 -9.6808510999999999 6.4 -9.6808510999999999
		 9.6 -9.6808510999999999 13.6 -9.6808510999999999;
createNode animCurveTU -n "FKSpine1_M_scaleX";
	rename -uid "1928AA81-4690-F740-F91B-E8A553BEC7BE";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0.8 1 6.4 1 9.6 1 13.6 1;
createNode animCurveTU -n "FKSpine1_M_scaleY";
	rename -uid "0D599C6F-407C-671B-C3B0-559E3D63089D";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0.8 1 6.4 1 9.6 1 13.6 1;
createNode animCurveTU -n "FKSpine1_M_scaleZ";
	rename -uid "9889330E-46E8-E55B-011D-90ACA33E3AAF";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0.8 1 6.4 1 9.6 1 13.6 1;
createNode animCurveTL -n "FKSpine1_M_translateX";
	rename -uid "6CDC8154-416D-1729-8ACE-4093B2768E8F";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0.8 -1.7140321000000001 6.4 -1.7140321000000001
		 9.6 -1.7140321000000001 13.6 -1.7140321000000001;
createNode animCurveTL -n "FKSpine1_M_translateY";
	rename -uid "534D6F9F-491A-184F-28FD-FF989E13E88A";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0.8 12.950826 6.4 12.950826 9.6 12.950826
		 13.6 12.950826;
createNode animCurveTL -n "FKSpine1_M_translateZ";
	rename -uid "80EF35B1-474A-4B91-B393-B0902F3E7D9B";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0.8 0 6.4 0 9.6 0 13.6 0;
createNode animCurveTU -n "FKSpine1_M_visibility";
	rename -uid "08C01C05-4C28-E647-F894-8B981D18ECE4";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0.8 1 6.4 1 9.6 1 13.6 1;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTU -n "IKLeg_R_antiPop";
	rename -uid "32C81E60-4FA9-8BF1-AAF8-4CB89933BA2C";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0.8 0 6.4 0 9.6 0 13.6 0;
createNode animCurveTU -n "IKLeg_R_Lenght1";
	rename -uid "4FC8F9DB-4631-C83D-EE01-87AEEC3BF6FC";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0.8 1 6.4 1 9.6 1 13.6 1;
createNode animCurveTU -n "IKLeg_R_Lenght2";
	rename -uid "225B71E1-4AD4-83D1-061A-FC8BF516B72F";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0.8 1 6.4 1 9.6 1 13.6 1;
createNode animCurveTA -n "IKLeg_R_rotateX";
	rename -uid "7E6B3E4D-4A0E-5AD8-5B96-7D9DFF24F88E";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0.8 0 6.4 0 9.6 0 13.6 0;
createNode animCurveTA -n "IKLeg_R_rotateY";
	rename -uid "53341F8E-44A0-A17D-4F0C-09BC15E44A52";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0.8 0 6.4 0 9.6 0 13.6 0;
createNode animCurveTA -n "IKLeg_R_rotateZ";
	rename -uid "C43DDD2A-4B46-0FD2-6AD1-209BA9FF8957";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0.8 0 6.4 0 9.6 0 13.6 0;
createNode animCurveTU -n "IKLeg_R_scaleX";
	rename -uid "38C8BD6B-4F86-1E5D-7FBC-63BE91E1174A";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0.8 1 6.4 1 9.6 1 13.6 1;
createNode animCurveTU -n "IKLeg_R_scaleY";
	rename -uid "51D69B0E-434B-CF11-1EEE-48A172F81742";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0.8 1 6.4 1 9.6 1 13.6 1;
createNode animCurveTU -n "IKLeg_R_scaleZ";
	rename -uid "C76B8E95-461D-D0A1-F150-199CA3EC592A";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0.8 1 6.4 1 9.6 1 13.6 1;
createNode animCurveTU -n "IKLeg_R_stretchy";
	rename -uid "6C206AC5-4BD4-4BF7-26D3-318E0EA8441E";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0.8 0 6.4 0 9.6 0 13.6 0;
createNode animCurveTL -n "IKLeg_R_translateX";
	rename -uid "D14383D1-4603-061E-5EF9-029F02EF2C0B";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0.8 0 6.4 -9.2729683999999999 9.6 0 13.6 0;
createNode animCurveTL -n "IKLeg_R_translateY";
	rename -uid "AF2566DE-4861-4217-5081-47B3868C70AE";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0.8 9.2413878999999994 3.2 10.81823 6.4 9.8479566999999992
		 9.6 10.81823 13.6 9.2413878999999994;
createNode animCurveTL -n "IKLeg_R_translateZ";
	rename -uid "84B909F1-4438-025D-1F17-F0B0B3EA4E8D";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0.8 -2.6672178 3.2 10.7425 6.4 -8.81717
		 9.6 6.4822999000000001 13.6 -2.6672178;
createNode animCurveTU -n "IKLeg_R_visibility";
	rename -uid "81A43D7C-4812-051E-6641-628EE442F05B";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0.8 1 6.4 1 9.6 1 13.6 1;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTU -n "IKLeg_R_volume";
	rename -uid "E4C3DF5F-4FAF-AF2D-3A5C-40BAA0A500FF";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0.8 10 6.4 10 9.6 10 13.6 10;
createNode animCurveTU -n "IKLeg_L_antiPop";
	rename -uid "7280A3D9-47EF-1DBD-E41E-F9956B2EF61E";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0.8 0 13.6 0;
createNode animCurveTU -n "IKLeg_L_Lenght1";
	rename -uid "84BE30F9-47F9-B49D-B62A-18BFE3B3A2FE";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0.8 1 13.6 1;
createNode animCurveTU -n "IKLeg_L_Lenght2";
	rename -uid "97C6F95D-4BC4-5CDB-80C9-4E8C72EE0A5B";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0.8 1 13.6 1;
createNode animCurveTA -n "IKLeg_L_rotateX";
	rename -uid "2FCC22A3-4119-25F7-F7F8-5B9FA4603CCC";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0.8 0 13.6 0;
createNode animCurveTA -n "IKLeg_L_rotateY";
	rename -uid "F2E3F8EB-4CC5-0A91-CE17-C5B5B252BB72";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0.8 0 13.6 0;
createNode animCurveTA -n "IKLeg_L_rotateZ";
	rename -uid "31005BAA-4BBC-8E11-7696-4887811907DD";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0.8 0 13.6 0;
createNode animCurveTU -n "IKLeg_L_scaleX";
	rename -uid "2E27EE14-496C-50AF-2318-8A8C3E4DA195";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0.8 1 13.6 1;
createNode animCurveTU -n "IKLeg_L_scaleY";
	rename -uid "3A65FB88-457F-7A78-F460-2EA4ED104988";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0.8 1 13.6 1;
createNode animCurveTU -n "IKLeg_L_scaleZ";
	rename -uid "9125DCD9-444B-5C6A-0977-F98E62D2D7AB";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0.8 1 13.6 1;
createNode animCurveTU -n "IKLeg_L_stretchy";
	rename -uid "E9A29407-43ED-2B91-F878-DE8D19B23ADA";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0.8 0 13.6 0;
createNode animCurveTL -n "IKLeg_L_translateX";
	rename -uid "B6CEAFA5-460B-7826-66C9-B7BBDE065632";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0.8 0 13.6 0;
createNode animCurveTL -n "IKLeg_L_translateY";
	rename -uid "F3D14E10-4F05-407C-0AAD-E1BCE62A0ED7";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0.8 0 3.2 7.0727753 13.6 0;
createNode animCurveTL -n "IKLeg_L_translateZ";
	rename -uid "68E0094D-4E09-33C8-3FF3-76AE6EDFDD2C";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0.8 32.382563 3.2 -3.9857535999999998 6.4 16.480862
		 9.6 0.17224858000000001 13.6 32.382563;
createNode animCurveTU -n "IKLeg_L_visibility";
	rename -uid "95879802-4A20-D5A7-05BA-F6B588BFFA08";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0.8 1 13.6 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTU -n "IKLeg_L_volume";
	rename -uid "6D5E28F2-440B-310E-5103-E2BFF5B2D5B4";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0.8 10 13.6 10;
select -ne :time1;
	setAttr ".o" 120;
	setAttr ".unw" 120;
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
connectAttr "FKHead_M_scaleX.o" "jam_RIG_refRN.phl[1]";
connectAttr "FKHead_M_scaleY.o" "jam_RIG_refRN.phl[2]";
connectAttr "FKHead_M_scaleZ.o" "jam_RIG_refRN.phl[3]";
connectAttr "FKHead_M_Global.o" "jam_RIG_refRN.phl[4]";
connectAttr "FKHead_M_rotateX.o" "jam_RIG_refRN.phl[5]";
connectAttr "FKHead_M_rotateY.o" "jam_RIG_refRN.phl[6]";
connectAttr "FKHead_M_rotateZ.o" "jam_RIG_refRN.phl[7]";
connectAttr "FKHead_M_translateX.o" "jam_RIG_refRN.phl[8]";
connectAttr "FKHead_M_translateY.o" "jam_RIG_refRN.phl[9]";
connectAttr "FKHead_M_translateZ.o" "jam_RIG_refRN.phl[10]";
connectAttr "FKHead_M_visibility.o" "jam_RIG_refRN.phl[11]";
connectAttr "FKSpine1_M_scaleX.o" "jam_RIG_refRN.phl[12]";
connectAttr "FKSpine1_M_scaleY.o" "jam_RIG_refRN.phl[13]";
connectAttr "FKSpine1_M_scaleZ.o" "jam_RIG_refRN.phl[14]";
connectAttr "FKSpine1_M_rotateX.o" "jam_RIG_refRN.phl[15]";
connectAttr "FKSpine1_M_rotateY.o" "jam_RIG_refRN.phl[16]";
connectAttr "FKSpine1_M_rotateZ.o" "jam_RIG_refRN.phl[17]";
connectAttr "FKSpine1_M_translateX.o" "jam_RIG_refRN.phl[18]";
connectAttr "FKSpine1_M_translateY.o" "jam_RIG_refRN.phl[19]";
connectAttr "FKSpine1_M_translateZ.o" "jam_RIG_refRN.phl[20]";
connectAttr "FKSpine1_M_visibility.o" "jam_RIG_refRN.phl[21]";
connectAttr "IKLeg_R_scaleX.o" "jam_RIG_refRN.phl[22]";
connectAttr "IKLeg_R_scaleY.o" "jam_RIG_refRN.phl[23]";
connectAttr "IKLeg_R_scaleZ.o" "jam_RIG_refRN.phl[24]";
connectAttr "IKLeg_R_translateX.o" "jam_RIG_refRN.phl[25]";
connectAttr "IKLeg_R_translateY.o" "jam_RIG_refRN.phl[26]";
connectAttr "IKLeg_R_translateZ.o" "jam_RIG_refRN.phl[27]";
connectAttr "IKLeg_R_stretchy.o" "jam_RIG_refRN.phl[28]";
connectAttr "IKLeg_R_antiPop.o" "jam_RIG_refRN.phl[29]";
connectAttr "IKLeg_R_Lenght1.o" "jam_RIG_refRN.phl[30]";
connectAttr "IKLeg_R_Lenght2.o" "jam_RIG_refRN.phl[31]";
connectAttr "IKLeg_R_volume.o" "jam_RIG_refRN.phl[32]";
connectAttr "IKLeg_R_rotateX.o" "jam_RIG_refRN.phl[33]";
connectAttr "IKLeg_R_rotateY.o" "jam_RIG_refRN.phl[34]";
connectAttr "IKLeg_R_rotateZ.o" "jam_RIG_refRN.phl[35]";
connectAttr "IKLeg_R_visibility.o" "jam_RIG_refRN.phl[36]";
connectAttr "IKLeg_L_scaleX.o" "jam_RIG_refRN.phl[37]";
connectAttr "IKLeg_L_scaleY.o" "jam_RIG_refRN.phl[38]";
connectAttr "IKLeg_L_scaleZ.o" "jam_RIG_refRN.phl[39]";
connectAttr "IKLeg_L_translateX.o" "jam_RIG_refRN.phl[40]";
connectAttr "IKLeg_L_translateY.o" "jam_RIG_refRN.phl[41]";
connectAttr "IKLeg_L_translateZ.o" "jam_RIG_refRN.phl[42]";
connectAttr "IKLeg_L_stretchy.o" "jam_RIG_refRN.phl[43]";
connectAttr "IKLeg_L_antiPop.o" "jam_RIG_refRN.phl[44]";
connectAttr "IKLeg_L_Lenght1.o" "jam_RIG_refRN.phl[45]";
connectAttr "IKLeg_L_Lenght2.o" "jam_RIG_refRN.phl[46]";
connectAttr "IKLeg_L_volume.o" "jam_RIG_refRN.phl[47]";
connectAttr "IKLeg_L_rotateX.o" "jam_RIG_refRN.phl[48]";
connectAttr "IKLeg_L_rotateY.o" "jam_RIG_refRN.phl[49]";
connectAttr "IKLeg_L_rotateZ.o" "jam_RIG_refRN.phl[50]";
connectAttr "IKLeg_L_visibility.o" "jam_RIG_refRN.phl[51]";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of jam_Run01.ma
