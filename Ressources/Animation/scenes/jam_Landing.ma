//Maya ASCII 2018 scene
//Name: jam_Landing.ma
//Last modified: Wed, Dec 18, 2019 09:46:05 PM
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
	setAttr ".t" -type "double3" -592.21929395135805 405.43716477997344 85.498022484002874 ;
	setAttr ".r" -type "double3" -27.338352729572112 -83.799999999999315 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "D8CEDDD6-496E-4AFF-33B8-1A9FD8F5B1BE";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 710.24275812570909;
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
	rename -uid "A8D62296-41DA-E933-FD82-25B8CE2EBA18";
	setAttr -s 4 ".lnk";
	setAttr -s 4 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "787E315A-43CC-986F-B45C-3FA19858903A";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "2E16B4B4-47B1-57D3-12F8-3397D96AC943";
createNode displayLayerManager -n "layerManager";
	rename -uid "2EA2C466-4F04-6415-8F2D-D19532668B79";
createNode displayLayer -n "defaultLayer";
	rename -uid "5598D36D-490F-0461-2611-58B8EFA79F8B";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "C4CEECA8-4E8C-CD4F-E0F8-8E8B33412DE5";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "A3F47FEB-49C6-BF47-A2A3-ACB8786E6A93";
	setAttr ".g" yes;
