Þ    N                    ü  g   ý     e     z       Þ   #       Ò   "  E   õ  +   ;     g     v  Y        Ý  þ   ø  s   ÷	     k
     
  ç     	     5     n   C  ¦   ²  ª   Y       °     m   N     ¼  &   W  ,   ~     «     Å     Û  $   ì       L   $  ©   q       3     M   Ñ       i   ¡  ù     K        Q  @   a  1   ¢  z   Ô  n   O     ¾     Û     á  g   ø  {   `     Ü  f   î  A   U  q         	  k   *  ´     X   K     ¤  t   '          ¸  5   Ð  _        f     v  "        ¸  0   Ë  &   ü  1  #  F   U  ^     d   û  Í  `     .!  +   Å!  %   ñ!  º   "    Ò"     å#  
  $  X   %  /   i%  +   %     Å%     à%  (   e&  .  &  y   ½'  6   7(  Ã   n(  
  2)  	   =*  E   G*     *  ¿   $+  ô   ä+     Ù,  ú   r-  ¢   m.  Ý   /  <   î/  =   +0  -   i0  +   0  &   Ã0  >   ê0  <   )1  k   f1  0  Ò1  £   3  D   §3     ì3  ¡   u4     5  w  ­5     %7  !   ¨7  a   Ê7  K   ,8  ¾   x8     79  /   Ó9     :     :      5:     Ö:  4   d;     ;  d   <     <  /   =  ¦   D=  ú   ë=     æ>  ±   w?  ²   )@  -   Ü@  9   
