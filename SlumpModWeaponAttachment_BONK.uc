/**
* Copyright 2010-2012, Torn Banner Studios, All rights reserved
* 
* Original Author: Michael Bao
* 
* The weapon that is replicated to all clients: Maul
*/
class SlumpModWeaponAttachment_BONK extends AOCWeaponAttachment_Maul;

DefaultProperties
{
	Begin Object Name=SkeletalMeshComponent0
		SkeletalMesh=SkeletalMesh'Bonk.WEP_Bonk'
		Scale=1.05
	End Object

	Begin Object Name=SkeletalMeshComponent2
		SkeletalMesh=SkeletalMesh'Bonk.WEP_Bonk'
		Scale=1.05
	End Object

	WeaponID=EWEP_BONK
	WeaponClass=class'SlumpModWeapon_BONK'

	WeaponSocket=wep2haxepoint
	bUseAlternativeKick=true

	WeaponStaticMeshScale=1

	AttackTypeInfo(0)=(fBaseDamage=132, fForce=55000, cDamageType="AOC.AOCDmgType_Blunt", iWorldHitLenience=6)
	AttackTypeInfo(1)=(fBaseDamage=132.0, fForce=35500, cDamageType="AOC.AOCDmgType_Blunt", iWorldHitLenience=6)
	AttackTypeInfo(2)=(fBaseDamage=45.0, fForce=40000, cDamageType="AOC.AOCDmgType_Blunt", iWorldHitLenience=6)
	AttackTypeInfo(3)=(fBaseDamage=120.0, fForce=22500, cDamageType="AOC.AOCDmgType_Blunt", iWorldHitLenience=6)
	AttackTypeInfo(4)=(fBaseDamage=1.0, fForce=40000, cDamageType="AOC.AOCDmgType_Blunt", iWorldHitLenience=6)
	AttackTypeInfo(5)=(fBaseDamage=5.0, fForce=45500.0, cDamageType="AOC.AOCDmgType_Shove", iWorldHitLenience=12)

	Skins(0)={(
		SkeletalMeshPath="Bonk.WEP_Bonk",
		StaticMeshPath="Bonk.Mesh_Bonk",
		MaterialPath="M_Bonk_INST",
		StaticMeshScale=1.05,
		ImagePath="UI_CustWeaponImages_SWF.skin_maul_png"
		)};
	Skins(1)={(
		SkeletalMeshPath="Bonk.WEP_Bonk",
		StaticMeshPath="Bonk.Mesh_Bonk",
		MaterialPath="M_Bonk_INST",
		StaticMeshScale=1.05,
		ImagePath="UI_CustWeaponImages_SWF.skin_maul_png"
		)};
	Skins(2)={(
		SkeletalMeshPath="Bonk.WEP_Bonk",
		StaticMeshPath="Bonk.Mesh_Bonk",
		MaterialPath="M_Bonk_INST",
		StaticMeshScale=1.05,
		ImagePath="UI_CustWeaponImages_SWF.skin_maul_png"
		)};
	Skins(3)={(
		SkeletalMeshPath="Bonk.WEP_Bonk",
		StaticMeshPath="Bonk.Mesh_Bonk",
		MaterialPath="M_Bonk_INST",
		StaticMeshScale=1.05,
		ImagePath="UI_CustWeaponImages_SWF.skin_maul_png"
		)};
	Skins(4)={(
		SkeletalMeshPath="Bonk.WEP_Bonk",
		StaticMeshPath="Bonk.Mesh_Bonk",
		MaterialPath="M_Bonk_INST",
		StaticMeshScale=1.05,
		ImagePath="UI_CustWeaponImages_SWF.skin_maul_png"
		)};
	Skins(5)={(
		SkeletalMeshPath="Bonk.WEP_Bonk",
		StaticMeshPath="Bonk.Mesh_Bonk",
		MaterialPath="M_Bonk_INST",
		StaticMeshScale=1.05,
		ImagePath="UI_CustWeaponImages_SWF.skin_maul_png"
		)};
	Skins(6)={(
		SkeletalMeshPath="Bonk.WEP_Bonk",
		StaticMeshPath="Bonk.Mesh_Bonk",
		MaterialPath="M_Bonk_INST",
		StaticMeshScale=1.05,
		ImagePath="UI_CustWeaponImages_SWF.skin_maul_png"
		)};
}