createNode reference -n "jam_RIG_refRN";
	rename -uid "4F70290E-4D27-F049-B7BB-E7BA18E35626";
	setAttr -s 80 ".phl";
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
	setAttr ".ed" -type "dataReferenceEdits" 
		"jam_RIG_refRN"
		"jam_RIG_refRN" 0
		"jam_RIG_refRN" 121
		2 "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:FKSystem|jam_RIG_ref:FKParentConstraintToChest_M|jam_RIG_ref:FKOffsetNeck_M|jam_RIG_ref:FKExtraNeck_M|jam_RIG_ref:FKNeck_M" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:FKSystem|jam_RIG_ref:FKParentConstraintToChest_M|jam_RIG_ref:FKOffsetNeck_M|jam_RIG_ref:FKExtraNeck_M|jam_RIG_ref:FKNeck_M" 
		"translateX" " -av"
		2 "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:FKSystem|jam_RIG_ref:FKParentConstraintToChest_M|jam_RIG_ref:FKOffsetNeck_M|jam_RIG_ref:FKExtraNeck_M|jam_RIG_ref:FKNeck_M" 
		"translateY" " -av"
		2 "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:FKSystem|jam_RIG_ref:FKParentConstraintToChest_M|jam_RIG_ref:FKOffsetNeck_M|jam_RIG_ref:FKExtraNeck_M|jam_RIG_ref:FKNeck_M" 
		"translateZ" " -av"
		2 "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:FKSystem|jam_RIG_ref:FKParentConstraintToChest_M|jam_RIG_ref:FKOffsetNeck_M|jam_RIG_ref:FKExtraNeck_M|jam_RIG_ref:FKNeck_M" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:FKSystem|jam_RIG_ref:FKParentConstraintToChest_M|jam_RIG_ref:FKOffsetNeck_M|jam_RIG_ref:FKExtraNeck_M|jam_RIG_ref:FKNeck_M" 
		"rotateX" " -av"
		2 "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:FKSystem|jam_RIG_ref:FKParentConstraintToChest_M|jam_RIG_ref:FKOffsetNeck_M|jam_RIG_ref:FKExtraNeck_M|jam_RIG_ref:FKNeck_M" 
		"rotateY" " -av"
		2 "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:FKSystem|jam_RIG_ref:FKParentConstraintToChest_M|jam_RIG_ref:FKOffsetNeck_M|jam_RIG_ref:FKExtraNeck_M|jam_RIG_ref:FKNeck_M" 
		"rotateZ" " -av"
		2 "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:FKSystem|jam_RIG_ref:FKParentConstraintToChest_M|jam_RIG_ref:FKOffsetNeck_M|jam_RIG_ref:FKExtraNeck_M|jam_RIG_ref:FKNeck_M|jam_RIG_ref:FKXNeck_M" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:FKSystem|jam_RIG_ref:FKParentConstraintToChest_M|jam_RIG_ref:FKOffsetScapula_R|jam_RIG_ref:FKExtraScapula_R|jam_RIG_ref:FKScapula_R|jam_RIG_ref:FKXScapula_R" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:FKSystem|jam_RIG_ref:FKParentConstraintToChest_M|jam_RIG_ref:FKOffsetScapula_L|jam_RIG_ref:FKExtraScapula_L|jam_RIG_ref:FKScapula_L|jam_RIG_ref:FKXScapula_L" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:FKSystem|jam_RIG_ref:FKOffsetRoot_M|jam_RIG_ref:FKExtraRoot_M|jam_RIG_ref:FKRoot_M" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:FKSystem|jam_RIG_ref:FKOffsetRoot_M|jam_RIG_ref:FKExtraRoot_M|jam_RIG_ref:FKRoot_M" 
		"translateX" " -av"
		2 "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:FKSystem|jam_RIG_ref:FKOffsetRoot_M|jam_RIG_ref:FKExtraRoot_M|jam_RIG_ref:FKRoot_M" 
		"translateY" " -av"
		2 "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:FKSystem|jam_RIG_ref:FKOffsetRoot_M|jam_RIG_ref:FKExtraRoot_M|jam_RIG_ref:FKRoot_M" 
		"translateZ" " -av"
		2 "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:FKSystem|jam_RIG_ref:FKOffsetRoot_M|jam_RIG_ref:FKExtraRoot_M|jam_RIG_ref:FKRoot_M|jam_RIG_ref:FKXRoot_M" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:FKSystem|jam_RIG_ref:FKOffsetRoot_M|jam_RIG_ref:FKExtraRoot_M|jam_RIG_ref:FKRoot_M|jam_RIG_ref:FKXRoot_M" 
		"translateX" " -av"
		2 "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:FKSystem|jam_RIG_ref:FKOffsetRoot_M|jam_RIG_ref:FKExtraRoot_M|jam_RIG_ref:FKRoot_M|jam_RIG_ref:FKXRoot_M" 
		"translateY" " -av"
		2 "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:FKSystem|jam_RIG_ref:FKOffsetRoot_M|jam_RIG_ref:FKExtraRoot_M|jam_RIG_ref:FKRoot_M|jam_RIG_ref:FKXRoot_M" 
		"translateZ" " -av"
		2 "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:FKSystem|jam_RIG_ref:FKOffsetRoot_M|jam_RIG_ref:FKExtraRoot_M|jam_RIG_ref:FKRoot_M|jam_RIG_ref:FKXRoot_M|jam_RIG_ref:FKOffsetSpine1_M|jam_RIG_ref:HipSwingerStabilizer|jam_RIG_ref:FKExtraSpine1_M|jam_RIG_ref:FKSpine1_M" 
		"translate" " -type \"double3\" -0.57020978101170883 -15.29884396650409606 0"
		2 "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:FKSystem|jam_RIG_ref:FKOffsetRoot_M|jam_RIG_ref:FKExtraRoot_M|jam_RIG_ref:FKRoot_M|jam_RIG_ref:FKXRoot_M|jam_RIG_ref:FKOffsetSpine1_M|jam_RIG_ref:HipSwingerStabilizer|jam_RIG_ref:FKExtraSpine1_M|jam_RIG_ref:FKSpine1_M" 
		"translateX" " -av"
		2 "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:FKSystem|jam_RIG_ref:FKOffsetRoot_M|jam_RIG_ref:FKExtraRoot_M|jam_RIG_ref:FKRoot_M|jam_RIG_ref:FKXRoot_M|jam_RIG_ref:FKOffsetSpine1_M|jam_RIG_ref:HipSwingerStabilizer|jam_RIG_ref:FKExtraSpine1_M|jam_RIG_ref:FKSpine1_M" 
		"translateY" " -av"
		2 "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:FKSystem|jam_RIG_ref:FKOffsetRoot_M|jam_RIG_ref:FKExtraRoot_M|jam_RIG_ref:FKRoot_M|jam_RIG_ref:FKXRoot_M|jam_RIG_ref:FKOffsetSpine1_M|jam_RIG_ref:HipSwingerStabilizer|jam_RIG_ref:FKExtraSpine1_M|jam_RIG_ref:FKSpine1_M" 
		"translateZ" " -av"
		2 "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:FKSystem|jam_RIG_ref:FKOffsetRoot_M|jam_RIG_ref:FKExtraRoot_M|jam_RIG_ref:FKRoot_M|jam_RIG_ref:FKXRoot_M|jam_RIG_ref:FKOffsetSpine1_M|jam_RIG_ref:HipSwingerStabilizer|jam_RIG_ref:FKExtraSpine1_M|jam_RIG_ref:FKSpine1_M" 
		"rotate" " -type \"double3\" 0 0 -16.06112693173562533"
		2 "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:FKSystem|jam_RIG_ref:FKOffsetRoot_M|jam_RIG_ref:FKExtraRoot_M|jam_RIG_ref:FKRoot_M|jam_RIG_ref:FKXRoot_M|jam_RIG_ref:FKOffsetSpine1_M|jam_RIG_ref:HipSwingerStabilizer|jam_RIG_ref:FKExtraSpine1_M|jam_RIG_ref:FKSpine1_M" 
		"rotateZ" " -av"
		2 "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:FKSystem|jam_RIG_ref:FKOffsetRoot_M|jam_RIG_ref:FKExtraRoot_M|jam_RIG_ref:FKRoot_M|jam_RIG_ref:FKXRoot_M|jam_RIG_ref:FKOffsetSpine1_M|jam_RIG_ref:HipSwingerStabilizer|jam_RIG_ref:FKExtraSpine1_M|jam_RIG_ref:FKSpine1_M" 
		"rotateX" " -av"
		2 "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:FKSystem|jam_RIG_ref:FKOffsetRoot_M|jam_RIG_ref:FKExtraRoot_M|jam_RIG_ref:FKRoot_M|jam_RIG_ref:FKXRoot_M|jam_RIG_ref:FKOffsetSpine1_M|jam_RIG_ref:HipSwingerStabilizer|jam_RIG_ref:FKExtraSpine1_M|jam_RIG_ref:FKSpine1_M" 
		"rotateY" " -av"
		2 "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:IKSystem|jam_RIG_ref:IKJoints|jam_RIG_ref:IKParentConstraintHip_R|jam_RIG_ref:IKXOffsetHip_R|jam_RIG_ref:IKXHip_R" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:IKSystem|jam_RIG_ref:IKJoints|jam_RIG_ref:IKParentConstraintHip_L|jam_RIG_ref:IKXOffsetHip_L|jam_RIG_ref:IKXHip_L" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:IKSystem|jam_RIG_ref:IKHandle|jam_RIG_ref:IKOffsetLeg_R|jam_RIG_ref:IKExtraLeg_R|jam_RIG_ref:IKLeg_R" 
		"translate" " -type \"double3\" 0 0 9.11767860555391252"
		2 "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:IKSystem|jam_RIG_ref:IKHandle|jam_RIG_ref:IKOffsetLeg_R|jam_RIG_ref:IKExtraLeg_R|jam_RIG_ref:IKLeg_R" 
		"translateZ" " -av"
		2 "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:IKSystem|jam_RIG_ref:IKHandle|jam_RIG_ref:IKSpineHandle_M" 
		"translate" " -type \"double3\" 0 145.16098416523252013 -20.08021594500930362"
		2 "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:IKSystem|jam_RIG_ref:IKHandle|jam_RIG_ref:IKOffsetLeg_L|jam_RIG_ref:IKExtraLeg_L|jam_RIG_ref:IKLeg_L" 
		"translate" " -type \"double3\" 0 0 10.14910741128931448"
		2 "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:IKSystem|jam_RIG_ref:IKHandle|jam_RIG_ref:IKOffsetLeg_L|jam_RIG_ref:IKExtraLeg_L|jam_RIG_ref:IKLeg_L" 
		"translateZ" " -av"
		2 "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:RootSystem|jam_RIG_ref:RootOffsetX_M|jam_RIG_ref:RootExtraX_M|jam_RIG_ref:RootX_M" 
		"translate" " -type \"double3\" 0 0 -21.8325375397042869"
		2 "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:DeformationSystem|jam_RIG_ref:Root_M" 
		"translate" " -type \"double3\" 0 69.7561679137423738 -22.22933858521689032"
		2 "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:DeformationSystem|jam_RIG_ref:Root_M" 
		"translateX" " -av"
		2 "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:DeformationSystem|jam_RIG_ref:Root_M" 
		"translateY" " -av"
		2 "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:DeformationSystem|jam_RIG_ref:Root_M" 
		"translateZ" " -av"
		2 "|jam_RIG_ref:bag_ctrl_grp|jam_RIG_ref:bag_ctrl" "rotate" " -type \"double3\" 54.8854746413564456 0 0"
		
		2 "|jam_RIG_ref:bag_ctrl_grp|jam_RIG_ref:bag_ctrl" "rotateX" " -av"
		5 4 "jam_RIG_refRN" "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:FKSystem|jam_RIG_ref:FKParentConstraintToChest_M|jam_RIG_ref:FKOffsetNeck_M|jam_RIG_ref:FKExtraNeck_M|jam_RIG_ref:FKNeck_M.scaleX" 
		"jam_RIG_refRN.placeHolderList[1]" ""
		5 4 "jam_RIG_refRN" "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:FKSystem|jam_RIG_ref:FKParentConstraintToChest_M|jam_RIG_ref:FKOffsetNeck_M|jam_RIG_ref:FKExtraNeck_M|jam_RIG_ref:FKNeck_M.scaleY" 
		"jam_RIG_refRN.placeHolderList[2]" ""
		5 4 "jam_RIG_refRN" "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:FKSystem|jam_RIG_ref:FKParentConstraintToChest_M|jam_RIG_ref:FKOffsetNeck_M|jam_RIG_ref:FKExtraNeck_M|jam_RIG_ref:FKNeck_M.scaleZ" 
		"jam_RIG_refRN.placeHolderList[3]" ""
		5 4 "jam_RIG_refRN" "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:FKSystem|jam_RIG_ref:FKParentConstraintToChest_M|jam_RIG_ref:FKOffsetNeck_M|jam_RIG_ref:FKExtraNeck_M|jam_RIG_ref:FKNeck_M.translateX" 
		"jam_RIG_refRN.placeHolderList[4]" ""
		5 4 "jam_RIG_refRN" "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:FKSystem|jam_RIG_ref:FKParentConstraintToChest_M|jam_RIG_ref:FKOffsetNeck_M|jam_RIG_ref:FKExtraNeck_M|jam_RIG_ref:FKNeck_M.translateY" 
		"jam_RIG_refRN.placeHolderList[5]" ""
		5 4 "jam_RIG_refRN" "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:FKSystem|jam_RIG_ref:FKParentConstraintToChest_M|jam_RIG_ref:FKOffsetNeck_M|jam_RIG_ref:FKExtraNeck_M|jam_RIG_ref:FKNeck_M.translateZ" 
		"jam_RIG_refRN.placeHolderList[6]" ""
		5 4 "jam_RIG_refRN" "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:FKSystem|jam_RIG_ref:FKParentConstraintToChest_M|jam_RIG_ref:FKOffsetNeck_M|jam_RIG_ref:FKExtraNeck_M|jam_RIG_ref:FKNeck_M.visibility" 
		"jam_RIG_refRN.placeHolderList[7]" ""
		5 4 "jam_RIG_refRN" "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:FKSystem|jam_RIG_ref:FKParentConstraintToChest_M|jam_RIG_ref:FKOffsetNeck_M|jam_RIG_ref:FKExtraNeck_M|jam_RIG_ref:FKNeck_M.rotateX" 
		"jam_RIG_refRN.placeHolderList[8]" ""
		5 4 "jam_RIG_refRN" "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:FKSystem|jam_RIG_ref:FKParentConstraintToChest_M|jam_RIG_ref:FKOffsetNeck_M|jam_RIG_ref:FKExtraNeck_M|jam_RIG_ref:FKNeck_M.rotateY" 
		"jam_RIG_refRN.placeHolderList[9]" ""
		5 4 "jam_RIG_refRN" "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:FKSystem|jam_RIG_ref:FKParentConstraintToChest_M|jam_RIG_ref:FKOffsetNeck_M|jam_RIG_ref:FKExtraNeck_M|jam_RIG_ref:FKNeck_M.rotateZ" 
		"jam_RIG_refRN.placeHolderList[10]" ""
		5 4 "jam_RIG_refRN" "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:FKSystem|jam_RIG_ref:FKOffsetRoot_M|jam_RIG_ref:FKExtraRoot_M|jam_RIG_ref:FKRoot_M.scaleX" 
		"jam_RIG_refRN.placeHolderList[11]" ""
		5 4 "jam_RIG_refRN" "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:FKSystem|jam_RIG_ref:FKOffsetRoot_M|jam_RIG_ref:FKExtraRoot_M|jam_RIG_ref:FKRoot_M.scaleY" 
		"jam_RIG_refRN.placeHolderList[12]" ""
		5 4 "jam_RIG_refRN" "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:FKSystem|jam_RIG_ref:FKOffsetRoot_M|jam_RIG_ref:FKExtraRoot_M|jam_RIG_ref:FKRoot_M.scaleZ" 
		"jam_RIG_refRN.placeHolderList[13]" ""
		5 4 "jam_RIG_refRN" "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:FKSystem|jam_RIG_ref:FKOffsetRoot_M|jam_RIG_ref:FKExtraRoot_M|jam_RIG_ref:FKRoot_M.translateX" 
		"jam_RIG_refRN.placeHolderList[14]" ""
		5 4 "jam_RIG_refRN" "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:FKSystem|jam_RIG_ref:FKOffsetRoot_M|jam_RIG_ref:FKExtraRoot_M|jam_RIG_ref:FKRoot_M.translateY" 
		"jam_RIG_refRN.placeHolderList[15]" ""
		5 4 "jam_RIG_refRN" "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:FKSystem|jam_RIG_ref:FKOffsetRoot_M|jam_RIG_ref:FKExtraRoot_M|jam_RIG_ref:FKRoot_M.translateZ" 
		"jam_RIG_refRN.placeHolderList[16]" ""
		5 4 "jam_RIG_refRN" "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:FKSystem|jam_RIG_ref:FKOffsetRoot_M|jam_RIG_ref:FKExtraRoot_M|jam_RIG_ref:FKRoot_M.visibility" 
		"jam_RIG_refRN.placeHolderList[17]" ""
		5 4 "jam_RIG_refRN" "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:FKSystem|jam_RIG_ref:FKOffsetRoot_M|jam_RIG_ref:FKExtraRoot_M|jam_RIG_ref:FKRoot_M.rotateX" 
		"jam_RIG_refRN.placeHolderList[18]" ""
		5 4 "jam_RIG_refRN" "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:FKSystem|jam_RIG_ref:FKOffsetRoot_M|jam_RIG_ref:FKExtraRoot_M|jam_RIG_ref:FKRoot_M.rotateY" 
		"jam_RIG_refRN.placeHolderList[19]" ""
		5 4 "jam_RIG_refRN" "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:FKSystem|jam_RIG_ref:FKOffsetRoot_M|jam_RIG_ref:FKExtraRoot_M|jam_RIG_ref:FKRoot_M.rotateZ" 
		"jam_RIG_refRN.placeHolderList[20]" ""
		5 4 "jam_RIG_refRN" "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:FKSystem|jam_RIG_ref:FKOffsetRoot_M|jam_RIG_ref:FKExtraRoot_M|jam_RIG_ref:FKRoot_M|jam_RIG_ref:FKXRoot_M|jam_RIG_ref:FKOffsetSpine1_M|jam_RIG_ref:HipSwingerStabilizer|jam_RIG_ref:FKExtraSpine1_M|jam_RIG_ref:FKSpine1_M.scaleX" 
		"jam_RIG_refRN.placeHolderList[21]" ""
		5 4 "jam_RIG_refRN" "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:FKSystem|jam_RIG_ref:FKOffsetRoot_M|jam_RIG_ref:FKExtraRoot_M|jam_RIG_ref:FKRoot_M|jam_RIG_ref:FKXRoot_M|jam_RIG_ref:FKOffsetSpine1_M|jam_RIG_ref:HipSwingerStabilizer|jam_RIG_ref:FKExtraSpine1_M|jam_RIG_ref:FKSpine1_M.scaleY" 
		"jam_RIG_refRN.placeHolderList[22]" ""
		5 4 "jam_RIG_refRN" "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:FKSystem|jam_RIG_ref:FKOffsetRoot_M|jam_RIG_ref:FKExtraRoot_M|jam_RIG_ref:FKRoot_M|jam_RIG_ref:FKXRoot_M|jam_RIG_ref:FKOffsetSpine1_M|jam_RIG_ref:HipSwingerStabilizer|jam_RIG_ref:FKExtraSpine1_M|jam_RIG_ref:FKSpine1_M.scaleZ" 
		"jam_RIG_refRN.placeHolderList[23]" ""
		5 4 "jam_RIG_refRN" "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:FKSystem|jam_RIG_ref:FKOffsetRoot_M|jam_RIG_ref:FKExtraRoot_M|jam_RIG_ref:FKRoot_M|jam_RIG_ref:FKXRoot_M|jam_RIG_ref:FKOffsetSpine1_M|jam_RIG_ref:HipSwingerStabilizer|jam_RIG_ref:FKExtraSpine1_M|jam_RIG_ref:FKSpine1_M.translateX" 
		"jam_RIG_refRN.placeHolderList[24]" ""
		5 4 "jam_RIG_refRN" "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:FKSystem|jam_RIG_ref:FKOffsetRoot_M|jam_RIG_ref:FKExtraRoot_M|jam_RIG_ref:FKRoot_M|jam_RIG_ref:FKXRoot_M|jam_RIG_ref:FKOffsetSpine1_M|jam_RIG_ref:HipSwingerStabilizer|jam_RIG_ref:FKExtraSpine1_M|jam_RIG_ref:FKSpine1_M.translateY" 
		"jam_RIG_refRN.placeHolderList[25]" ""
		5 4 "jam_RIG_refRN" "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:FKSystem|jam_RIG_ref:FKOffsetRoot_M|jam_RIG_ref:FKExtraRoot_M|jam_RIG_ref:FKRoot_M|jam_RIG_ref:FKXRoot_M|jam_RIG_ref:FKOffsetSpine1_M|jam_RIG_ref:HipSwingerStabilizer|jam_RIG_ref:FKExtraSpine1_M|jam_RIG_ref:FKSpine1_M.translateZ" 
		"jam_RIG_refRN.placeHolderList[26]" ""
		5 4 "jam_RIG_refRN" "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:FKSystem|jam_RIG_ref:FKOffsetRoot_M|jam_RIG_ref:FKExtraRoot_M|jam_RIG_ref:FKRoot_M|jam_RIG_ref:FKXRoot_M|jam_RIG_ref:FKOffsetSpine1_M|jam_RIG_ref:HipSwingerStabilizer|jam_RIG_ref:FKExtraSpine1_M|jam_RIG_ref:FKSpine1_M.rotateZ" 
		"jam_RIG_refRN.placeHolderList[27]" ""
		5 4 "jam_RIG_refRN" "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:FKSystem|jam_RIG_ref:FKOffsetRoot_M|jam_RIG_ref:FKExtraRoot_M|jam_RIG_ref:FKRoot_M|jam_RIG_ref:FKXRoot_M|jam_RIG_ref:FKOffsetSpine1_M|jam_RIG_ref:HipSwingerStabilizer|jam_RIG_ref:FKExtraSpine1_M|jam_RIG_ref:FKSpine1_M.rotateX" 
		"jam_RIG_refRN.placeHolderList[28]" ""
		5 4 "jam_RIG_refRN" "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:FKSystem|jam_RIG_ref:FKOffsetRoot_M|jam_RIG_ref:FKExtraRoot_M|jam_RIG_ref:FKRoot_M|jam_RIG_ref:FKXRoot_M|jam_RIG_ref:FKOffsetSpine1_M|jam_RIG_ref:HipSwingerStabilizer|jam_RIG_ref:FKExtraSpine1_M|jam_RIG_ref:FKSpine1_M.rotateY" 
		"jam_RIG_refRN.placeHolderList[29]" ""
		5 4 "jam_RIG_refRN" "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:FKSystem|jam_RIG_ref:FKOffsetRoot_M|jam_RIG_ref:FKExtraRoot_M|jam_RIG_ref:FKRoot_M|jam_RIG_ref:FKXRoot_M|jam_RIG_ref:FKOffsetSpine1_M|jam_RIG_ref:HipSwingerStabilizer|jam_RIG_ref:FKExtraSpine1_M|jam_RIG_ref:FKSpine1_M.visibility" 
		"jam_RIG_refRN.placeHolderList[30]" ""
		5 4 "jam_RIG_refRN" "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:FKSystem|jam_RIG_ref:FKOffsetRoot_M|jam_RIG_ref:FKExtraRoot_M|jam_RIG_ref:FKRoot_M|jam_RIG_ref:FKXRoot_M|jam_RIG_ref:FKOffsetSpine1_M|jam_RIG_ref:HipSwingerStabilizer|jam_RIG_ref:FKExtraSpine1_M|jam_RIG_ref:FKSpine1_M|jam_RIG_ref:FKXSpine1_M|jam_RIG_ref:FKOffsetChest_M|jam_RIG_ref:FKExtraChest_M|jam_RIG_ref:FKChest_M.scaleX" 
		"jam_RIG_refRN.placeHolderList[31]" ""
		5 4 "jam_RIG_refRN" "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:FKSystem|jam_RIG_ref:FKOffsetRoot_M|jam_RIG_ref:FKExtraRoot_M|jam_RIG_ref:FKRoot_M|jam_RIG_ref:FKXRoot_M|jam_RIG_ref:FKOffsetSpine1_M|jam_RIG_ref:HipSwingerStabilizer|jam_RIG_ref:FKExtraSpine1_M|jam_RIG_ref:FKSpine1_M|jam_RIG_ref:FKXSpine1_M|jam_RIG_ref:FKOffsetChest_M|jam_RIG_ref:FKExtraChest_M|jam_RIG_ref:FKChest_M.scaleY" 
		"jam_RIG_refRN.placeHolderList[32]" ""
		5 4 "jam_RIG_refRN" "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:FKSystem|jam_RIG_ref:FKOffsetRoot_M|jam_RIG_ref:FKExtraRoot_M|jam_RIG_ref:FKRoot_M|jam_RIG_ref:FKXRoot_M|jam_RIG_ref:FKOffsetSpine1_M|jam_RIG_ref:HipSwingerStabilizer|jam_RIG_ref:FKExtraSpine1_M|jam_RIG_ref:FKSpine1_M|jam_RIG_ref:FKXSpine1_M|jam_RIG_ref:FKOffsetChest_M|jam_RIG_ref:FKExtraChest_M|jam_RIG_ref:FKChest_M.scaleZ" 
		"jam_RIG_refRN.placeHolderList[33]" ""
		5 4 "jam_RIG_refRN" "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:FKSystem|jam_RIG_ref:FKOffsetRoot_M|jam_RIG_ref:FKExtraRoot_M|jam_RIG_ref:FKRoot_M|jam_RIG_ref:FKXRoot_M|jam_RIG_ref:FKOffsetSpine1_M|jam_RIG_ref:HipSwingerStabilizer|jam_RIG_ref:FKExtraSpine1_M|jam_RIG_ref:FKSpine1_M|jam_RIG_ref:FKXSpine1_M|jam_RIG_ref:FKOffsetChest_M|jam_RIG_ref:FKExtraChest_M|jam_RIG_ref:FKChest_M.translateX" 
		"jam_RIG_refRN.placeHolderList[34]" ""
		5 4 "jam_RIG_refRN" "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:FKSystem|jam_RIG_ref:FKOffsetRoot_M|jam_RIG_ref:FKExtraRoot_M|jam_RIG_ref:FKRoot_M|jam_RIG_ref:FKXRoot_M|jam_RIG_ref:FKOffsetSpine1_M|jam_RIG_ref:HipSwingerStabilizer|jam_RIG_ref:FKExtraSpine1_M|jam_RIG_ref:FKSpine1_M|jam_RIG_ref:FKXSpine1_M|jam_RIG_ref:FKOffsetChest_M|jam_RIG_ref:FKExtraChest_M|jam_RIG_ref:FKChest_M.translateY" 
		"jam_RIG_refRN.placeHolderList[35]" ""
		5 4 "jam_RIG_refRN" "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:FKSystem|jam_RIG_ref:FKOffsetRoot_M|jam_RIG_ref:FKExtraRoot_M|jam_RIG_ref:FKRoot_M|jam_RIG_ref:FKXRoot_M|jam_RIG_ref:FKOffsetSpine1_M|jam_RIG_ref:HipSwingerStabilizer|jam_RIG_ref:FKExtraSpine1_M|jam_RIG_ref:FKSpine1_M|jam_RIG_ref:FKXSpine1_M|jam_RIG_ref:FKOffsetChest_M|jam_RIG_ref:FKExtraChest_M|jam_RIG_ref:FKChest_M.translateZ" 
		"jam_RIG_refRN.placeHolderList[36]" ""
		5 4 "jam_RIG_refRN" "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:FKSystem|jam_RIG_ref:FKOffsetRoot_M|jam_RIG_ref:FKExtraRoot_M|jam_RIG_ref:FKRoot_M|jam_RIG_ref:FKXRoot_M|jam_RIG_ref:FKOffsetSpine1_M|jam_RIG_ref:HipSwingerStabilizer|jam_RIG_ref:FKExtraSpine1_M|jam_RIG_ref:FKSpine1_M|jam_RIG_ref:FKXSpine1_M|jam_RIG_ref:FKOffsetChest_M|jam_RIG_ref:FKExtraChest_M|jam_RIG_ref:FKChest_M.visibility" 
		"jam_RIG_refRN.placeHolderList[37]" ""
		5 4 "jam_RIG_refRN" "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:FKSystem|jam_RIG_ref:FKOffsetRoot_M|jam_RIG_ref:FKExtraRoot_M|jam_RIG_ref:FKRoot_M|jam_RIG_ref:FKXRoot_M|jam_RIG_ref:FKOffsetSpine1_M|jam_RIG_ref:HipSwingerStabilizer|jam_RIG_ref:FKExtraSpine1_M|jam_RIG_ref:FKSpine1_M|jam_RIG_ref:FKXSpine1_M|jam_RIG_ref:FKOffsetChest_M|jam_RIG_ref:FKExtraChest_M|jam_RIG_ref:FKChest_M.rotateX" 
		"jam_RIG_refRN.placeHolderList[38]" ""
		5 4 "jam_RIG_refRN" "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:FKSystem|jam_RIG_ref:FKOffsetRoot_M|jam_RIG_ref:FKExtraRoot_M|jam_RIG_ref:FKRoot_M|jam_RIG_ref:FKXRoot_M|jam_RIG_ref:FKOffsetSpine1_M|jam_RIG_ref:HipSwingerStabilizer|jam_RIG_ref:FKExtraSpine1_M|jam_RIG_ref:FKSpine1_M|jam_RIG_ref:FKXSpine1_M|jam_RIG_ref:FKOffsetChest_M|jam_RIG_ref:FKExtraChest_M|jam_RIG_ref:FKChest_M.rotateY" 
		"jam_RIG_refRN.placeHolderList[39]" ""
		5 4 "jam_RIG_refRN" "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:FKSystem|jam_RIG_ref:FKOffsetRoot_M|jam_RIG_ref:FKExtraRoot_M|jam_RIG_ref:FKRoot_M|jam_RIG_ref:FKXRoot_M|jam_RIG_ref:FKOffsetSpine1_M|jam_RIG_ref:HipSwingerStabilizer|jam_RIG_ref:FKExtraSpine1_M|jam_RIG_ref:FKSpine1_M|jam_RIG_ref:FKXSpine1_M|jam_RIG_ref:FKOffsetChest_M|jam_RIG_ref:FKExtraChest_M|jam_RIG_ref:FKChest_M.rotateZ" 
		"jam_RIG_refRN.placeHolderList[40]" ""
		5 4 "jam_RIG_refRN" "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:IKSystem|jam_RIG_ref:IKHandle|jam_RIG_ref:IKOffsetLeg_R|jam_RIG_ref:IKExtraLeg_R|jam_RIG_ref:IKLeg_R.scaleX" 
		"jam_RIG_refRN.placeHolderList[41]" ""
		5 4 "jam_RIG_refRN" "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:IKSystem|jam_RIG_ref:IKHandle|jam_RIG_ref:IKOffsetLeg_R|jam_RIG_ref:IKExtraLeg_R|jam_RIG_ref:IKLeg_R.scaleY" 
		"jam_RIG_refRN.placeHolderList[42]" ""
		5 4 "jam_RIG_refRN" "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:IKSystem|jam_RIG_ref:IKHandle|jam_RIG_ref:IKOffsetLeg_R|jam_RIG_ref:IKExtraLeg_R|jam_RIG_ref:IKLeg_R.scaleZ" 
		"jam_RIG_refRN.placeHolderList[43]" ""
		5 4 "jam_RIG_refRN" "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:IKSystem|jam_RIG_ref:IKHandle|jam_RIG_ref:IKOffsetLeg_R|jam_RIG_ref:IKExtraLeg_R|jam_RIG_ref:IKLeg_R.translateZ" 
		"jam_RIG_refRN.placeHolderList[44]" ""
		5 4 "jam_RIG_refRN" "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:IKSystem|jam_RIG_ref:IKHandle|jam_RIG_ref:IKOffsetLeg_R|jam_RIG_ref:IKExtraLeg_R|jam_RIG_ref:IKLeg_R.translateX" 
		"jam_RIG_refRN.placeHolderList[45]" ""
		5 4 "jam_RIG_refRN" "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:IKSystem|jam_RIG_ref:IKHandle|jam_RIG_ref:IKOffsetLeg_R|jam_RIG_ref:IKExtraLeg_R|jam_RIG_ref:IKLeg_R.translateY" 
		"jam_RIG_refRN.placeHolderList[46]" ""
		5 4 "jam_RIG_refRN" "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:IKSystem|jam_RIG_ref:IKHandle|jam_RIG_ref:IKOffsetLeg_R|jam_RIG_ref:IKExtraLeg_R|jam_RIG_ref:IKLeg_R.stretchy" 
		"jam_RIG_refRN.placeHolderList[47]" ""
		5 4 "jam_RIG_refRN" "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:IKSystem|jam_RIG_ref:IKHandle|jam_RIG_ref:IKOffsetLeg_R|jam_RIG_ref:IKExtraLeg_R|jam_RIG_ref:IKLeg_R.antiPop" 
		"jam_RIG_refRN.placeHolderList[48]" ""
		5 4 "jam_RIG_refRN" "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:IKSystem|jam_RIG_ref:IKHandle|jam_RIG_ref:IKOffsetLeg_R|jam_RIG_ref:IKExtraLeg_R|jam_RIG_ref:IKLeg_R.Lenght1" 
		"jam_RIG_refRN.placeHolderList[49]" ""
		5 4 "jam_RIG_refRN" "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:IKSystem|jam_RIG_ref:IKHandle|jam_RIG_ref:IKOffsetLeg_R|jam_RIG_ref:IKExtraLeg_R|jam_RIG_ref:IKLeg_R.Lenght2" 
		"jam_RIG_refRN.placeHolderList[50]" ""
		5 4 "jam_RIG_refRN" "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:IKSystem|jam_RIG_ref:IKHandle|jam_RIG_ref:IKOffsetLeg_R|jam_RIG_ref:IKExtraLeg_R|jam_RIG_ref:IKLeg_R.volume" 
		"jam_RIG_refRN.placeHolderList[51]" ""
		5 4 "jam_RIG_refRN" "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:IKSystem|jam_RIG_ref:IKHandle|jam_RIG_ref:IKOffsetLeg_R|jam_RIG_ref:IKExtraLeg_R|jam_RIG_ref:IKLeg_R.visibility" 
		"jam_RIG_refRN.placeHolderList[52]" ""
		5 4 "jam_RIG_refRN" "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:IKSystem|jam_RIG_ref:IKHandle|jam_RIG_ref:IKOffsetLeg_R|jam_RIG_ref:IKExtraLeg_R|jam_RIG_ref:IKLeg_R.rotateX" 
		"jam_RIG_refRN.placeHolderList[53]" ""
		5 4 "jam_RIG_refRN" "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:IKSystem|jam_RIG_ref:IKHandle|jam_RIG_ref:IKOffsetLeg_R|jam_RIG_ref:IKExtraLeg_R|jam_RIG_ref:IKLeg_R.rotateY" 
		"jam_RIG_refRN.placeHolderList[54]" ""
		5 4 "jam_RIG_refRN" "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:IKSystem|jam_RIG_ref:IKHandle|jam_RIG_ref:IKOffsetLeg_R|jam_RIG_ref:IKExtraLeg_R|jam_RIG_ref:IKLeg_R.rotateZ" 
		"jam_RIG_refRN.placeHolderList[55]" ""
		5 4 "jam_RIG_refRN" "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:IKSystem|jam_RIG_ref:IKHandle|jam_RIG_ref:IKOffsetLeg_L|jam_RIG_ref:IKExtraLeg_L|jam_RIG_ref:IKLeg_L.scaleX" 
		"jam_RIG_refRN.placeHolderList[56]" ""
		5 4 "jam_RIG_refRN" "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:IKSystem|jam_RIG_ref:IKHandle|jam_RIG_ref:IKOffsetLeg_L|jam_RIG_ref:IKExtraLeg_L|jam_RIG_ref:IKLeg_L.scaleY" 
		"jam_RIG_refRN.placeHolderList[57]" ""
		5 4 "jam_RIG_refRN" "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:IKSystem|jam_RIG_ref:IKHandle|jam_RIG_ref:IKOffsetLeg_L|jam_RIG_ref:IKExtraLeg_L|jam_RIG_ref:IKLeg_L.scaleZ" 
		"jam_RIG_refRN.placeHolderList[58]" ""
		5 4 "jam_RIG_refRN" "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:IKSystem|jam_RIG_ref:IKHandle|jam_RIG_ref:IKOffsetLeg_L|jam_RIG_ref:IKExtraLeg_L|jam_RIG_ref:IKLeg_L.translateZ" 
		"jam_RIG_refRN.placeHolderList[59]" ""
		5 4 "jam_RIG_refRN" "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:IKSystem|jam_RIG_ref:IKHandle|jam_RIG_ref:IKOffsetLeg_L|jam_RIG_ref:IKExtraLeg_L|jam_RIG_ref:IKLeg_L.translateX" 
		"jam_RIG_refRN.placeHolderList[60]" ""
		5 4 "jam_RIG_refRN" "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:IKSystem|jam_RIG_ref:IKHandle|jam_RIG_ref:IKOffsetLeg_L|jam_RIG_ref:IKExtraLeg_L|jam_RIG_ref:IKLeg_L.translateY" 
		"jam_RIG_refRN.placeHolderList[61]" ""
		5 4 "jam_RIG_refRN" "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:IKSystem|jam_RIG_ref:IKHandle|jam_RIG_ref:IKOffsetLeg_L|jam_RIG_ref:IKExtraLeg_L|jam_RIG_ref:IKLeg_L.stretchy" 
		"jam_RIG_refRN.placeHolderList[62]" ""
		5 4 "jam_RIG_refRN" "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:IKSystem|jam_RIG_ref:IKHandle|jam_RIG_ref:IKOffsetLeg_L|jam_RIG_ref:IKExtraLeg_L|jam_RIG_ref:IKLeg_L.antiPop" 
		"jam_RIG_refRN.placeHolderList[63]" ""
		5 4 "jam_RIG_refRN" "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:IKSystem|jam_RIG_ref:IKHandle|jam_RIG_ref:IKOffsetLeg_L|jam_RIG_ref:IKExtraLeg_L|jam_RIG_ref:IKLeg_L.Lenght1" 
		"jam_RIG_refRN.placeHolderList[64]" ""
		5 4 "jam_RIG_refRN" "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:IKSystem|jam_RIG_ref:IKHandle|jam_RIG_ref:IKOffsetLeg_L|jam_RIG_ref:IKExtraLeg_L|jam_RIG_ref:IKLeg_L.Lenght2" 
		"jam_RIG_refRN.placeHolderList[65]" ""
		5 4 "jam_RIG_refRN" "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:IKSystem|jam_RIG_ref:IKHandle|jam_RIG_ref:IKOffsetLeg_L|jam_RIG_ref:IKExtraLeg_L|jam_RIG_ref:IKLeg_L.volume" 
		"jam_RIG_refRN.placeHolderList[66]" ""
		5 4 "jam_RIG_refRN" "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:IKSystem|jam_RIG_ref:IKHandle|jam_RIG_ref:IKOffsetLeg_L|jam_RIG_ref:IKExtraLeg_L|jam_RIG_ref:IKLeg_L.visibility" 
		"jam_RIG_refRN.placeHolderList[67]" ""
		5 4 "jam_RIG_refRN" "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:IKSystem|jam_RIG_ref:IKHandle|jam_RIG_ref:IKOffsetLeg_L|jam_RIG_ref:IKExtraLeg_L|jam_RIG_ref:IKLeg_L.rotateX" 
		"jam_RIG_refRN.placeHolderList[68]" ""
		5 4 "jam_RIG_refRN" "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:IKSystem|jam_RIG_ref:IKHandle|jam_RIG_ref:IKOffsetLeg_L|jam_RIG_ref:IKExtraLeg_L|jam_RIG_ref:IKLeg_L.rotateY" 
		"jam_RIG_refRN.placeHolderList[69]" ""
		5 4 "jam_RIG_refRN" "|jam_RIG_ref:Group|jam_RIG_ref:Main|jam_RIG_ref:MotionSystem|jam_RIG_ref:IKSystem|jam_RIG_ref:IKHandle|jam_RIG_ref:IKOffsetLeg_L|jam_RIG_ref:IKExtraLeg_L|jam_RIG_ref:IKLeg_L.rotateZ" 
		"jam_RIG_refRN.placeHolderList[70]" ""
		5 4 "jam_RIG_refRN" "|jam_RIG_ref:bag_ctrl_grp|jam_RIG_ref:bag_ctrl.translateX" 
		"jam_RIG_refRN.placeHolderList[71]" ""
		5 4 "jam_RIG_refRN" "|jam_RIG_ref:bag_ctrl_grp|jam_RIG_ref:bag_ctrl.translateY" 
		"jam_RIG_refRN.placeHolderList[72]" ""
		5 4 "jam_RIG_refRN" "|jam_RIG_ref:bag_ctrl_grp|jam_RIG_ref:bag_ctrl.translateZ" 
		"jam_RIG_refRN.placeHolderList[73]" ""
		5 4 "jam_RIG_refRN" "|jam_RIG_ref:bag_ctrl_grp|jam_RIG_ref:bag_ctrl.rotateX" 
		"jam_RIG_refRN.placeHolderList[74]" ""
		5 4 "jam_RIG_refRN" "|jam_RIG_ref:bag_ctrl_grp|jam_RIG_ref:bag_ctrl.rotateY" 
		"jam_RIG_refRN.placeHolderList[75]" ""
		5 4 "jam_RIG_refRN" "|jam_RIG_ref:bag_ctrl_grp|jam_RIG_ref:bag_ctrl.rotateZ" 
		"jam_RIG_refRN.placeHolderList[76]" ""
		5 4 "jam_RIG_refRN" "|jam_RIG_ref:bag_ctrl_grp|jam_RIG_ref:bag_ctrl.scaleX" 
		"jam_RIG_refRN.placeHolderList[77]" ""
		5 4 "jam_RIG_refRN" "|jam_RIG_ref:bag_ctrl_grp|jam_RIG_ref:bag_ctrl.scaleY" 
		"jam_RIG_refRN.placeHolderList[78]" ""
		5 4 "jam_RIG_refRN" "|jam_RIG_ref:bag_ctrl_grp|jam_RIG_ref:bag_ctrl.scaleZ" 
		"jam_RIG_refRN.placeHolderList[79]" ""
		5 4 "jam_RIG_refRN" "|jam_RIG_ref:bag_ctrl_grp|jam_RIG_ref:bag_ctrl.visibility" 
		"jam_RIG_refRN.placeHolderList[80]" "";
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
		+ "            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 0\n            -nurbsCurves 0\n            -nurbsSurfaces 0\n            -polymeshes 1\n            -subdivSurfaces 0\n            -planes 0\n            -lights 0\n            -cameras 0\n            -controlVertices 0\n            -hulls 0\n            -grid 1\n            -imagePlane 0\n            -joints 0\n            -ikHandles 0\n            -deformers 0\n            -dynamics 0\n            -particleInstancers 0\n            -fluids 0\n            -hairSystems 0\n            -follicles 0\n            -nCloths 0\n            -nParticles 0\n            -nRigids 0\n            -dynamicConstraints 0\n            -locators 0\n            -manipulators 1\n            -pluginShapes 0\n            -dimensions 0\n            -handles 0\n            -pivots 0\n            -textures 0\n            -strokes 0\n            -motionTrails 0\n            -clipGhosts 0\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n"
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
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 0\\n    -nurbsCurves 0\\n    -nurbsSurfaces 0\\n    -polymeshes 1\\n    -subdivSurfaces 0\\n    -planes 0\\n    -lights 0\\n    -cameras 0\\n    -controlVertices 0\\n    -hulls 0\\n    -grid 1\\n    -imagePlane 0\\n    -joints 0\\n    -ikHandles 0\\n    -deformers 0\\n    -dynamics 0\\n    -particleInstancers 0\\n    -fluids 0\\n    -hairSystems 0\\n    -follicles 0\\n    -nCloths 0\\n    -nParticles 0\\n    -nRigids 0\\n    -dynamicConstraints 0\\n    -locators 0\\n    -manipulators 1\\n    -pluginShapes 0\\n    -dimensions 0\\n    -handles 0\\n    -pivots 0\\n    -textures 0\\n    -strokes 0\\n    -motionTrails 0\\n    -clipGhosts 0\\n    -greasePencils 0\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 868\\n    -height 756\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 0\\n    -nurbsCurves 0\\n    -nurbsSurfaces 0\\n    -polymeshes 1\\n    -subdivSurfaces 0\\n    -planes 0\\n    -lights 0\\n    -cameras 0\\n    -controlVertices 0\\n    -hulls 0\\n    -grid 1\\n    -imagePlane 0\\n    -joints 0\\n    -ikHandles 0\\n    -deformers 0\\n    -dynamics 0\\n    -particleInstancers 0\\n    -fluids 0\\n    -hairSystems 0\\n    -follicles 0\\n    -nCloths 0\\n    -nParticles 0\\n    -nRigids 0\\n    -dynamicConstraints 0\\n    -locators 0\\n    -manipulators 1\\n    -pluginShapes 0\\n    -dimensions 0\\n    -handles 0\\n    -pivots 0\\n    -textures 0\\n    -strokes 0\\n    -motionTrails 0\\n    -clipGhosts 0\\n    -greasePencils 0\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 868\\n    -height 756\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "66541A67-43B8-150E-8465-A38C389D3BDC";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 7 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode animCurveTA -n "bag_ctrl_rotateX";
	rename -uid "2A343CB3-4C9A-8F5A-D2FD-37851A1DCBCA";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 54.885474641356446 4 -18.219573450845314
		 7 0;
