{config, lib, pkgs, ... }:{
nixpkgs.config.permittedInsecurePackages = lib.mkMerge [
                "olm-3.2.16"
              ];

  users.users.stereomato.packages = with pkgs; [
		# Web Browsers
		google-chrome vivaldi vivaldi-ffmpeg-codecs

		# Ask for it to be fixed someday
		#vivaldi-widevine

		# Chat apps
		# Matrix

		# Et cetera
		tdesktop discord mumble element-desktop

		# Password management
		bitwarden bitwarden-cli

		# Downloaders
		curl wget aria megacmd
		#

		# VPN
		protonvpn-gui

		# Virtual classes
		# zoom-us
	] ++ lib.optionals config.services.desktopManager.plasma6.enable [
			# XMPP
			#kaidan
			# Downloaders
			kdePackages.kget

			# Matrix
			kdePackages.neochat nheko

			# Web browser
			kdePackages.falkon kdePackages.angelfish
	]
		++ lib.optionals config.services.xserver.desktopManager.gnome.enable  [
				fractal
				# Internet tools
				fragments
			];

}