A  L   DA     A  #   B  E   5B  O   {B  5   ËB  ;   C  O   =C  Â  C  g   PE  ^   ¸E     F   (Re)install your dependencies with ``--build-bottle`` to make sure they can be used on other machines:: Additional Libraries Adjust settings Apps can be packaged and distributed with the Kivy SDK using the method described below, making it easier to include frameworks like SDL2 and GStreamer. As an example we are including the showcase example packaged using this method for both Python 2 (9.xMB) and 3 (15.xMB), you can find the packages here: https://drive.google.com/drive/folders/0B1WO07-OL50_alFzSXJUajBFdnc . Build the spec and create a DMG Buildozer right now uses the Kivy SDK to package your app. If you want to control more details about your app than buildozer currently offers then you can use the SDK directly, as detailed in the section below. By default the kivy version specified in the requirements is ignored. Change the paths with your relevant paths:: Complete guide Create a DMG Create a file named touchtracer.spec in this directory and add the following code to it:: Creating packages for OS X Do not forget to replace <Framework_name> with your framework. This tool `osxrelocator` essentially changes the path for the libs in the framework such that they are relative to the executable within the .app, making the Framework portable with the .app. Edit the buildozer.spec and add the details for your app. Dependencies can be added to the `requirements=` section. Editing the spec file First install Kivy and its dependencies without using Homebrew as mentioned here http://kivy.org/docs/installation/installation.html#development-version. For example if you don't use GStreamer, simply remove it from YourApp.app/Contents/Frameworks. Similarly you can remove the examples folder from /Applications/Kivy.app/Contents/Resources/kivy/examples/ or kivy/tools, kivy/docs etc. GStreamer Go to the PyInstaller directory, and build the spec:: Icons and other settings of your app can be changed by editing YourApp/Contents/info.plist to suit your needs. If you are using Python from Homebrew you will also need the following step until `this pull request <https://github.com/Homebrew/homebrew/pull/46097>`_ gets merged:: If you have a Kivy.app at /Applications/Kivy.app then that is used, for packaging. Otherwise the latest build from kivy.org using Kivy master will be downloaded and used. If you install a module that installs a binary for example like kivy-garden That binary will be only available from the venv above, as in after you do:: If you want to package for python 3.x.x simply download the package named Kivy3.7z from the download section of kivy.org and extract it to Kivy.app in /Applications, then run:: If your Project needs Ogg Vorbis support be sure to add the ``--with-libvorbis`` option to the command above. If your project depends on GStreamer or other additional libraries (re)install them with ``--build-bottle`` as described `below <additional libraries_>`_. If your project depends on GStreamer:: Inside the portable venv within the app at:: Install Cython and Kivy:: Install PyInstaller:: Install Python:: Install `Homebrew <http://brew.sh>`_ Installing modules Just copy the binary to the Kivy.app/Contents/Resources/venv/bin/ directory. Kivy package on osx uses its own virtual env that is activated when you run your app using `kivy` command. To install any module you need to install the module like so:: Kivy.app comes with SDL2 and Gstreamer frameworks provided. To include frameworks other than the ones provided do the following:: Let's assume we use a folder like `testpackaging`:: Make sure you have the unmodified Kivy SDK (Kivy.app) from the download page. Note the lack of `/` at the end. This should give you a compressed dmg that will further shrink the size of your distributed app. Now all you need to do is to include your compiled app in the Kivy.app by running the following command:: Once the app is packaged, you might want to remove unneeded packages like gstreamer, if you don't need video support. Same logic applies for other things you do not use, just reduce the package to its minimal state that is needed for the app to run. Once you have kivy and its deps installed, you need to install PyInstaller. Open a console. Package your app on the oldest OS X version you want to support. Package your app using the path to your main.py:: Packaging Kivy applications with the following methods must be done inside OS X, 32-bit platforms are no longer supported. Replace `touchtracer` with your app where appropriate. This will give you a <yourapp>.app in the dist/ folder. Run the following commands:: Run:: Shrinking the app size Since version 1.9.0, Kivy is released for the OS X platform in a self-contained, portable distribution. That's it, your self-contained package is ready to be deployed! You can now further customize your app as described bellow. That's it. Enjoy! The app has a considerable size right now, however the unneeded parts can be removed from the package. The garden lib will be only available when you activate this env. The specs file is named `touchtracer.spec` and is located in the directory where you ran the pyinstaller command. Then run the following command:: This copies Kivy.app to `<app_folder_name>.app` and includes a compiled copy of your app into this package. This step above is important, you have to make sure to preserve the paths and permissions. A command like ``cp -rf`` will copy but make the app unusable and lead to error later on. This way the package can be made to only include the parts that are needed for your app. This will add the required hooks so that PyInstaller gets the required Kivy files. We are done. Your spec is ready to be executed. This will not yet copy additional image or sound files. You would need to adapt the created ``.spec`` file for that. To include other frameworks To install binary files To make a DMG of your app use the following command:: To use Python 3, ``brew install python3`` and replace ``pip`` with ``pip3`` in the guide below. Using Buildozer Using PyInstaller and Homebrew Using PyInstaller without Homebrew Using the Kivy SDK Where <app_folder_name> is the name of your app. Where are the modules/files installed? You need to change the `COLLECT()` call to add the data of touchtracer (`touchtracer.kv`, `particle.png`, ...). Change the line to add a Tree() object. This Tree will search and add every file found in the touchtracer directory to your final package. Your COLLECT section should look something like this:: You will now have a Touchtracer.dmg available in the `dist` directory. pip install git+http://github.com/kivy/buildozer cd /to/where/I/Want/to/package buildozer init source /Applications/Kivy.app/Contents/Resources/venv/bin/activate garden install mapview deactivate Project-Id-Version: Kivy 1.10.0
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2017-05-13 08:22+0900
PO-Revision-Date: YEAR-MO-DA HO:MI+ZONE
Last-Translator: JUN OKAZAKI <okazakijun54392@gmail.com>, 2017
Language: ja
Language-Team: Japanese (Japan) (https://www.transifex.com/python_kivy_doc_ja/teams/74810/ja_JP/)
Plural-Forms: nplurals=1; plural=0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.3.4
 ï¼åï¼``--build-bottle``ãä½¿ç¨ãã¦ä¾å­é¢ä¿ãã¤ã³ã¹ãã¼ã«ãä»ã®ãã·ã³ã§ä½¿ç¨ãããã¨ãã§ããããç¢ºèªãã¾ãï¼ Additional Libraries(è¿½å ã©ã¤ãã©ãª) Adjust setting(è¨­å®ãèª¿æ´ãã) ä¸è¨ã®æ¹æ³ãä½¿ç¨ãã¦ãã¢ããªã¯ããã±ã¼ã¸åããã¦SDL2ã¨ã®GStreamerã®ãããªãã¬ã¼ã ã¯ã¼ã¯ãç°¡åã«å«ãã¦Kivy SDKã¨ä¸ç·ã«éå¸ã§ãã¾ãã Python 2ï¼9.xMBï¼ã¨3ï¼15.xMBï¼ã®ä¸¡æ¹ã®ããã«ããã®ã¡ã½ãããä½¿ç¨ãã¦ããã±ã¼ã¸åããã""ã·ã§ã¼ã±ã¼ã¹ã®ä¾ã¨ãã¦ãããã§ããã±ã¼ã¸ãè¦ã¤ãããã¾ã::https://drive.google.com/drive/folders/0B1WO07-OL50_alFzSXJUajBFdnc specã®ãã«ãã¨DMGã®ä½æ Buildozerã¯ãã¢ããªãããã±ã¼ã¸åããéã«Kivy SDKãä½¿ç¨ãã¦ãã¾ããBuildozerããããã¢ããªã®è©³ç´°ãå¶å¾¡ãããå ´åã¯ä»¥ä¸ã®ã»ã¯ã·ã§ã³ã§èª¬æããããã«ãç´æ¥SDKãä½¿ç¨ããæ¹æ³ãæä¾ãã¦ãã¾ãã ããã©ã«ãã§ã¯è¦ä»¶ã«æå®ãããkivyãã¼ã¸ã§ã³ã¯ç¡è¦ããã¾ãã ãã¹ãé¢é£ãããã¹ã«å¤æ´ãã¾ã:: Complete guide(ã³ã³ããªã¼ãã¬ã¤ã) Create a DMG(DMGã®ä½æ) ãã®ãã£ã¬ã¯ããªã«touchtracer.specã¨ããååã®ãã¡ã¤ã«ãä½æããããã«æ¬¡ã®ã³ã¼ããè¿½å ãã¾ã:: Creating packages for OS X(ç¿»è¨³æ¸ã¿) <Framework_name>ãä½¿ç¨ãããã¬ã¼ã ã¯ã¼ã¯ã§ç½®æãããã¨ãå¿ããªãã§ãã ãã `osxrelocator`ãã¼ã«	ã¯.appãã¡ã¤ã«åã®å®è¡å¯è½ãã¡ã¤ã«ã¸ã®ç¸å¯¾çãªæ çµã¿ã®ä¸­ã§LIBSã®ãã¹ãå¤æ´ãã.appã§ãã¬ã¼ã ã¯ã¼ã¯ãã¼ã¿ãã«ãä½ãã¾ãã buildozer.specãç·¨éãã¦ãã¢ããªã®è©³ç´°æå ±ãè¿½å ãã¾ãã`requirements=` sectionã«è¿½å ãã¾ãã Editing the spec file(specãã¡ã¤ã«ãç·¨éãã) ã¾ããããã§è¿°ã¹ãããã«Homebrewãä½¿ç¨ããã«Kivyã¨ãã®ä¾å­é¢ä¿ãã¤ã³ã¹ãã¼ã«ãã¾ããhttp://kivy.org/docs/installation/installation.html#development-version ã ä¾ãã°GStreamerãä½¿ç¨ããªãå ´åãåç´ã«YourApp.app/Contents/Frameworksããåé¤ãã¾ããåæ§ã«ã/Applications/Kivy.app/Contents/Resources/kivy/examples/ ã¾ãã¯ kivy/tools, kivy/docs ãªã©ããexamplesãã©ã«ããåé¤ã§ãã¾ãã GStreamer PyInstallerãã£ã¬ã¯ããªã«ç§»åãã¦specããã«ããã¾ã ã¢ã¤ã³ã³ã¨ã¢ããªã®ä»ã®è¨­å®ã¯ããã¼ãºã«åããã¦YourApp/Contents/info.plistãã¡ã¤ã«ãç·¨éãããã¨ã§å¤æ´ãã¾ãã Homebrewã®Pythonãä½¿ç¨ãã¦ããå ´åãããªãã¯ç¾å¨ããã®
`ãã«ãªã¯ã¨ã¹ã<https://github.com/Homebrew/homebrew/pull/46097>`_ ããã¼ã¸ããå¿è¦ãããã¾ãï¼ /Applications/Kivy.appã§Kivy.appãæã£ã¦ããå ´åã¯ããã±ã¼ã¸ã³ã°ã®ããã«ä½¿ç¨ããã¾ããããä»¥å¤ã®å ´åã¯Kivy masterãä½¿ç¨ãã¦kivy.orgããææ°ã®ãã«ãããã¦ã³ã­ã¼ããã¦ä½¿ç¨ããã¾ãã ä¾ãã°kivyã¬ã¼ãã³ã®ãããªãã¤ããªãã¤ã³ã¹ãã¼ã«ããå ´åãvirtual envãªãã§å¾ããå©ç¨ã§ããããã«ãªãã¾ã:: Python3.xxã®ããã«ããã±ã¼ã¸åãããå ´åã¯ãåç´ã«kivy.orgã®ãã¦ã³ã­ã¼ãã»ã¯ã·ã§ã³ããKivy3.7zã¨ããååã®ããã±ã¼ã¸ããã¦ã³ã­ã¼ããã¦å®è¡ãã¦ã/Applications ã® Kivy.appã«æ½åºãã¾ãã ãã­ã¸ã§ã¯ãã®Ogg Vorbisã®ãµãã¼ããå¿è¦ãªå ´åã¯ãä¸è¨ã®ã³ãã³ãã«ãªãã·ã§ã³``--with-libvorbis``ãè¿½å ãã¦é¸æãã¾ãã ãã­ã¸ã§ã¯ããGStreamerã¾ãã¯ä»ã®è¿½å ã®ã©ã¤ãã©ãªã«ä¾å­ããå ´åï¼åï¼``--build-bottle`ã§ã¤ã³ã¹ãã¼ã«ãã¦è¨è¼ããã¦ããããã«`å¾ãã¾ã`below <additional libraries_>`_ã ãã­ã¸ã§ã¯ããGStreamerã«ä¾å­ãã¦ããå ´åï¼ ã¢ããªåã®ãã¼ã¿ãã«virtual envåã«ããã¾ã:: Cythonã¨Kivyãã¤ã³ã¹ãã¼ã«ãã¾ã:: PyInstallerãã¤ã³ã¹ãã¼ã«ãã¾ã:: Pythonãã¤ã³ã¹ãã¼ã«ãã¾ã:: `Homebrew <http://brew.sh>`_ ãã¤ã³ã¹ãã¼ã«ãã¾ãã Installing modules (ã¢ã¸ã¥ã¼ã«ç¾¤ã®ã¤ã³ã¹ãã¼ã«) Kivy.app/Contents/Resources/venv/bin/ ã®ãã£ã¬ã¯ããªã«ãã¤ããªãã³ãã¼ããã ãã§ãã OSXä¸ã®Kivyããã±ã¼ã¸ã«ã¯ã`kivy` ã³ãã³ããä½¿ç¨ãã¦ã¢ããªã±ã¼ã·ã§ã³ãå®è¡ããã¨ãã«æå¹åããç¬èªã®virtual envãä½¿ç¨ãã¦ãã¾ãã ã¤ã³ã¹ãã¼ã«ããå¿è¦ãããä»»æã®ã¢ã¸ã¥ã¼ã«ãã¤ã³ã¹ãã¼ã«ããã«ã¯æ¬¡ã®ããã«ãã¾ã:: Kivy.appã¯SDL2ã¨ã®GStreamerãã¬ã¼ã ã¯ã¼ã¯ãä»å±ãã¦æä¾ããã¾ãã ä»ã®ãã¬ã¼ã ã¯ã¼ã¯ãå«ããã«ã¯æ¬¡ã®æ¹æ³ã§è¡ãã¾ãï¼ `testpackaging`ãã©ã«ããä½¿ç¨ããã¨ä»®å®ãã¾ããã:: ãã¦ã³ã­ã¼ããã¼ã¸ããå¤æ´ããã¦ããªãKivy SDKï¼Kivy.appãï¼ãæã£ã¦ãããã¨ãç¢ºèªãã¦ãã ããã æå¾ã« `/` ããªããã¨ãæ³¨æãã¦ãã ãããããã¯éçºããã¢ããªã®ãµã¤ãºãããã«ç¸®å°ããå§ç¸®ãããdmgãä¸ãã¾ãã ä»ãå¿è¦ãããã®ã¯ãæ¬¡ã®ã³ãã³ããå®è¡ãã¦Kivy.appã§ã³ã³ãã¤ã«ãããã¢ããªã±ã¼ã·ã§ã³ãå«ãããã¨ã§ãã ã¢ããªãããã±ã¼ã¸åããããããªãµãã¼ããå¿è¦ã¨ããªãå ´åãgstreamerã®ãããªä¸è¦ãªããã±ã¼ã¸ãåé¤ããå ´åãããã¾ããåä¸ã®ã­ã¸ãã¯ã¯ã¢ããªãå®è¡ããããã«å¿è¦ã¨ãããæå°ã®ç¶æã«ããã±ã¼ã¸ã®å®¹éãæ¸ããã¦ä½¿ç¨ãã¦ããªãä»ã®ããã±ã¼ã¸ã«ãé©ç¨ããã¾ãã kivyãæã£ã¦ããããã®depsãã¤ã³ã¹ãã¼ã«ããããpyInstallerãã¤ã³ã¹ãã¼ã«ããå¿è¦ãããã¾ãã ã³ã³ã½ã¼ã«ãéãã¾ãã ãµãã¼ãããæãå¤ãOS Xã®ãã¼ã¸ã§ã³ã§ã¢ããªãããã±ã¼ã¸åãã¾ãã main.pyã¸ã®ãã¹ãä½¿ç¨ãã¦ã¢ããªãããã±ã¼ã¸åãã¾ã:: ä»¥ä¸ã®æ¹æ³ã§Kivyã¢ããªã±ã¼ã·ã§ã³ã®ããã±ã¼ã¸åã¯ã¯OS Xåã§è¡ãªãã¾ããã¾ã32ããããã©ãããã©ã¼ã ã§ã¯ãµãã¼ããããªããªãã¾ããã ã¢ããªãä½ãéã«`touchtracer`ãç½®æãã¦ãã ããã ããã¯ãããªãã® dist/ folderã®<yourapp> .appãã¡ã¤ã«ãæä¾ãã¾ãã æ¬¡ã®ã³ãã³ããå®è¡ãã¦ãã ãã:: å®è¡ãã¾ãã ã¢ããªã®ãµã¤ãºãç¸®å° ãã¼ã¸ã§ã³1.9.0ä»¥æ¥ãKivyã¯OS Xãã©ãããã©ã¼ã ã«ã¤ã³ã¹ãã¼ã«ããã¿ã¤ãã¨ãã¼ã¿ãã«ã§ã®éå¸ããªãªã¼ã¹ããã¾ãã èªå·±å®çµããã±ã¼ã¸ãå±éããæºåãã§ãã¾ããï¼ä»¥ä¸ã®èª¬æã§ããã«ã¢ããªãã«ã¹ã¿ãã¤ãºã§ãã¾ãã ããã§ããã¾ãã ãæ¥½ãã¿ãã ããï¼ ç¾å¨ã®ã¢ããªã¯ããªãã®å¤§ãããæã£ã¦ãã¾ãããä¸è¦ãªé¨åãããã±ã¼ã¸ããåé¤ã§ãã¾ãã ãã®envãã¢ã¯ãã£ãã«ããå ´åãKivyã¬ã¼ãã³ã®libãä½¿ç¨å¯è½ã«ãªãã¾ãã ã¹ããã¯ã»ãã¡ã¤ã«ã¯touchtracer.specã¨ããååã§ãpyInstallerã®ã³ãã³ããå®è¡ãããã£ã¬ã¯ããªã«å­å¨ãã¾ãã æ¬¡ã«ä»¥ä¸ã®ã³ãã³ããå®è¡ãã¾ã:: Kivy.appã®ã³ãã¼ã®`<app_folder_name>.app`ãã¡ã¤ã«ã®ããã±ã¼ã¸ã«ã¢ããªã±ã¼ã·ã§ã³ã®ã³ã³ãã¤ã«æ¸ã¿ã®ã³ãã¼ãå«ã¾ãã¦ãã¾ãã ä¸è¨ã®ãã®ã¹ãããã§ã¯ããã¹ã¨æ¨©éãç¢ºèªãããã¨ãéè¦ã§ããä»¥ä¸ã®ãããªã³ãã³ã``cp -rf``ãªã©ã§ã³ãã¼ãã¾ãããã¢ããªã±ã¼ã·ã§ã³ãä½¿ç¨ã§ããªããªãã¨å¾ã§ã¨ã©ã¼ã«ãªãã¾ãã ãã®ããã«ãããã±ã¼ã¸ã¯ããªãã®ã¢ããªã±ã¼ã·ã§ã³ã®ããã«å¿è¦ã¨ãããé¨åãå«ãããã¨ãã§ãã¾ãã pyInstallerãå¿è¦ãªKivyãã¡ã¤ã«ãåå¾ããããã«ããããã«å¿è¦ãªhookãè¿½å ãã¾ããå®è¡ãã¾ãã specãå®è¡ããæºåãã§ãã¾ããã ããã¯ãã¾ã è¿½å ã®ç»åãé³å£°ã®ãã¡ã¤ã«ãã³ãã¼ãã¾ããã``.spec`` ãä½æããå¾ãã®ããã®ãã¡ã¤ã«ãè¿½å ããå¿è¦ãããã¾ãã ä»ã®ãã¬ã¼ã ã¯ã¼ã¯ãå«ããã«ã¯ ãã¤ããªãã¡ã¤ã«ãã¤ã³ã¹ãã¼ã«ããã«ã¯ ã¢ããªã®DMGãä½æããã«ã¯ãæ¬¡ã®ã³ãã³ããä½¿ç¨ãã¾ã: Python3ãä½¿ç¨ããã«ã¯ã``brew install python3``ã¨``pip``ã``pip3``ã¨ç½®æãã¦ã¬ã¤ãã«å¾ã£ã¦ãã ããã Using Buildozer(Buildozerãä½¿ç¨) Using PyInstaller and Homebrew(PyInstallerã¨Homebrewãä½¿ç¨ãã) Using PyInstaller without Homebrew(Homebrewãªãã§PyInstallerãä½¿ç¨ãã) Using the Kivy SDK(Kivy SDKãä½¿ç¨ãã¦ãã¾ã)" ããã§ã®<app_folder_name>ã¯ã¢ããªã®ååã§ãã ã¢ã¸ã¥ã¼ã«/ãã¡ã¤ã«ã¯ã©ãã«ã¤ã³ã¹ãã¼ã«ããã¦ãããï¼ ``COLLECT()`` ã«touchtracerã§å¼ã°ãããã¼ã¿ï¼`touchtracer.kv`, `particle.png`ã...ï¼ãè¿½å ããå¿è¦ãããã¾ãã``Tree()``ãªãã¸ã§ã¯ãã«è¿½å ããè¡ãå ãã¾ãï¼ä¾ï¼``Tree('examples-path\\\\demo\\\\touchtracer\\\\')ï¼``ãTreeã¯touchtracerãã£ã¬ã¯ããªã«ãããã¹ã¦ã®ãã¡ã¤ã«ãæ¤ç´¢ãã¦æçµçãªããã±ã¼ã¸ã«è¿½å ãã¾ãã COLLECTã»ã¯ã·ã§ã³ã«æ¬¡ã®ããã«ãªãã¾ã:: ããã§ã`dist` ãã£ã¬ã¯ããªã§ä½¿ç¨å¯è½ãªTouchtracer.dmgãæã¤ãã¨ã«ãªãã¾ãã pip install git+http://github.com/kivy/buildozer cd /to/where/I/Want/to/package buildozer init ã½ã¼ã¹ã/Applications/Kivy.app/Contents/Resources/venv/bin/activate ã®mapviewãã®éã¢ã¯ãã£ãåãã³ã³ãã­ã¼ã«ããã 