createNode animCurveTA -n "bag_ctrl_rotateY";
	rename -uid "B9F0FD84-4EED-74A5-4675-E5909D0430B4";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "bag_ctrl_rotateZ";
	rename -uid "92F75D53-42B3-C6A1-5C9C-59A0D6C8B318";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTU -n "bag_ctrl_visibility";
	rename -uid "3908C8E2-464B-3BBA-761C-0B89ED0B144E";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "bag_ctrl_translateX";
	rename -uid "5B182967-4552-7FF6-D8FE-3FADC729ADFA";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 -7.1054273576010019e-15;
createNode animCurveTL -n "bag_ctrl_translateY";
	rename -uid "A4503C3D-43D9-29C9-1222-05A93E17C760";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "bag_ctrl_translateZ";
	rename -uid "C7DF89DA-425D-638A-1C65-A38F2B97D2BF";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 -7.1054273576010019e-15;
createNode animCurveTU -n "bag_ctrl_scaleX";
	rename -uid "6BF6F1BE-4F1D-D3C1-DE71-85B50C15E07C";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "bag_ctrl_scaleY";
	rename -uid "581D0EB7-4232-0370-0B7A-0DA512670BF9";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "bag_ctrl_scaleZ";
	rename -uid "E75E89CF-404A-A447-1D32-AEB87CE4710B";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTL -n "FKRoot_M_translateX";
	rename -uid "B85C942F-4405-E9FE-6746-328D29A02034";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 4 -16.050575040125491 7 0;
