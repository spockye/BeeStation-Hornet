// Gungir Project - Asset Storage File
// This file contains definitions and references for Gungir-related assets

#define GUNGIR_ASSET_VERSION 1

// Asset paths
#define GUNGIR_ICONS "icons/gungir"
#define GUNGIR_SOUNDS "sound/gungir"

// Asset registry - Add your asset definitions here

// Icon assets
#define GUNGIR_ICON_WEAPON "weapon"
#define GUNGIR_ICON_EFFECT "effect"
#define GUNGIR_ICON_UI "ui"

// Sound assets
#define GUNGIR_SOUND_FIRE "fire"
#define GUNGIR_SOUND_IMPACT "impact"
#define GUNGIR_SOUND_AMBIENT "ambient"

/datum/gungir_asset
	var/name
	var/asset_type
	var/path


/proc/register_gungir_asset(asset_name, asset_type, asset_path)
	var/datum/gungir_asset/new_asset = new()
	new_asset.name = asset_name
	new_asset.asset_type = asset_type
	new_asset.path = asset_path
	return new_asset