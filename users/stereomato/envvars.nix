{ pkgs, lib, ... }:
{
	# FIXME: This doesnt work right, EDITOR doesn't get set. Investigate why.
	# systemd.user = {
	systemd.user = {
		sessionVariables = {
			# PATHs for DAW plugins
			DSSI_PATH   = "$HOME/.nix-profile/lib/dssi:$HOME/.dssi:/etc/profiles/per-user/stereomato/lib/dssi:/run/current-system/sw/lib/dssi";
			LADSPA_PATH = "$HOME/.nix-profile/lib/ladspa:$HOME/.ladspa:/etc/profiles/per-user/stereomato/lib/ladspa:/run/current-system/sw/lib/ladspa";
			LV2_PATH    = "$HOME/.nix-profile/lib/lv2:$HOME/.lv2:/etc/profiles/per-user/stereomato/lib/lv2:/run/current-system/sw/lib/lv2";
			LXVST_PATH  = "$HOME/.nix-profile/lib/lxvst:$HOME/.lxvst:/etc/profiles/per-user/stereomato/lib/lxvst:/run/current-system/sw/lib/lxvst:$HOME/.vst:/etc/profiles/per-user/stereomato/lib/vst:/run/current-system/sw/lib/vst";
			VST_PATH    = "$HOME/.nix-profile/lib/vst:$HOME/.vst:/etc/profiles/per-user/stereomato/lib/vst:/etc/profiles/per-user/stereomato/lib/vst:/run/current-system/sw/lib/vst";
			VST3_PATH    = "$HOME/.nix-profile/lib/vst3:$HOME/.vst3:/etc/profiles/per-user/stereomato/lib/vst3:/etc/profiles/per-user/stereomato/lib/vst3:/run/current-system/sw/lib/vst3";
			# Enable wayland for some apps that don't default to wayland yet
			QT_QPA_PLATFORM = "wayland";
			# Revert to ngl because of https://gitlab.gnome.org/GNOME/mutter/-/issues/3517
			GSK_RENDERER = "ngl";
			# Diff program
			DIFFPROG = "delta";
			# Not needed anymore
			# MOZ_ENABLE_WAYLAND = "1";
			NIXOS_OZONE_WL = "1";
			# Show FPS in games/apps that use DXVK
			DXVK_HUD="fps";
			# Enable some extra Kooha features.
			KOOHA_EXPERIMENTAL = "1";
			# Use the symengine in a python thing
			USE_SYMENGINE = "1";
			# Stop wine from making menu entries.
			WINEDLLOVERRIDES = "winemenubuilder.exe=d";
			# QT bug https://bugreports.qt.io/browse/QTBUG-113574
			# Maybe can be disabled, check machines/common/overlays qqc2
			# Can't lol
			# QT_SCALE_FACTOR_ROUNDING_POLICY = "RoundPreferFloor";
			# Disable this, it breaks many games and perhaps even software. 
			#	SDL_VIDEODRIVER = "wayland";
			#
			EDITOR = "code --wait --new-window";
			# TODO: Keep this in mind
			# https://discourse.gnome.org/t/the-colors-of-gtk/22724
			# GTK_DEBUG="linear";
		};
	};
}