createNode animCurveTL -n "FKRoot_M_translateY";
	rename -uid "2C5E5194-4CBE-E4AB-6E3A-BDA7D903DCCB";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 4 19.339293415107051 7 0;
createNode animCurveTL -n "FKRoot_M_translateZ";
	rename -uid "7A8EC17C-4687-B117-E8DF-3BA0FCA8565F";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "FKSpine1_M_translateX";
	rename -uid "0ED8DB2C-47E6-0E03-EBFC-47B4544FC424";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -0.57020978101170883 4 -1.8742652364139056
		 7 0;
createNode animCurveTL -n "FKSpine1_M_translateY";
	rename -uid "4AEB79EC-40D6-A295-8918-369FFE63F459";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -15.298843966504096 4 -8.2425952175514734
		 7 0;
createNode animCurveTL -n "FKSpine1_M_translateZ";
	rename -uid "40C0C5EF-47BB-E824-A618-A4929EE578FE";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 -2.5491410837622264e-15;
createNode animCurveTL -n "FKChest_M_translateX";
	rename -uid "3058A760-4DF2-CC4F-268B-858D341980BE";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "FKChest_M_translateY";
	rename -uid "B99D7804-4F5A-E73A-85DF-07A48C78CE62";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "FKChest_M_translateZ";
	rename -uid "297AE956-4EC6-FE75-8EF3-6895B7EE1715";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "FKNeck_M_translateX";
	rename -uid "BA0A9AFF-4649-483E-1B90-21B163A1C94F";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 4 0.055734530410520997 7 0;
