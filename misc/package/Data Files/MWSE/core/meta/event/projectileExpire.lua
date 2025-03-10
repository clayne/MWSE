--- @meta

-- This file is autogenerated. Do not edit this file manually. Your changes will be ignored.
-- More information: https://github.com/MWSE/MWSE/tree/master/docs

--- The projectileExpire event fires just prior to a fired projectile expiring.
--- @class projectileExpireEventData
--- @field claim boolean If set to `true`, any lower-priority event callbacks will be skipped. Returning `false` will set this to `true`.
--- @field firingReference tes3reference *Read-only*. Reference to the actor that fired the projectile.
--- @field firingWeapon tes3weapon *Read-only*. The weapon that fired the projectile.
--- @field mobile tes3mobileProjectile|tes3mobileSpellProjectile *Read-only*. The mobile projectile that is expiring.
