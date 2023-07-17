
InGameCC mod for S.T.A.L.K.E.R. Shadow of Chernobyl
---------------------------------------------------
Version 1.00 English and Russian


Description
-----------
InGameCC is a modification of the game S.T.A.L.K.E.R.
Shadow of Chernobyl which makes the X-ray engine display
subtitles and closed captions when certain events happen
(like an NPC says something, a door is opening, etc.) in 
the game. This method of showing subtitles can be useful 
for those who want to do a more complete localisation or 
want to adapt the game for the hearing impaired.


Scope
-----
All NPC phrases which were spoken in English are subtitled
and then some. Certain sound effects got closed captions 
as well. Other changes are:

- added extra entries into PDA's Diary section (optional)
- re-enabled entries in PDA's Statistics section 
- added icons in ui_iconstotal.dds
- replaced 2 fonts with their slightly outlined versions
- re-enabled 1 Sidorovich sound
- replaced 1 sound with its stereo effected version 
  after Brain Scorcher turned off
- re-enabled 1 osoznanie sound after opening the secret 
  door with decoder
- re-enabled 7 stereo effected English-spoken Monolith 
  call sounds
- player selectable wish at the Monolith (the mystery of 
  the Zone can be revealed without the decoder)


Install
-------
Run the file "Install-InGameCC.bat".

 or

1. Copy all files and the 'gamedata' folder with all its 
   contents into your S.T.A.L.K.E.R. folder.
2. If you have v1.0003 or older game version installed
   then run 'Set-InGameCC_10000-10003.bat'


Preferences
-----------
You can pre-set your preferences in a text file named
"closecaption.ltx" in the folder "gamedata\config\misc".
Open the file in a plain text editor (Notepad) and set
values as you like. Although you can set CC options in
Options->Sound while playing a game (values are retrieved
from a saved game state), your preferences file will be
left unchanged.


Warning
-------
This mod is not compatible with any other mod which 
modifies the same files. If you choose to install by simply 
copying "gamedata" folder into your S.T.A.L.K.E.R. folder 
then you'll be notified about possible file collisions. 
Overwriting existing files can (and probably will) stop 
one or more installed mods working properly, and 
unfortunately not much can be done to avoid that. However, 
installer backs up some files before overwriting them, and 
tries to restore them when you remove InGameCC mod by 
running 'Remove-InGameCC.bat' file.

Since cutscene subtitling functionality of our previous mod 
VideoCC is built into InGameCC, please note that our method 
of displaying subtitles in cutscenes (i.e. simultaneously 
running tutorials) doesn't work on game version 1.0004 or 
later. To avoid problems with cutscenes the installer tries 
to detect your game version and copies the right one of the 
two "ui_movies.xml" files we prepared. Please remember to 
remove and re-install InGameCC mod in case you update your 
game to v1.0004 or later, or simply run the batch file 
according to your game version.

Saved games created containing any of the extra PDA entries 
will cause the game to CTD (crash to desktop) when the PDA 
is accessed if certain XML files of the InGameCC mod are not 
available anymore (for example because the mod has been 
removed). The extra PDA info feature which is causing this 
is off by default, but you can turn it on by editing 
preferences (see previous chapter).


Other notes
-----------
After installing InGameCC you can bravely replace all sounds 
to Russian with Authenticity Sound Pack or a similar sound 
mod.

For those who want to use InGameCC and The Zone Reclamation 
Project at the same time a compatibility pack for ZRP v1.05 
will be released soon.


Credits
-------
Contents (transcription & concept) by Mr. Fusion

Lua programming by TSL16b

Russian transcription and translation by Macron


Respect
-------
InGameCC mod contains portions of code from
- AMK mod (persistent variable routines)
- bardak's BFA and The Zone Reclamation Project mod (bugfixes)

Thank you for your hard work, guys! Happy modding!


Disclaimer
----------
You can freely use parts of this mod in your mod if you wish.
A mention of the source in your credits would be nice though.


Contact
-------
Bug reports, questions and comments are welcome at:

  ·f·i· csoport
  -------------
  Mr. Fusion  (mrf_of_vsb at hotmail dot com)
  The Sweet Little 16-bit  (tsl16b at freemail dot hu)
  saxus  (http://saxus.muportal.hu)

This mod was developed as a part of the non-official
Hungarian localisation of the game STALKER-SHOC,
available at http://stalker.kincsvadasz.hu

The latest version can always be downloaded from:

http://stalker.filefront.com


Versions, changes, known bugs
-----------------------------

25/05/2008 - Public version 1.00 released

* Compatible with game version 1.0000 through 1.0006
- Subtitles of cutscenes are not available on game version 
  1.0004 or above
! If you only see a "Press (Esc)..." subtitle instead of the
  picture of intro movie, run 'Set-InGameCC_10004-10006.bat'
+ Option to omit cutscenes (only in-game 'dream' movies)
+ Option to turn subtitles on/off in movies
+ Press (Esc) to skip movies played without subtitles
+ Options can be pre-set in preferences file
+ Batch files to set mod to match game version (thanks to Macron)