createNode animCurveTL -n "FKNeck_M_translateY";
	rename -uid "A8C9493E-4EF1-DC54-AFA4-94B2CC3E55BE";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 4 2.8362565345034456 7 0;
createNode animCurveTL -n "FKNeck_M_translateZ";
	rename -uid "AF838189-4299-A6E6-7632-B48338086BA7";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "IKLeg_L_translateX";
	rename -uid "3ABF0CD0-4BB7-5830-472A-D3979750FAC5";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "IKLeg_L_translateY";
	rename -uid "B608C9F1-4193-6E28-052D-228ABDC6A772";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "IKLeg_L_translateZ";
	rename -uid "D214068C-4131-CE45-2949-90BFF01BC37E";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 10.149107411289314 4 -28.822906114879011
		 7 0;
createNode animCurveTL -n "IKLeg_R_translateX";
	rename -uid "9173D13E-4B7B-1CEE-9D02-B3B6A51D4BC2";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "IKLeg_R_translateY";
	rename -uid "6B93E531-4F0A-E7A6-7EAA-1598793F21CC";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "IKLeg_R_translateZ";
	rename -uid "1F95DBFB-4686-7E2A-3E8F-898A25717D42";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 9.1176786055539125 4 -29.854334920614413
		 7 0;
createNode animCurveTU -n "IKLeg_L_visibility";
	rename -uid "CB1768F5-4FAA-51F7-612B-CC9577E2897A";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "IKLeg_L_rotateX";
	rename -uid "5605349A-458F-56AC-C87D-F38A4F26C5A1";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "IKLeg_L_rotateY";
	rename -uid "FC82F485-4A7D-A351-44BC-F19EDE4726DB";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "IKLeg_L_rotateZ";
	rename -uid "93650405-4426-6530-A036-54A00640A2ED";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTU -n "IKLeg_L_scaleX";
	rename -uid "61E832D3-4324-2A4D-C9AF-A7A056353737";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "IKLeg_L_scaleY";
	rename -uid "A06779AA-4182-1424-64C5-D485FFAAE16C";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "IKLeg_L_scaleZ";
	rename -uid "CA35CB8B-4391-0984-99D4-E1AA258E5C74";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "IKLeg_L_stretchy";
	rename -uid "804F0E4C-4D10-C446-14DD-91BC93594896";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTU -n "IKLeg_L_antiPop";
	rename -uid "3E59B4DC-446D-1501-0C23-D08E290E5A49";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTU -n "IKLeg_L_Lenght1";
	rename -uid "DC2E1F43-43CC-2A66-0284-FD820FC9F7CD";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "IKLeg_L_Lenght2";
	rename -uid "3D711EF8-4F94-5E1D-3DA6-B9BADD1EFA41";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "IKLeg_L_volume";
	rename -uid "37CC5B23-4EE0-BACE-2E3A-278C09328FEA";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 10;
