//Maya ASCII 2018ff07 scene
//Name: idle.ma
//Last modified: Wed, Dec 18, 2019 10:55:24 PM
//Codeset: 1252
requires maya "2018ff07";
requires "stereoCamera" "10.0";
requires "mtoa" "3.2.0.2";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2018";
fileInfo "version" "2018";
fileInfo "cutIdentifier" "201711281015-8e846c9074";
fileInfo "osv" "Microsoft Windows 8 Home Premium Edition, 64-bit  (Build 9200)\n";
createNode clipLibrary -n "clipLibrary1";
	rename -uid "023B19D0-4EBA-34CA-40AE-919BF6FA9690";
	setAttr -s 18 ".cel[0].cev";
	setAttr ".cd[0].cm" -type "characterMapping" 18 "jam_RIG_ref:FKSpine1_M.translateZ" 
		1 1 "jam_RIG_ref:FKSpine1_M.translateY" 1 2 "jam_RIG_ref:FKSpine1_M.translateX" 
		1 3 "jam_RIG_ref:FKSpine1_M.visibility" 0 1 "jam_RIG_ref:FKSpine1_M.rotateZ" 
		2 1 "jam_RIG_ref:FKSpine1_M.rotateY" 2 2 "jam_RIG_ref:FKSpine1_M.rotateX" 
		2 3 "jam_RIG_ref:FKSpine1_M.scaleZ" 0 2 "jam_RIG_ref:FKSpine1_M.scaleY" 
		0 3 "jam_RIG_ref:FKSpine1_M.scaleX" 0 4 "jam_RIG_ref:RootX_M.visibility" 
		0 5 "jam_RIG_ref:RootX_M.translateZ" 1 4 "jam_RIG_ref:RootX_M.translateY" 
		1 5 "jam_RIG_ref:RootX_M.translateX" 1 6 "jam_RIG_ref:RootX_M.legLock" 
		0 6 "jam_RIG_ref:RootX_M.rotateZ" 2 4 "jam_RIG_ref:RootX_M.rotateY" 
		2 5 "jam_RIG_ref:RootX_M.rotateX" 2 6  ;
	setAttr ".cd[0].cim" -type "Int32Array" 18 0 1 2 3 4
		 5 6 7 8 9 10 11 12 13 14 15 16
		 17 ;
createNode animClip -n "clip1Source";
	rename -uid "2EF5855E-4FE9-80CB-4F7F-698A06AFC175";
	setAttr ".ihi" 0;
	setAttr -s 18 ".ac[0:17]" yes yes yes yes yes yes yes yes yes yes yes 
		yes yes yes yes yes yes yes;
	setAttr ".ss" 1;
	setAttr ".se" 32;
	setAttr ".ci" no;
createNode animCurveTL -n "FKSpine1_M_translateZ";
	rename -uid "434E8EF7-40AF-F1C8-CC10-389448AB2900";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 13 0 20 0 32 0;
createNode animCurveTL -n "FKSpine1_M_translateY";
	rename -uid "286A354C-471F-FB4B-22E9-2BA14636354E";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 13 0 20 0 32 0;
createNode animCurveTL -n "FKSpine1_M_translateX";
	rename -uid "4B98FDEB-4D42-2B8D-34D5-95AA1916EACF";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 13 0 20 0 32 0;
createNode animCurveTU -n "FKSpine1_M_visibility";
	rename -uid "F06FDBED-46A2-9079-73CB-7E92F2DD4D2C";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 1 13 1 20 1 32 1;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "FKSpine1_M_rotateZ";
	rename -uid "C1D83544-4B79-77EB-6F6B-BB9C6E7DE176";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 5 -0.7 13 0 20 -0.7 32 0;
createNode animCurveTA -n "FKSpine1_M_rotateY";
	rename -uid "60F86C80-4C32-1F63-A894-278588CC6F7F";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 13 0 20 0 32 0;
createNode animCurveTA -n "FKSpine1_M_rotateX";
	rename -uid "BC5304C1-48F9-D1E9-4A6B-958EC181A31F";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 13 0 20 0 32 0;
createNode animCurveTU -n "FKSpine1_M_scaleZ";
	rename -uid "6160B24E-47A5-DA03-C5DE-36B6CB1BC7F0";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 1 13 1 20 1 32 1;
