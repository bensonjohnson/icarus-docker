#!/bin/bash
chmod -R 755 /home/steam/
/home/steam/steamcmd.sh +force_install_dir /home/steam/steamworks_sdk +login anonymous +@sSteamCmdForcePlatformType windows +app_update 1007 +quit
/home/steam/steamcmd.sh +@sSteamCmdForcePlatformType windows +force_install_dir /home/steam/icarus +login anonymous +app_update 2089300  +quit
cp /home/steam/steamworks_sdk/*64.dll /home/steam/icarus
winecfg
xvfb-run wine /home/steam/icarus/IcarusServer.exe -SteamServerName="${SERVERNAME}" -PORT="17777" -QueryPort="27015"