createNode animCurveTU -n "IKLeg_R_visibility";
	rename -uid "75214E34-453C-3E3E-BEF1-89B031C39F8A";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "IKLeg_R_rotateX";
	rename -uid "3FBC5300-4930-7CE0-3917-F4BAA1CCC722";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "IKLeg_R_rotateY";
	rename -uid "14150F78-41B7-E703-CE6C-1CA9512C8C41";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "IKLeg_R_rotateZ";
	rename -uid "1EF3F981-48BC-FE00-E455-7680D51C703E";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTU -n "IKLeg_R_scaleX";
	rename -uid "7C6B6516-4DDA-B073-7A85-8F8625D4491E";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "IKLeg_R_scaleY";
	rename -uid "0A67A22B-40AE-BB9C-080F-8D9AF47BE0B6";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "IKLeg_R_scaleZ";
	rename -uid "7B79FB64-4846-C182-EACE-E185ACA6D4B4";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "IKLeg_R_stretchy";
	rename -uid "59B95C32-4AA9-A137-62D8-8CA9B556DF05";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTU -n "IKLeg_R_antiPop";
	rename -uid "3B3F1D3A-46EB-27C9-A40D-2B981F6EE9C4";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTU -n "IKLeg_R_Lenght1";
	rename -uid "C270E33A-4399-7EF8-40DF-B3B92081F0F1";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "IKLeg_R_Lenght2";
	rename -uid "6B6E347E-4FB6-923C-22DD-91959CE9AD26";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "IKLeg_R_volume";
	rename -uid "39CC6098-471C-E8D0-717A-EFA4A93F9FBD";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 10;
