-- This file is autogenerated. Do not edit this file manually. Your changes will be ignored.
-- More information: https://github.com/MWSE/MWSE/tree/master/docs

--- @meta
--- A controller class responsible for controlling the animation sequences stored in the KF file. It controls the animations, and allows to smoothly transition between two animations by blend, morph, and sum transitions.
--- @class niKeyframeManager : niTimeController, niObject
--- @field cumulative boolean If true, the transformations on the accumulation root are accumulated.
--- @field globalScaleRotation tes3matrix33 The global character rotation matrix.
--- @field globalTranslation tes3vector3 The global character translation.
--- @field sequences niSequence[] *Read-only*. The aimation sequences this keyframe manager can blend between.