
The intstaller tactics_pi-1.0000-win32.exe was created with the standard OpenCPN
NSIS packageing process.
Virustotal reports one heuristic "virus".
We think that this is a false positive as the plugin dll itself is checked OK and
the same "virus" is reported on 3 fully different, independent development machines...

Nevertheless ...
I created a zip file tactics_pi_win32.zip which was checked on virustotal with no findings
see  virustotal_tactics_pi_win32.zip.txt
Installation :
1. Navigate to the plugin directory of your OpenCPN installation
  <intallation-path>\OpenCPN\plugins and copy the zip there
2. unzip DIRECTLY INTO the plugins directory. 

If everything's fine, you should see 

<intallation-path>\OpenCPN\plugins
   + tactics_pi.dll
<intallation-path>\OpenCPN\plugins\tactics_pi\data
   + Tactics.svg
   + Tactics_rollover.svg
   + Tactics_toggled.svg
   
 That's it.