createNode animCurveTU -n "FKRoot_M_visibility";
	rename -uid "92A7190F-4230-EBCF-FD42-0D8DB3620C1F";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "FKRoot_M_rotateX";
	rename -uid "0D59BB3E-491B-E571-4662-54BCAC9EEDDA";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "FKRoot_M_rotateY";
	rename -uid "AA9B12D7-40FE-F527-BB41-67AF5AA0A609";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "FKRoot_M_rotateZ";
	rename -uid "279F34D3-4A69-42B1-7A6D-48A4CE87D254";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTU -n "FKRoot_M_scaleX";
	rename -uid "666030A1-4540-AA54-2CB1-B9BE78A4E631";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "FKRoot_M_scaleY";
	rename -uid "A6D87397-440A-6781-3B60-7397D13481D4";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "FKRoot_M_scaleZ";
	rename -uid "21EA76D0-4EF7-B782-8059-44B7C8B4FCA5";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "FKSpine1_M_visibility";
	rename -uid "EEC4B27D-46D8-56A4-67F8-CF946F3DA8CC";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "FKSpine1_M_rotateX";
	rename -uid "198E5172-4E02-D479-D1CB-DEA5F19DF67B";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "FKSpine1_M_rotateY";
	rename -uid "84F1F5DF-41DD-00B5-E8BF-E284E6E61228";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "FKSpine1_M_rotateZ";
	rename -uid "D87833B3-4B38-0CAB-8F19-BDB2C3D3197A";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 -16.061126931735625 7 0;
createNode animCurveTU -n "FKSpine1_M_scaleX";
	rename -uid "E87D7AC2-452B-FDDD-9FBB-A396AFA6E102";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "FKSpine1_M_scaleY";
	rename -uid "A350C7C6-4B34-70E9-AF8F-1D9F160C950C";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "FKSpine1_M_scaleZ";
	rename -uid "12104CAC-47D3-DC41-6B98-89AA3963A2A8";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "FKChest_M_visibility";
	rename -uid "DFBBEE31-459F-38AA-1DBF-8996216B8F6E";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "FKChest_M_rotateX";
	rename -uid "4CB37AD6-4C0A-1552-0E3E-839C3C307EA3";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "FKChest_M_rotateY";
	rename -uid "F2A5944E-4907-5A51-B559-C19F92FA8EEB";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "FKChest_M_rotateZ";
	rename -uid "86567295-4FB7-7434-1D5D-C8BF25590A2F";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTU -n "FKChest_M_scaleX";
	rename -uid "A25C45B3-4DCA-72B3-B928-26A83489AD7C";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "FKChest_M_scaleY";
	rename -uid "93CC5C0C-4DF8-2FBF-AC71-F7937E22FC28";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "FKChest_M_scaleZ";
	rename -uid "7E58AFC5-40E6-D3A3-546E-099B00388F26";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "FKNeck_M_visibility";
	rename -uid "5933580C-428D-C83F-3302-20A17012D64D";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "FKNeck_M_rotateX";
	rename -uid "D25B4175-4A71-0FD1-FF1E-9C80C2B069AA";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "FKNeck_M_rotateY";
	rename -uid "B933A654-4505-549B-CE74-72B4852D6886";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "FKNeck_M_rotateZ";
	rename -uid "F1D629A9-42CC-B9A5-F549-4DAE38A3673B";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 4 -4.8897101199828601 7 0;
