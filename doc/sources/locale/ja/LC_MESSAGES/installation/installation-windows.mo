Þ    \      ü              Ü     Ý  s   y  !  í  Ë        Û  Q   g	  ]   ¹	     
     $
  N   1
  A   
     Â
  /   Ö
  /     *   6  Ø   a  m   :  Ò   ¨  *  {  }   ¦  6   $  =   [  x     ~     À     Ý   R    0     Æ  Y   Ó     -     B     È  `   ×     8     É     Ö  (   î          °  r  Ä      7     X     ë  ¢     T   ©  ü   þ     û  B     8   Î  B     ;   J  Y     x   à     Y  .   h      /   ¶     æ  ©   z  W   $   B   |   9   ¿   1  ù   ¹   +"  0  å"  Ø   $  #   ï$     %     (%  À   ¼%  ¢  }&     (  Å   0)     ö)  í   *     +  A    +  s   b+  q   Ö+  D   H,  ¨   ,  7   6-     n-     |-     -     -     ¦-     ´-     Â-     Ð-     Þ-  Í  î-  í   ¼/  ¡   ª0  j  L1  
  ·2  Ñ   Â3  j   4     ÿ4  #   5  $   ©5  j   Î5  U   96  6   6  H   Æ6  @   7  @   P7  7  7  o   É8  í   99    ':     ¼;  l   [<     È<     V=  ¿   î=  Ý   ®>  <  ?  .  É@     øB  v   C  %   C  ­   ±C  $   _D  ª   D  Ö   /E      F  %   'F  R   MF  ¥    F  (   FG    oG  U   rI  ¨   ÈI  >   qJ  "  °J  a   ÓK  ö   5L  æ   ,M  X   N  M   lN  S   ºN  T   O  u   cO  ·   ÙO  (   P  M   ºP  É  Q  L   ÒR  ¸   S  ¡   ØS  \   zT  T   ×T  I   ,U  ~  vU    õV  ±  
X    ¼Y  V   ÙZ  A   0[  ½   r[  î   0\  &  ]  }  F_  %  Ä`  @   êa  A  +b  -   mc  T   c     ðc  |   d  P   e  Ý   Xe  <   6f     sf     f     f     f     «f     ¹f     Çf     Õf     ãf   **If kivy fails to be imported,** you probably didn't delete all the ``*.dist-info`` folders and and the kivy or ``kivy.deps*`` folders from site-packages. After installing the kivy dependencies and downloading or cloning kivy to your favorite location, do the following: Alternate linux style command shells that we recommend is `Git for Windows <https://git-for-windows.github.io/>`_ which offers a bash command line as `well <http://rogerdudler.github.io/git-guide/>`_ as `git <https://try.github.io>`_. Note, CMD can still be used even if bash is installed. Beginning with 1.9.1 we provide binary `wheels <https://wheel.readthedocs.org/en/latest/>`_ for Kivy and all its dependencies to be used with an existing Python installation. See :ref:`install-win-dist`. Both the ``python`` and the ``Python\Scripts`` directories **must** be on the path. They must be on the path every time you recompile kivy. Browse to the ``python.exe`` file you want to use. Right click on it and copy it. Browse your hard disk drive and find the file ``python.exe`` that you want to use. Select it. Command line Compile Kivy Create the ``python\Lib\distutils\distutils.cfg`` file and add the two lines:: Currently on Windows, we provide the following dependency wheels: Double-click method Download the appropriate wheel for your system. Ensure you have the latest pip and wheel with:: Ensure you have the latest pip and wheel:: Finally compile and install kivy with ``pip install filename``, where ``filename`` can be a url such as ``https://github.com/kivy/kivy/archive/master.zip`` for kivy master, or the full path to a local copy of a kivy. For Python 3.5 only we additionally offer angle which can be used instead of glew and can be installed with:: For Python 3.5 we use the MSVC compiler. For 3.5, `Visual Studio 2015 <https://www.visualstudio.com/downloads/>`_ is required, which is availible for free. Just download and install it and you'll be good to go. For Python < 3.5 we use the MinGW compiler. However, for Python 3.5 on Windows we currently only support the microsoft MSVC compiler because of the following Python `issue 4709 <http://bugs.python.org/issue4709>`_ about MinGW. Generally this should make no difference when using precompiled wheels. From ``python\Lib\site-packages`` move **all** ``kivy.deps.*.dist-info`` directories to ``your-path`` right next to ``kivy``. From the context menu that appears, select *Open With* Get the compiler. For Python < 3.5 we use mingwpy as follows. If the compilation succeeds without any error, Kivy should be good to go. You can test it with running a basic example:: If you downloaded or cloned kivy to an alternate location and don't want to install it to site-packages read the next section. If you encounter any **permission denied** errors, try opening the `Command prompt as administrator <https://technet.microsoft.com/en-us/library/cc947813%28v=ws.10%29.aspx>`_ and trying again. If you only have one Python installed, you can associate all ``*.py`` files with your python, if it isn't already, and then run it by double clicking. Or you can only do it once if you want to be able to choose each time: In Python, packages such as Kivy can be installed with the python package manager, `pip <https://pip.pypa.io/en/stable/>`_. Some packages such as Kivy require additional steps, such as compilation, when installing using the Kivy source code with pip. Wheels (with a ``.whl`` extension) are pre-built distributions of a package that has already been compiled and do not require additional steps to install. In bash do:: In development Kivy is often installed to an alternate location and then installed with:: Install MinGW with:: Install it with ``python -m pip install wheel-name`` where ``wheel-name`` is the name of the renamed file and add deps to the `PATH`. Install kivy:: Install the dependencies (skip gstreamer (~120MB) if not needed, see :ref:`kivy-dependencies`):: Install the other dependencies as well as their dev versions (you can skip gstreamer and gstreamer_dev if you aren't going to use video/audio):: Installation Installation on Windows Installing Kivy to an alternate location Kivy examples are separated from the core because of their size. The examples can be installed separately on both Python 2 and 3 with this single wheel: Kivy's dependencies Know your command line. To execute any of the ``pip`` or ``wheel`` commands, one needs a command line tool with python on the path. The default command line on Windows is `Command Prompt <http://www.computerhope.com/issues/chusedos.htm>`_, and the quickest way to open it is to press `Win+R` on your keyboard, type ``cmd`` in the window that opens, and then press enter. Making Python available anywhere Move the contents of ``python\Lib\site-packages\kivy\deps`` to ``your-path\kivy\deps`` where ``your-path`` is the path where your kivy is located. Nightly wheel installation Now that python is installed, open the :ref:`windows-run-app` and make sure python is available by typing ``python --version``. Then, do the following to install. Now you can safely compile kivy in its current location with one of these commands:: One can select which of these to use for OpenGL use using the `KIVY_GL_BACKEND` envrionment variable by setting it to `glew` (the default), `angle`, or `sdl2`. `angle` is currently in an experimental phase as a substitute for `glew` on Python 3.5 only. Open Windows explorer (File explorer in Windows 8), and to go the address 'shell:sendto'. You should get the special Windows directory `SendTo` Paste the previously copied ``python.exe`` file **as a shortcut**. Perform steps 1 and 2 of the above Installation section. Remove the ``python\Lib\site-packages\kivy`` directory altogether. Rename it to python <python-version>. E.g. ``python27-x64`` Right click on the Python file (.py file extension) of the application you want to launch Select "Always open the file with..." if you don't want to repeat this procedure every time you double click a .py file. Send-to method Set the environment variables. On windows do:: Snapshot wheels of current Kivy master are created on every commit to the `master` branch of kivy repository. They can be found `here <https://kivy.org/downloads/appveyor/kivy>`_. To use them, instead of doing ``python -m pip install kivy`` we'll install one of these wheels as follows. Start installation of Kivy cloned from GitHub:: Support for Python 3.5 and higher isn't available with the current stable version (``1.9.1``). Compile the master branch or use the nightly wheels. That allows Kivy to remain in its original location while being available to python, which is useful for tracking changes you make in Kivy for example directly with Git. That's it. You should now be able to ``import kivy`` in python or run a basic example:: There are two methods for launching python on your ``*.py`` files. These variables must be set everytime you recompile kivy. To achieve using Kivy in an alternate location extra tweaking is required. Due to this `issue <https://github.com/pypa/pip/issues/2677>`_ ``wheel`` and ``pip`` install the dependency wheels to ``python\Lib\site-packages\kivy``. So they need to be moved to your actual kivy installation from site-packages. To compile and install kivy using the kivy `source code <https://github.com/kivy/kivy/archive/master.zip>`_  or to use kivy with git rather than a wheel there are some additional steps: To install the new wheels to a previous Kivy distribution all the files and folders, except for the python folder should be deleted from the distribution. This python folder will then be treated as a normal system installed python and all the steps described in :ref:`Installation` can then be continued. To use Kivy you need `Python <https://www.python.org/downloads/windows/>`_. Multiple versions of Python can be installed side by side, but Kivy needs to be installed for each Python version that you want to use Kivy. Upgrading from a previous Kivy dist Use development Kivy Using the latest development version can be risky and you might encounter issues during development. If you encounter any bugs, please report them. Visual Studio is very big so you can also use the smaller, `Visual C Build Tools instead <https://github.com/kivy/kivy/wiki/Using-Visual-C---Build-Tools-instead-of-Visual-Studio-on-Windows>`_. Walking the path! To add your python to the path, simply open your command line and then us the ``cd`` command to change the current directory to where python is installed, e.g. ``cd C:\Python27``. Alternatively if you only have one python version installed, permanently add the python directory to the path for `cmd <http://www.computerhope.com/issues/ch000549.htm>`_ or `bash <http://stackoverflow.com/q/14637979>`_. We also provide nightly wheels generated using Kivy `master <https://github.com/kivy/kivy>`_. See :ref:`install-nightly-win-dist`. See also :ref:`upgrade-win-dist`. If installing kivy to an **alternate location** and not to site-packages, please see :ref:`alternate-win`. We offer wheels for Kivy and its dependencies separately so only desired dependencies need be installed. The dependencies are offered as optional sub-packages of kivy.deps, e.g. ``kivy.deps.sdl2``. What are wheels, pip and wheel When hosted on `pypi <https://pypi.python.org/pypi>`_ one installs a wheel using ``pip``, e.g. ``python -m pip install kivy``. When downloading and installing a wheel directly, ``python -m pip install wheel_file_name`` is used, such as:: You are done. Open the file. You can launch a .py file with our Python using the Send-to menu: You can now execute your application by right clicking on the `.py` file -> "Send To" -> "python <python-version>". `glew <http://glew.sourceforge.net/>`_ and/or `angle (3.5 only) <https://github.com/Microsoft/angle>`_ for OpenGL `gstreamer <https://gstreamer.freedesktop.org>`_ for audio and video `gstreamer` is an optional dependency which only needs to be installed if video display or audio is desired. `ffpyplayer` is an alternate dependency for audio or video. `sdl2 <https://libsdl.org>`_ for control and/or OpenGL. |cp27_amd64|_ |cp27_win32|_ |cp34_amd64|_ |cp34_win32|_ |cp35_amd64|_ |cp35_win32|_ |cp36_amd64|_ |cp36_win32|_ |examples_whl|_ Project-Id-Version: Kivy 1.10.0
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
 ** kivyã®ã¤ã³ãã¼ãã«å¤±æããå ´åã¯ã**  ããããããã¹ã¦ã®ã* .dist-infoããã©ã«ããããã³kivyã¾ãã¯ãkivy.deps *ããã©ã«ããsite-packagesããåé¤ãã¦ããªãå¯è½æ§ãããã¾ãã kivyã®ä¾å­é¢ä¿ãã¤ã³ã¹ãã¼ã«ããå¥½ã¿ã®å ´æã«kivyããã¦ã³ã­ã¼ãã¾ãã¯ã¯ã­ã¼ã³ãããæ¬¡ã®ããã«å®è¡ãã¦ãã ããï¼ ä»£æ¿Linuxã®ã¹ã¿ã¤ã«ã®ã³ãã³ãã·ã§ã«ã¨ãã¦ã¯ `git <https://try.github.io>`_ ã®
 `æä½ <http://rogerdudler.github.io/git-guide/>`ãªã©ã¯bashã®ã³ãã³ãã©ã¤ã³ã§ãã`Git for Windows <https://git-for-windows.github.io/>`_ãæ¨è¦ãã¾ãããã¼ããCMDã¯bashãã¤ã³ã¹ãã¼ã«ããã¦ããå ´åã§ãä½¿ç¨ã§ãã¾ãã 1.9.1ä»¥éã§ã¯ãKivyããã«ã®ãã¤ããª `wheels <https://wheel.readthedocs.org/en/latest/>`_  ãæä¾ãã¾ãããã¹ã¦ã®ä¾å­é¢ä¿ã¯ãæ¢å­ã®Pythonã¤ã³ã¹ãã¼ã«ã«ä½¿ç¨ãã¾ãã  :ref:`install-win-dist`  ãåç§ãã¦ãã ãã ã ãPythonã¨ãã¨ãPython \ Scriptsãã®ä¸¡æ¹ã®ãã£ã¬ã¯ããªããã¹ä¸ã«ãªããã°ãªãã¾ãããkivyãåã³ã³ãã¤ã«ãããã³ã«ãã¹ä¸ã«å­å¨ãã¦ããå¿è¦ãããã¾ãã ä½¿ç¨ããpython.exeãã¡ã¤ã«ãåç§ãã¦ãã ãããå³ã¯ãªãã¯ãã¦ã³ãã¼ãã¾ãã ãã¼ããã£ã¹ã¯ãã©ã¤ãããã©ã¦ãºããä½¿ç¨ããpython.exeãã¡ã¤ã«ãæ¢ãã¾ããé¸æãã¦ãã ããã Command line(ã³ãã³ãã©ã¤ã³) Compile Kivy(Kivyãã³ã³ãã¤ã«) ãpython\\Lib\\distutils\\distutils.cfgããã¡ã¤ã«ãä½æãã¦ãä»¥ä¸ã®2è¡ãè¿½å ãã¾ã:: ç¾å¨ã®ã¨ãããWindowsã§ã¯æ¬¡ã®ä¾å­é¢ä¿ã®wheelãæä¾ãã¦ãã¾ã: Double-click method(ããã«ã¯ãªãã¯ã¡ã½ãã) ã·ã¹ãã ã«é©ããwheel ããã¦ã³ã­ã¼ããã¦ãã ããã pipã¨wheelãææ°ã§ãããã¨ãç¢ºèªãã¦ãã ãã:: ææ°ã®pipã¨wheelãæã£ã¦ãããã¨ãç¢ºèªãã¾ã:: æå¾ã«ã³ã³ãã¤ã«ãã¦kivyã¯ã¤ã³ã¹ãã¼ã«ï¼pip install filenameï¼ãã¾ãã filenameã¯æ¬¡ã®ããã«URLãæå®ã§ãã¾ããhttps://github.com/kivy/kivy/archive/master.zipããURLã¯kivyãã¹ã¿ã¼ãã¾ãã¯kivy zipã®ã­ã¼ã«ã«ã§ã³ãã¼ãããçµ¶å¯¾ãã¹ãæå®ãã¾ãã Python 3.5ã®å ´åã«ã¯ãglewã®ä»£ããã«ä½¿ç¨ã§ããangleãè¿½å ã§ã¤ã³ã¹ãã¼ã«ã§ãã¾ã:: Python 3.5ã§ã¯MSVCã³ã³ãã¤ã©ãä½¿ç¨ãã¦ãã¾ãã 3.5ã§ã¯Visual Studio 2015ãå¿è¦ã§ããããã¯ç¡æã§å©ç¨ã§ãã¾ãããã¦ã³ã­ã¼ããã¦ããã¤ã³ã¹ãã¼ã«ãã¦ãããã®ãè¯ãã§ãããã Python 3.5ä»¥ä¸ã§ã¯MinGWã³ã³ãã¤ã©ãä½¿ç¨ãã¦ãã¾ããããããWindowsä¸ã®Python 3.5ã§ã¯ãMinGWã«é¢ããæ¬¡ã®Pythonã® `issue 4709 <http://bugs.python.org/issue4709>`_  ã®ãããç¾å¨ã®ã¨ããMicrosoft MSVCã³ã³ãã¤ã©ã®ã¿ããµãã¼ããã¦ãã¾ããä¸è¬ã«ãããªã³ã³ãã¤ã«ãããwheelãä½¿ç¨ããå ´åã¯ãããã¯éãã¯ããã¾ããã python \ Lib \ site-packagesããããã¹ã¦ã®ãkivy.deps.*.dist-infoããã£ã¬ã¯ããªããkivyãã®ããé£ã®ãyour-pathãã«ç§»åãã¾ãã è¡¨ç¤ºãããã³ã³ãã­ã¹ãã¡ãã¥ã¼ãããããã­ã°ã©ã ããéãããé¸æãã¾ãã ã³ã³ãã¤ã©ãå¥æãã¦ãã ããã Python ã3.5ããä¸ã®ãã¼ã¸ã§ã³ã®å ´åãä»¥ä¸ã®ããã«mingwpyãä½¿ç¨ãã¾ã ã³ã³ãã¤ã«ãã¨ã©ã¼ãªãæåããå ´åã¯Kivyã¯æ­£å¸¸ã«åä½ããã¯ãã§ããåºæ¬çãªä¾ãå®è¡ãã¦ãã¹ãã§ãã¾ãï¼ Kivyããã¦ã³ã­ã¼ããããã¾ãã¯å¥ã®å ´æã«ã¯ã­ã¼ãã³ã°ãã¦site-packagesã«ã¤ã³ã¹ãã¼ã«ããããªãå ´åã¯ãæ¬¡ã®ã»ã¯ã·ã§ã³ããèª­ã¿ãã ããã ãpermission deniedããçºçããå ´åã¯ã`ç®¡çèã¨ãã¦ã³ãã³ããã­ã³ãã  <https://technet.microsoft.com/enus/library/cc947813%28v=ws.10%29.aspx>`_  ãéãååº¦å®è¡ãã¦ã¿ã¦ãã ããã Pythonã1ã¤ããã¤ã³ã¹ãã¼ã«ããã¦ããªãã¦ã¾ã éãã¦ããªãå ´åããã¹ã¦ã®ã* .pyããã¡ã¤ã«ãPythonã«é¢é£ä»ãã§ãã¾ããæ¬¡ã«ããã«ã¯ãªãã¯ãã¦å®è¡ãã¾ããã¾ãã¯æ¯åé¸æã§ããããã«ãããå ´åã¯ã1åã ãè¡ããã¨ãã§ãã¾ãï¼ Pythonã§ã¯ãKivyãªã©ã®ããã±ã¼ã¸ãpythonããã±ã¼ã¸ããã¼ã¸ã£ã¼ `pip <https://pip.pypa.io/en/stable/>`_ ã§ã¤ã³ã¹ãã¼ã«ã§ãã¾ãã pipã§Kivyã½ã¼ã¹ã³ã¼ããä½¿ç¨ãã¦ã¤ã³ã¹ãã¼ã«ããå ´åãKivyãªã©ã®ä¸é¨ã®ããã±ã¼ã¸ã§ã¯ãã³ã³ãã¤ã«ãªã©ã®è¿½å æé ãå¿è¦ã§ããwheelï¼.whlæ¡å¼µå­ä»ãï¼ã¯æ¢ã«ã³ã³ãã¤ã«ãããããã±ã¼ã¸ã®äºåãã«ãããããã£ã¹ããªãã¥ã¼ã·ã§ã³ã§ããã¤ã³ã¹ãã¼ã«ããã®ã«è¿½å ã®æé ãå¿è¦ã¨ãã¾ããã bashã§å®è¡ããå ´å:: éçºä¸­ã®Kivyã¯ãã°ãã°å¥ã®å ´æã«ã¤ã³ã¹ãã¼ã«ãããæ¬¡ã®æ§ã«ã¤ã³ã¹ãã¼ã«ããã¾ãï¼ MinGWãã¤ã³ã¹ãã¼ã«ãã¾ã:: ãpython -m pip install wheel-nameãã§ã¤ã³ã¹ãã¼ã«ãã¾ããããã§wheel-nameã¯ååãå¤æ´ãããã¡ã¤ã«ã®ååã§ãPATHãã«depsãè¿½å ãã¾ã Kivyãã¤ã³ã¹ãã¼ã«ãã¾ã:: ä¾å­é¢ä¿ãã¤ã³ã¹ãã¼ã«ãã¾ãï¼gstreamerï¼120MB)ãå¿è¦ãªãå ´åã¯ã¹ã­ããã§ãã¾ãã :ref:`kivy-dependencies` ãåç§ãã¦ãã ããï¼ ãã®ä»ã®ä¾å­é¢ä¿ã ãã§ãªãããã®devã®ãã¼ã¸ã§ã³ï¼ãããª/ãªã¼ãã£ãªãä½¿ç¨ããªãå ´åã¯ãgstreamerã¨gstreamer_devãã¹ã­ããã§ãã¾ãï¼ãã¤ã³ã¹ãã¼ã«ãã¾ã:: Installation(ã¤ã³ã¹ãã¼ã«) Installation on Windows(ç¿»è¨³æ¸ã¿) Installing Kivy to an alternate location(å¥ã®å ´æã«Kivyãã¤ã³ã¹ãã¼ã«) Kivyã®ä¾ã¯ãµã¤ãºã®ããã«ã³ã¢ããåãé¢ããã¦ãã¾ãããããã®ä¾ã¯Python 2ã¨Python 3ã®ä¸¡æ¹ã«åå¥ã«ã¤ã³ã¹ãã¼ã«ã§ãã¾ã: Kivy's dependencies(Kivyã®ä¾å­é¢ä¿) ã³ãã³ãã©ã¤ã³ãç¥ã£ã¦ãã¾ãããpipãã¾ãã¯ãwheelãã³ãã³ãã®ãããããå®è¡ããã«ã¯ãã³ãã³ãã©ã¤ã³ãã¼ã«ã§ãã¹ä¸ã®pythonã®ä½¿ç¨ãå¿è¦ã§ãã
Windowsã®ããã©ã«ãã®ã³ãã³ãã©ã¤ã³ã¯ `ã³ãã³ããã­ã³ãã <http://www.computerhope.com/issues/chusedos.htm>`_  ã§ ãéãããã®æãç°¡åãªæ¹æ³ã¯ãã­ã¼ãã¼ãã§ãWin + Rããæ¼ãã¦éããã¦ã£ã³ãã¦åã§ãcmdãã¨å¥åããEnterã­ã¼ãæ¼ãã¾ãã Making Python available anywhere(ã©ãã§ãPythonãå©ç¨ã§ããããã«ãã) python \ Lib \ site-packages \ kivy \ depsã®åå®¹ãyour-path \ kivy \ depsã«ç§»åãã¾ããããã§ãyour-pathãã¯kivyãéç½®ããã¦ãããã¹ã§ãã Nightly wheel installation(Nightly wheelã®ã¤ã³ã¹ãã¼ã«) pythonããã§ã«ã¤ã³ã¹ãã¼ã«ããã¦ããã¨ãã¦ã :ref:`windows-run-app` ãéããæ¬¡ã®ããã«å¥åãã¦ãpython --version ãPythonãå©ç¨å¯è½ã§ãããã¨ãç¢ºèªãã¦ãã ãããæ¬¡ã«ãã¤ã³ã¹ãã¼ã«ããã«ã¯ãæ¬¡ã®æé ãå®è¡ãã¾ãã ããã§ãkivyãä»¥ä¸ã®ããããã®ã³ãã³ãã§å®å¨ã«ã³ã³ãã¤ã«ã§ãã¾ãï¼ ç°å¢å¤æ°ãKIVY_GL_BACKENDããglewï¼ããã©ã«ãï¼ãangleãã¾ãã¯sdl2ã«è¨­å®ãããã¨ã§ã©ãããOpenGLã§ä½¿ç¨ããããé¸æã§ãã¾ãã angleã¯Python 3.5ã§ã®glewã®ä»£ç¨ã¨ãã¦å®é¨æ®µéã«ããã¾ãã Windowsã¨ã¯ã¹ãã­ã¼ã©ï¼Windows 8ã®ãã¡ã¤ã«ã¨ã¯ã¹ãã­ã¼ã©ï¼ãéãã¦ ãshellï¼sendtoãã®ã¢ãã¬ã¹ã«ç§»åãã¾ããç¹å¥ãªWindowsãã£ã¬ã¯ããªãSendToããåå¾ããå¿è¦ãããã¾ã ä»¥åã«ã³ãã¼ããpython.exeãã·ã§ã¼ãã«ããã¨ãã¦è²¼ãä»ãã¾ãã ä¸è¨ã®ã¤ã³ã¹ãã¼ã«ã»ã¯ã·ã§ã³ã®æé 1ã¨2ãå®è¡ãã¾ãã python \ Lib \ site-packages \ kivyãã£ã¬ã¯ããªãå®å¨ã«åé¤ãã¾ãã ä¾ãã° python27-x64ã®æ§ã«python <python-version>ã«ååãå¤æ´ãã¾ãã èµ·åããã¢ããªã±ã¼ã·ã§ã³ã®Pythonãã¡ã¤ã«ï¼.pyãã¡ã¤ã«æ¡å¼µå­ï¼ãå³ã¯ãªãã¯ãã¾ãã .pyãã¡ã¤ã«ãããã«ã¯ãªãã¯ãããã³ã«ãã®æé ãç¹°ãè¿ããªãå ´åã¯ããå¸¸ã«å­ã®ã¢ããªãä½¿ã£ã¦ãã¡ã¤ã«ãéã...ããé¸æãã¾ãã Send-to method(ãéããã¡ã½ãã) ç°å¢å¤æ°ãè¨­å®ãã¾ããã¦ã£ã³ãã¦ãºä¸ã§å®è¡ããå ´å:: ç¾å¨ã®Kivyãã¹ã¿ã¼ã®ã¹ãããã·ã§ãããã¤ã¼ã«ã¯ãkivyãªãã¸ããªã® ãmasterããã©ã³ãã¸ã®ãã¹ã¦ã®ã³ãããæã«ä½æããã¾ãããããã¯ãã  `ãã <https://kivy.org/downloads/appveyor/kivy>`_ ã§è¦ã¤ãããã¨ãã§ãã¾ããããããä½¿ç¨ããã«ã¯ããpython -m pip install kivyããå®è¡ããã®ã§ã¯ãªããæ¬¡ã®ããã«ãããã®wheeleã®1ã¤ãã¤ã³ã¹ãã¼ã«ãã¾ãã GitHub ããã¯ã­ã¼ã³ããKivyã®ã¤ã³ã¹ãã¼ã«ãéå§ãã¾ã:: Python 3.5ä»¥éã®ãµãã¼ãã¯ãç¾å¨ã®å®å®çï¼1.9.1ï¼ã§ã¯ä½¿ç¨ã§ãã¾ããããã¹ã¿ã¼ãã©ã³ããã³ã³ãã¤ã«ããããnightly wheelãä½¿ç¨ãã¾ãã ããã«ããKivyã¯åã®å ´æã«ã¨ã©ã¾ããPythonã§å©ç¨ã§ãã¾ããããã¯Kivyã§ç´æ¥è¡ã£ãå¤æ´ãGitã§è¿½è·¡ããã®ã«ä¾¿å©ã§ãã ããã§ããã¾ããPythonã§ãimport Kivyããä½¿ç¨ã§ããããã«ãªãã¾ãã ã* .pyããã¡ã¤ã«ã§Pythonãèµ·åããã«ã¯2ã¤ã®æ¹æ³ãããã¾ãã å¤æ°ã¯Kivyãã¤ã³ã¹ãã¼ã«ãããã³ã«è¨­å®ãå¿è¦ã§ãã å¥ã®å ´æã§Kivyãä½¿ç¨ããã«ã¯ãä½åãªèª¿æ´ãå¿è¦ã§ãããã®issue <https://github.com/pypa/pip/issues/2677>`_  ã®ãããpython \ Lib \ site-packages \ kivyã«ä¾å­wheelããwhteelãã¨ãpipãã§ã¤ã³ã¹ãã¼ã«ãã¦ãã ããããããã£ã¦ãsite-packagesãå®éã®Kivyãã¤ã³ã¹ãã¼ã«ããå ´æã«ç§»è¡ããå¿è¦ãããã¾ãã Kivyã®`ã½ã¼ã¹ã³ã¼ã <https://github.com/kivy/kivy/archive/master.zip>`_  ãä½¿ç¨ãããã¾ãã¯gitãä½¿ç¨ãã¦ã®ã³ã³ãã¤ã«ã¨Kivyãã¤ã³ã¹ãã¼ã«ããã«ã¯ãwheelããã¤ã³ã¹ãã¼ã«ãããããããã¤ãã®è¿½å ã®æé ãããã¾ã: ä»¥åã®Kivyãã£ã¹ããªãã¥ã¼ã·ã§ã³ã«æ°ããwheelãã¤ã³ã¹ãã¼ã«ããã«ã¯pythonãã©ã«ãã¼ãé¤ããã¹ã¦ã®ãã¡ã¤ã«ã¨ãã©ã«ãã¼ããã£ã¹ããªãã¥ã¼ã·ã§ã³ããåé¤ããå¿è¦ãããã¾ãããã®pythonãã©ã«ãã¯Pythonãã¤ã³ã¹ãã¼ã«ããéå¸¸ã®ã·ã¹ãã ã¨ãã¦æ±ããã :ref:`Installation`  ã§èª¬æããã¦ãããã¹ã¦ã®æé ãç¶è¡ã§ãã¾ã Kivyãä½¿ç¨ããã«ã¯ `Python <https://www.python.org/downloads/windows/>`_ ãå¿è¦ã§ã ãPythonã®è¤æ°ã®ãã¼ã¸ã§ã³ãå¹³è¡ã«ã¤ã³ã¹ãã¼ã«ã§ãã¾ãããKivyã¯Kivyãä½¿ç¨ããåPythonã®ãã¼ã¸ã§ã³ã«ã¤ã³ã¹ãã¼ã«ããå¿è¦ãããã¾ãã Upgrading from a previous Kivy dist(ä»¥åã®Kivyéçºçããã®ã¢ãããã¼ã) Use development Kivy(Kivyã®éçºãã¼ã¸ã§ã³ãä½¿ç¨ãã) ææ°ã®éçºçãä½¿ç¨ãããã¨ã¯ãªã¹ã¯ããããéçºä¸­ã«åé¡ãçºçããå¯è½æ§ãããã¾ããä»»æã®ãã°ã«é­éããå ´åã¯å ±åãã¦ãã ããã Visual Studio ã¯ã¨ã¦ãå®¹éãå¤§ããã®ã§ä»£ããã«å®¹éãå°ãã `Visual C Build Tools instead <https://github.com/kivy/kivy/wiki/Using-Visual-C---Build-Tools-instead-of-Visual-Studio-on-Windows>`_ ãä½¿ç¨ã§ãã¾ãã ãã¹ãæ­©ãã¦ã¿ã¾ãããï¼ãã¹ã«pythonãè¿½å ããã«ã¯ãã³ãã³ãã©ã¤ã³ãéãããcdãã³ãã³ãã§Pythonãã¤ã³ã¹ãã¼ã«ããã¦ããå ´æã¸ã«ã¬ã³ããã£ã¬ã¯ããª"ãå¤æ´ããã«ã¯ãä¾ãã°ãcd C:\Python27ãã¨å¥åãã¾ã ãPythonã®ãã¼ã¸ã§ã³ã1ã¤ã®ã¿ã¤ã³ã¹ãã¼ã«ãã¦ããå ´åã¯ `cmd <http://www.computerhope.com/issues/ch000549.htm>`_  ã`bash <http://stackoverflow.com/q/14637979>`_ ã®ããã«Pythonã®ãã£ã¬ã¯ããªãè¿½å ãã¦æ°¸ç¶çã«ãã¾ãã ã¾ããKivy  `master <https://github.com/kivy/kivy>`_ ãä½¿ç¨ãã¦çæãããNightlyã®wheel ãæä¾ãã¾ã ã :ref:`install-nightly-win-dist` ãåç§ãã¦ãã ãã ã :ref:`upgrade-win-dist`  ãåç§ãã¦ãã ãã ãsite-packagesã§ã¯ãªãå¥ã®å ´æã«kivyãã¤ã³ã¹ãã¼ã«ããå ´åã¯ã :ref:`alternate-win` ãåç§ãã¦ãã ãã ã ç§ãã¡ã¯Kivyã¨ãã®ä¾å­é¢ä¿ã®weelãå¥ãã«æä¾ãã¦ããã®ã§ãå¿è¦ãªä¾å­é¢ä¿ã®ã¿ãã¤ã³ã¹ãã¼ã«ããå¿è¦ãããã¾ããä¾å­é¢ä¿ã¯ä¾ãã°kivy.deps.sdl2ã®ãããªkivy.depsã®ãªãã·ã§ã³ã®ãµãããã±ã¼ã¸ã¨ãã¦æä¾ããã¾ãã  What are wheels, pip and wheel(wheelãpipã¨ã¯ä½ã§ããï¼) `pypi <https://pypi.python.org/pypi>`_ ã§ãã¹ãããã¦ããå ´åããpipããä½¿ç¨ãã¦ãã¤ã¼ã«ãã¤ã³ã¹ãã¼ã«ããã¾ãã ãpython -m pip install kivyããwheelãç´æ¥ãã¦ã³ã­ã¼ããã¦ã¤ã³ã¹ãã¼ã«ããå ´åããpython -m pip install wheel_file_nameããä½¿ç¨ããã¾ãã å®äºã§ãããã¡ã¤ã«ãéãã¾ãã ãéããã¡ãã¥ã¼ãä½¿ã£ã¦Pythonã§.pyãã¡ã¤ã«ãèµ·åã§ãã¾ãï¼ .pyãã¡ã¤ã« - > "Send To"  - > "python <python-version>"ãå³ã¯ãªãã¯ãã¦ã¢ããªã±ã¼ã·ã§ã³ãå®è¡ã§ããããã«ãªãã¾ããã `glew <http://glew.sourceforge.net/>`_ ãã¨ `angle (3.5 ã®ã¿) <https://github.com/Microsoft/angle>`_  ã¯OpenGLã®ãã `gstreamer <https://gstreamer.freedesktop.org>`_  ã¯é³å£°ã¨ãããªã®ãã ãgstreamerãã¯ãããªã®è¡¨ç¤ºãé³å£°ãå¿è¦ãªå ´åã«ã¤ã³ã¹ãã¼ã«ããã ãã®ãªãã·ã§ã³ã®ä¾å­é¢ä¿ã§ããã ffpyplayerãã¯ãªã¼ãã£ãªã¾ãã¯ãããªã®å¥ã®ä¾å­é¢ä¿ã§ãã å¶å¾¡ã¾ãã¯OpenGLç¨ã® `sdl2 <https://libsdl.org>`_ ã |cp27_amd64|_ |cp27_win32|_ |cp34_amd64|_ |cp34_win32|_ |cp35_amd64|_ |cp35_win32|_ |cp36_amd64|_ |cp36_win32|_ |examples_whl|_ 