/**
* Copyright 2010-2012, Torn Banner Studios, All rights reserved
*
* Original Author: Michael Bao
*
* FIIIIIIIIISTS.
*/
class SlumpModWeaponAttachment_Brassknuckles extends AOCWeaponAttachment_Fists;

/** Extend tracers past the fist by this amount*/
var float FistExtention;

simulated function UpdateInitialStartPosition()
{
}

// We have nothin to attach!
simulated function AttachTo(UTPawn OwnerPawn)
{
	//SetWeaponOverlayFlags(OwnerPawn);
	AOCOwner = AOCPawn(OwnerPawn);
	
	OwnerPawn.SetWeapAnimType(WeapAnimType);
	if (!AOCPawn(OwnerPawn).bQuickfire)
		AOCPawn(OwnerPawn).SetWeaponSequence(class<AOCWeapon>(WeaponClass), class'AOCShield_None'); 

	// Check For Behind View Stuff so we can refresh what we can view 
	if (OwnerPawn.IsLocallyControlled())
	{
		OwnerPawn.SetThirdPersonCamera(AOCPlayerController(OwnerPawn.Controller).bBehindView);
	}
	else if(AOCPawn(OwnerPawn).bIsBeingFPObserved)
	{
		OwnerPawn.SetThirdPersonCamera(AOCPlayerController(GetALocalPlayerController()).bBehindView);
	}

	// Adjust parry box
	AOCOwner.ParryComponent.SetTranslation(AOCOwner.PawnFamily.ParryBoxTranslation + ParryBoxTranslation);

	GotoState('CurrentlyAttached');
}

simulated function GetTracerSocketNames(out name beginSocketName, out name endSocketName, int i)
{	
	if ((CurrentAttack == Attack_Slash && !bJustPlayComboAnim) || (CurrentAttack == Attack_Stab && !bJustPlayComboAnim) || 
		(CurrentAttack == Attack_Overhead && bJustPlayComboAnim) || CurrentAttack == Attack_Sprint)
	{
		beginSocketName = 'RightElbow';
		endSocketName = 'RightHand';
	}
	else
	{
		beginSocketName = 'LeftElbow';
		endSocketName = 'LeftHand';
	}
}

simulated state Release
{
	/** Get fist tracer points */
	simulated function GetSpecialTracerPoints(out vector beginTracePos, out vector endTracePos)
	{
		// Get elbow location and hand location of proper arm
		// Right Arm
		if ((CurrentAttack == Attack_Slash && !bJustPlayComboAnim) || (CurrentAttack == Attack_Stab && !bJustPlayComboAnim) || 
			(CurrentAttack == Attack_Overhead && bJustPlayComboAnim) || CurrentAttack == Attack_Sprint)
		{
			beginTracePos = AOCOwner.Mesh.GetBoneLocation(AOCOwner.GetAdjustedBoneName('b_r_elbow'));
			endTracePos = AOCOwner.Mesh.GetBoneLocation(AOCOwner.GetAdjustedBoneName('B_R_WEAPON'));
		}
		// Left Arm
		else
		{
			beginTracePos = AOCOwner.Mesh.GetBoneLocation(AOCOwner.GetAdjustedBoneName('b_l_elbow'));
			endTracePos = AOCOwner.Mesh.GetBoneLocation(AOCOwner.GetAdjustedBoneName('b_l_wrist'));
		}

		// Increase The distance a little bit so we're a bit in front of the fists
		endTracePos += Normal(endTracePos - beginTracePos) * FistExtention;
	}

	/** Perform Regular Weapon Tracers */
	simulated function RegularWeaponTracers()
	{
		SpecialWeaponTracers();
	}
}

defaultproperties
{
	Begin Object Name=SkeletalMeshComponent0
		SkeletalMesh=none
	End Object

	Begin Object Name=SkeletalMeshComponent2
		SkeletalMesh=none
	End Object

	WeaponID=EWEP_Fists
	WeaponClass=class'SlumpModWeapon_Brassknuckles'
	WeaponSocket=none
	WeaponWidth=6.0
	FistExtention = 50.0

	WeaponStaticMesh=none
	WeaponStaticMeshScale=1

	AttackTypeInfo(0)=(fBaseDamage=60, fForce=22500, cDamageType="AOC.AOCDmgType_Fists", iWorldHitLenience=6)
	AttackTypeInfo(1)=(fBaseDamage=65, fForce=22500, cDamageType="AOC.AOCDmgType_Fists", iWorldHitLenience=6)
	AttackTypeInfo(2)=(fBaseDamage=25, fForce=22500, cDamageType="AOC.AOCDmgType_Fists", iWorldHitLenience=6)
	AttackTypeInfo(3)=(fBaseDamage=50.0, fForce=33000, cDamageType="AOC.AOCDmgType_Fists", iWorldHitLenience=6)
	AttackTypeInfo(4)=(fBaseDamage=0.0, fForce=22500, cDamageType="AOC.AOCDmgType_Fists", iWorldHitLenience=6)
	AttackTypeInfo(5)=(fBaseDamage=5.0, fForce=45500.0, cDamageType="AOC.AOCDmgType_Shove", iWorldHitLenience=12)

	Skins(0)={(
		SkeletalMeshPath="",
		StaticMeshPath="",
		MaterialPath="",
		StaticMeshScale=1.0,
		ImagePath=""
		)};
}