createNode animCurveTU -n "FKNeck_M_scaleX";
	rename -uid "35FD8A24-4E11-4FF1-C79A-62B5BB51110A";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "FKNeck_M_scaleY";
	rename -uid "BF481294-44F3-064F-5438-9FA26C0D525A";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "FKNeck_M_scaleZ";
	rename -uid "75892656-4E9D-ADB6-FDE4-1ABAAAAB4E93";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
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
connectAttr "FKNeck_M_translateX.o" "jam_RIG_refRN.phl[4]";
connectAttr "FKNeck_M_translateY.o" "jam_RIG_refRN.phl[5]";
connectAttr "FKNeck_M_translateZ.o" "jam_RIG_refRN.phl[6]";
connectAttr "FKNeck_M_visibility.o" "jam_RIG_refRN.phl[7]";
connectAttr "FKNeck_M_rotateX.o" "jam_RIG_refRN.phl[8]";
connectAttr "FKNeck_M_rotateY.o" "jam_RIG_refRN.phl[9]";
connectAttr "FKNeck_M_rotateZ.o" "jam_RIG_refRN.phl[10]";
connectAttr "FKRoot_M_scaleX.o" "jam_RIG_refRN.phl[11]";
connectAttr "FKRoot_M_scaleY.o" "jam_RIG_refRN.phl[12]";
connectAttr "FKRoot_M_scaleZ.o" "jam_RIG_refRN.phl[13]";
connectAttr "FKRoot_M_translateX.o" "jam_RIG_refRN.phl[14]";
connectAttr "FKRoot_M_translateY.o" "jam_RIG_refRN.phl[15]";
connectAttr "FKRoot_M_translateZ.o" "jam_RIG_refRN.phl[16]";
connectAttr "FKRoot_M_visibility.o" "jam_RIG_refRN.phl[17]";
connectAttr "FKRoot_M_rotateX.o" "jam_RIG_refRN.phl[18]";
connectAttr "FKRoot_M_rotateY.o" "jam_RIG_refRN.phl[19]";
connectAttr "FKRoot_M_rotateZ.o" "jam_RIG_refRN.phl[20]";
connectAttr "FKSpine1_M_scaleX.o" "jam_RIG_refRN.phl[21]";
connectAttr "FKSpine1_M_scaleY.o" "jam_RIG_refRN.phl[22]";
connectAttr "FKSpine1_M_scaleZ.o" "jam_RIG_refRN.phl[23]";
connectAttr "FKSpine1_M_translateX.o" "jam_RIG_refRN.phl[24]";
connectAttr "FKSpine1_M_translateY.o" "jam_RIG_refRN.phl[25]";
connectAttr "FKSpine1_M_translateZ.o" "jam_RIG_refRN.phl[26]";
connectAttr "FKSpine1_M_rotateZ.o" "jam_RIG_refRN.phl[27]";
connectAttr "FKSpine1_M_rotateX.o" "jam_RIG_refRN.phl[28]";
connectAttr "FKSpine1_M_rotateY.o" "jam_RIG_refRN.phl[29]";
connectAttr "FKSpine1_M_visibility.o" "jam_RIG_refRN.phl[30]";
connectAttr "FKChest_M_scaleX.o" "jam_RIG_refRN.phl[31]";
connectAttr "FKChest_M_scaleY.o" "jam_RIG_refRN.phl[32]";
connectAttr "FKChest_M_scaleZ.o" "jam_RIG_refRN.phl[33]";
connectAttr "FKChest_M_translateX.o" "jam_RIG_refRN.phl[34]";
connectAttr "FKChest_M_translateY.o" "jam_RIG_refRN.phl[35]";
connectAttr "FKChest_M_translateZ.o" "jam_RIG_refRN.phl[36]";
connectAttr "FKChest_M_visibility.o" "jam_RIG_refRN.phl[37]";
connectAttr "FKChest_M_rotateX.o" "jam_RIG_refRN.phl[38]";
connectAttr "FKChest_M_rotateY.o" "jam_RIG_refRN.phl[39]";
connectAttr "FKChest_M_rotateZ.o" "jam_RIG_refRN.phl[40]";
connectAttr "IKLeg_R_scaleX.o" "jam_RIG_refRN.phl[41]";
connectAttr "IKLeg_R_scaleY.o" "jam_RIG_refRN.phl[42]";
connectAttr "IKLeg_R_scaleZ.o" "jam_RIG_refRN.phl[43]";
connectAttr "IKLeg_R_translateZ.o" "jam_RIG_refRN.phl[44]";
connectAttr "IKLeg_R_translateX.o" "jam_RIG_refRN.phl[45]";
connectAttr "IKLeg_R_translateY.o" "jam_RIG_refRN.phl[46]";
connectAttr "IKLeg_R_stretchy.o" "jam_RIG_refRN.phl[47]";
connectAttr "IKLeg_R_antiPop.o" "jam_RIG_refRN.phl[48]";
connectAttr "IKLeg_R_Lenght1.o" "jam_RIG_refRN.phl[49]";
connectAttr "IKLeg_R_Lenght2.o" "jam_RIG_refRN.phl[50]";
connectAttr "IKLeg_R_volume.o" "jam_RIG_refRN.phl[51]";
connectAttr "IKLeg_R_visibility.o" "jam_RIG_refRN.phl[52]";
connectAttr "IKLeg_R_rotateX.o" "jam_RIG_refRN.phl[53]";
connectAttr "IKLeg_R_rotateY.o" "jam_RIG_refRN.phl[54]";
connectAttr "IKLeg_R_rotateZ.o" "jam_RIG_refRN.phl[55]";
connectAttr "IKLeg_L_scaleX.o" "jam_RIG_refRN.phl[56]";
connectAttr "IKLeg_L_scaleY.o" "jam_RIG_refRN.phl[57]";
connectAttr "IKLeg_L_scaleZ.o" "jam_RIG_refRN.phl[58]";
connectAttr "IKLeg_L_translateZ.o" "jam_RIG_refRN.phl[59]";
connectAttr "IKLeg_L_translateX.o" "jam_RIG_refRN.phl[60]";
connectAttr "IKLeg_L_translateY.o" "jam_RIG_refRN.phl[61]";
connectAttr "IKLeg_L_stretchy.o" "jam_RIG_refRN.phl[62]";
connectAttr "IKLeg_L_antiPop.o" "jam_RIG_refRN.phl[63]";
connectAttr "IKLeg_L_Lenght1.o" "jam_RIG_refRN.phl[64]";
connectAttr "IKLeg_L_Lenght2.o" "jam_RIG_refRN.phl[65]";
connectAttr "IKLeg_L_volume.o" "jam_RIG_refRN.phl[66]";
connectAttr "IKLeg_L_visibility.o" "jam_RIG_refRN.phl[67]";
connectAttr "IKLeg_L_rotateX.o" "jam_RIG_refRN.phl[68]";
connectAttr "IKLeg_L_rotateY.o" "jam_RIG_refRN.phl[69]";
connectAttr "IKLeg_L_rotateZ.o" "jam_RIG_refRN.phl[70]";
connectAttr "bag_ctrl_translateX.o" "jam_RIG_refRN.phl[71]";
connectAttr "bag_ctrl_translateY.o" "jam_RIG_refRN.phl[72]";
connectAttr "bag_ctrl_translateZ.o" "jam_RIG_refRN.phl[73]";
connectAttr "bag_ctrl_rotateX.o" "jam_RIG_refRN.phl[74]";
connectAttr "bag_ctrl_rotateY.o" "jam_RIG_refRN.phl[75]";
connectAttr "bag_ctrl_rotateZ.o" "jam_RIG_refRN.phl[76]";
connectAttr "bag_ctrl_scaleX.o" "jam_RIG_refRN.phl[77]";
connectAttr "bag_ctrl_scaleY.o" "jam_RIG_refRN.phl[78]";
connectAttr "bag_ctrl_scaleZ.o" "jam_RIG_refRN.phl[79]";
connectAttr "bag_ctrl_visibility.o" "jam_RIG_refRN.phl[80]";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of jam_Landing.ma