createNode animCurveTU -n "FKSpine1_M_scaleY";
	rename -uid "FE52280C-438C-6185-48A2-84912DD742F3";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 1 13 1 20 1 32 1;
createNode animCurveTU -n "FKSpine1_M_scaleX";
	rename -uid "011FCC5B-40A3-FDFB-5E45-54B0AFD98EA9";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 1 13 1 20 1 32 1;
createNode animCurveTU -n "RootX_M_visibility";
	rename -uid "42A31EFE-44B9-BBC0-E7D9-B9B966E6717A";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 1 16 1 23 1 32 1;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "RootX_M_translateZ";
	rename -uid "2DB93B8D-46E1-984B-B981-81A655E7B6AC";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 8 0.5 16 0 23 0.5 32 0;
createNode animCurveTL -n "RootX_M_translateY";
	rename -uid "C35236D9-490C-D939-005B-57AA65260EBE";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 8 -0.5 16 0 23 -0.5 32 0;
createNode animCurveTL -n "RootX_M_translateX";
	rename -uid "C09C550B-4810-51C3-B567-C6AF8EBD411E";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 16 0 23 0 32 0;
createNode animCurveTU -n "RootX_M_legLock";
	rename -uid "3441687B-4FD1-C6FC-C8E1-129A5ABE2053";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 16 0 23 0 32 0;
createNode animCurveTA -n "RootX_M_rotateZ";
	rename -uid "598CD4E2-4BF6-0131-0990-76B9A6C6912C";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 16 0 23 0 32 0;
createNode animCurveTA -n "RootX_M_rotateY";
	rename -uid "A28F96B3-4EB6-512E-0CA5-9FA0BFBBF616";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 16 0 23 0 32 0;
createNode animCurveTA -n "RootX_M_rotateX";
	rename -uid "90E44F1F-4AAC-BCA7-B21A-9FA2E55057F4";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 16 0 23 0 32 0;
select -ne :time1;
	setAttr ".o" 18;
	setAttr ".unw" 18;
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
	setAttr -s 2 ".dsm";
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
select -ne :characterPartition;
select -ne :ikSystem;
	setAttr -s 2 ".sol";
connectAttr "clip1Source.cl" "clipLibrary1.sc[0]";
connectAttr "FKSpine1_M_translateZ.a" "clipLibrary1.cel[0].cev[0].cevr";
connectAttr "FKSpine1_M_translateY.a" "clipLibrary1.cel[0].cev[1].cevr";
connectAttr "FKSpine1_M_translateX.a" "clipLibrary1.cel[0].cev[2].cevr";
connectAttr "FKSpine1_M_visibility.a" "clipLibrary1.cel[0].cev[3].cevr";
connectAttr "FKSpine1_M_rotateZ.a" "clipLibrary1.cel[0].cev[4].cevr";
connectAttr "FKSpine1_M_rotateY.a" "clipLibrary1.cel[0].cev[5].cevr";
connectAttr "FKSpine1_M_rotateX.a" "clipLibrary1.cel[0].cev[6].cevr";
connectAttr "FKSpine1_M_scaleZ.a" "clipLibrary1.cel[0].cev[7].cevr";
connectAttr "FKSpine1_M_scaleY.a" "clipLibrary1.cel[0].cev[8].cevr";
connectAttr "FKSpine1_M_scaleX.a" "clipLibrary1.cel[0].cev[9].cevr";
connectAttr "RootX_M_visibility.a" "clipLibrary1.cel[0].cev[10].cevr";
connectAttr "RootX_M_translateZ.a" "clipLibrary1.cel[0].cev[11].cevr";
connectAttr "RootX_M_translateY.a" "clipLibrary1.cel[0].cev[12].cevr";
connectAttr "RootX_M_translateX.a" "clipLibrary1.cel[0].cev[13].cevr";
connectAttr "RootX_M_legLock.a" "clipLibrary1.cel[0].cev[14].cevr";
connectAttr "RootX_M_rotateZ.a" "clipLibrary1.cel[0].cev[15].cevr";
connectAttr "RootX_M_rotateY.a" "clipLibrary1.cel[0].cev[16].cevr";
connectAttr "RootX_M_rotateX.a" "clipLibrary1.cel[0].cev[17].cevr";
// End of idle.ma
