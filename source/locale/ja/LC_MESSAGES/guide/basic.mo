Þ    9      ä              ¬     ­     Ç     ß     û       ¸     Î   H       @   ¬     í  ,        0  ;   J  U     X   Ü  \   5       
  ©  -   ´	  t   â	  {   W
  ·   Ó
  $        °     4     H    T  H   o     ¸     ¾  !   Ç     é  D   ÿ  u   D  X   º  ¸     í   Ì  J   º            I   ®     ø       U   &  È   |  R   E       J   '  Ò   r  °   E     ö  D   þ     C     Í  K   S  -     t  Í     B     \     t  ©        :  °   B  ã   ó  ©   ×  H     '   Ê  >   ò  -   1  X   _  U   ¸  ]     b   l     Ï  b  ß  ;   B      ~       !    ´!     »"  ¤   Û"      #     ¡#  {  ­#  M   )%     w%     }%     %     %  4   ³%  ~   è%     g&    î&    ü'  @   )  !   Y)  ¦   {)  Z   "*  !   }*     *  f   µ*  þ   +  i   ,     ,     -     -  ¶   ¹.     p/  _   x/  ¯   Ø/     0  X   	1  0   b1   :ref:`installation_linux` :ref:`installation_osx` :ref:`installation_windows` A window should open, showing a single Label (with the Text 'Hello World') that covers the entire window's area. That's all there is to it. Android As highlighted by the image above, show casing the `Kivy App Life Cycle`, this is the function where you should initialize and return your `Root Widget`. This is what we do on line 8:: As you can see above, for all intents and purposes, our entry point into our App is the run() method, and in our case that is "MyApp().run()". We will get back to this, but let's start from the third line:: At line 12 in the class LoginScreen, we overload the method :meth:`~kivy.widget.Widget.__init__` so as to add widgets and to define their behavior:: At line 2 we import a :class:`~kivy.uix.gridlayout.Gridlayout`:: Create an application Creating a kivy application is as simple as: Customize the application First off, let's get familiar with the Kivy app life cycle. Follow the instructions for :ref:`nnirung a Kivy application on OS X <osx-run-app>`:: Follow the instructions for :ref:`running a Kivy application on Linux <linux-run-app>`:: Follow the instructions for :ref:`running a Kivy application on Windows <windows-run-app>`:: Further on to line 7:: Go ahead and open up that file if you want to delve deeper into what the Kivy App class does. We encourage you to open the code and read through it. Kivy is based on Python and uses Sphinx for documentation, so the documentation for each class is in the actual file. Here is an example of a minimal application:: Here the class `MyApp` is initialized and its run() method called. This initializes and starts our Kivy application. Here we initialize a Label with text 'Hello World' and return its instance. This Label will be the Root Widget of this App. If you want to install everything yourself, ensure that you have at least `Cython <http://cython.org>`_ and `Pygame <http://pygame.org>`_. A typical pip installation looks like this:: Installation of the Kivy environment It's required that the base Class of your App inherits from the `App` class. It's present in the kivy_installation_dir/kivy/app.py. Kivy App Life Cycle Kivy Basics Kivy depends on many Python libraries, such as pygame, gstreamer, PIL, Cairo, and more. They are not all required, but depending on the platform you're working on, they can be a pain to install. For Windows and MacOS X, we provide a portable package that you can just unzip and use. Lets extend this application a bit, say a simple UserName/Password page. Linux Mac OS X Moving on to Line 15 and beyond:: Moving on to line 5:: Now on to the portion that will make our app run at line 11 and 12:: On Windows, just double click the kivy.bat and a terminal will be opened with all the required variables already set. On nix* systems, open the terminal of your choice and if kivy isn't installed globally:: One important thing to note here is the way packages/classes are laid out. The :class:`~kivy.uix` module is the section that holds the user interface elements like layouts and widgets. One should not forget to call super in order to implement the functionality of the original class being overloaded. Also note that it is good practice not to omit the `**kwargs` while calling super, as they are sometimes used internally. Opening a Terminal application and setting the kivy environment variables. Platform specifics Python uses indentation to denote code blocks, therefore take note that in the code provided above, at line 9 the class and function definition ends. Running the above code will give you a window that should look like this: Running the application Similarly on line 2:: The `development version <https://github.com/kivy/kivy>`_ can be installed with git:: The code above doesn't handle the input from the user, does no validation or anything else. We will delve deeper into this and :class:`~kivy.widget.Widget` size and positioning in the coming sections. This class is used as a Base for our Root Widget (LoginScreen) defined at line 9:: This is where we are `defining` the Base Class of our Kivy App. You should only ever need to change the name of your app `MyApp` in this line. To run the application, follow the instructions for your operating system: Try re-sizing the window and you will see that the widgets on screen adjust themselves according to the size of the window without you having to do anything. This is because widgets use size hinting by default. We ask the GridLayout to manage its children in two columns and add a :class:`~kivy.uix.label.Label` and a :class:`~kivy.uix.textinput.TextInput` for the username and password. Windows You can save this to a text file, `main.py` for example, and run it. Your application needs some complementary files to be able to run on Android.  See :doc:`/guide/packaging-android` for further reference. implementing its :meth:`~kivy.app.App.build` method so it returns a :class:`~kivy.uix.Widget` instance (the root of your widget tree) instantiating this class, and calling its :meth:`~kivy.app.App.run` method. sub-classing the :class:`~kivy.app.App` class Project-Id-Version: Kivy 1.9.1
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2016-07-02 17:46+0900
PO-Revision-Date: YEAR-MO-DA HO:MI+ZONE
Last-Translator: FULL NAME <EMAIL@ADDRESS>
Language: ja
Language-Team: ja <LL@li.org>
Plural-Forms: nplurals=1; plural=0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.3.4
 :ref:`installation_linux` :ref:`installation_osx` :ref:`installation_windows` ã¦ã¤ã³ãã¦ãéãã¨ãåä¸ã®ã©ãã«(ãHello Worldããã­ã¹ã)ãã¦ã¤ã³ãã¦ã¨ãªã¢å¨ä½ã«è¡¨ç¤ºããã¾ããããã§è¨­å®ã¯å®äºã§ãã Android ä¸ã®`Kivy Appã®ã©ã¤ããµã¤ã¯ã«` ã§æ«é²ããå³ã§å¼·èª¿ããããã«ãRoot Widget`ãåæåãã¦è¿ãé¢æ°ã§ãã8è¡ç®ã¯å®éã«åä½ããåå®¹:: ããããã®ããã«ããã¹ã¦ã®æå³ãç®çã®ããã®ã¨ã³ããªãã¤ã³ãã¯run()ã¡ã½ããã§ãä»åã¯"MyApp().run()"ã§ããããã§ã¯ã³ã¼ãã«ãã©ã£ã¦ä¸è¡ç®ããéå§ãã¦ã¿ã¾ããã 12è¡ç®ã®LoginScreenã¯ã©ã¹ã§ã`~kivy.widget.Widget.__init__`ã¡ã½ããããªã¼ãã¼ã­ã¼ããã¦wigdgetãè¿½å ãåä½ãå®ç¾©ããããã«ãã¾ã:: 2è¡ç®ã§ :class:`~kivy.uix.gridlayout.Gridlayout` ãimportãã¾ã:: ã¢ããªã±ã¼ã·ã§ã³ãä½æãã Kivyã¢ããªã±ã¼ã·ã§ã³ãä½æããã®ã¯ç°¡åã§ã: ã¢ããªã±ã¼ã·ã§ã³ã®ã«ã¹ã¿ãã¤ãº ã¾ãç¬¬ä¸ã«ãKivyã®ã©ã¤ããµã¤ã¯ã«ã«ã¤ãã¦è©³ãããªãã¾ãããã  :ref:` a Kivy application on OS X  <osx-run-app>`ã®æç¤ºã«å¾ã£ã¦ãã ãã:: :ref:`running a Kivy application on Linux <linux-run-app>`ã®æç¤ºã«å¾ã£ã¦ãã ãã::  :ref:`running a Kivy application on Windows <windows-run-app>`ã®æç¤ºã«å¾ã£ã¦ãã ãã:: ã¾ã7è¡ç®:: ãã£ã¦ãããã¡ã«ãKivy Appã¯ã©ã¹ãä½ãããããæ·±ãæãä¸ãããå ´åã¯app.pyãéãã¾ãã³ã¼ããéãã¦èª­ã¿é²ãããã¨ããå§ããã¾ããKivyã¯Pythonãåã«ãã¦ããããã­ã¥ã¡ã³ãã¯Sphinxãä½¿ç¨ãã¦ãã®ã§åã¯ã©ã¹ã®ãã­ã¥ã¡ã³ãã¯å®éã®ãã¡ã¤ã«ã«ãªã£ã¦ãã¾ãã æå°éã®ã¢ããªã±ã¼ã·ã§ã³ã®ä¾ãç¤ºãã¾ã:: `MyApp`ã¯ã©ã¹ã¯åæåãããrun()ã¡ã½ãããå¼ã³åºããã¾ããKivyã¢ããªã±ã¼ã·ã§ã³ã¯åæåããã¦èµ·åãã¾ãã ããã§ã¯ãHello Worldãã®ãã­ã¹ãã©ãã«ãåæåãã¦ã¤ã³ã¹ã¿ã³ã¹ãè¿ãã¾ãããã®ã©ãã«ã¯Appã®Root Widgetã«ãªãã¾ãã èªåã§ãã¹ã¦ã¤ã³ã¹ãã¼ã«ããå ´åã«ã¯ãæä½ã§ã`Cython <http://cython.org>`_ ã¨ `Pygame <http://pygame.org>`_ ãæã£ã¦ãããã¨ãç¢ºèªãã¦ãã ãããpipã§ã®ä¸è¬çãªã¤ã³ã¹ãã¼ã«ã¯ä»¥ä¸ã®ããã«ãªãã¾ãï¼ Kivyç°å¢ã®ã¤ã³ã¹ãã¼ã« ã¢ããªã±ã¼ã·ã§ã³ã®ãã¼ã¹ã¯ã©ã¹ã¯`App`ã¯ã©ã¹ãç¶æ¿ãããã¨ã¯å¿é ã§ããããã¯kivy_installation_dir/kivy/app.pyãã«ããã¾ãã Kivy Appã®ã©ã¤ããµã¤ã¯ã« Kivy Basics Kivyã¯ãpygameãgstreameã®ãPILãCairoãããã¦ããå¤ãã®Pythonã©ã¤ãã©ãªã«ä¾å­ãã¾ãããããã¯ããã¹ã¦å¿è¦ã¯ããã¾ããããå¯¾å¿ãããã©ãããã©ã¼ã ã«å¿ãã¦ãã¤ã³ã¹ãã¼ã«ããã«ã¯è¦å´ãã¾ããWindowsãMacOS Xã®ããã«ãè§£åãã¦ä½¿ç¨ã§ãããã¼ã¿ãã«ãªããã±ã¼ã¸ãæä¾ãã¾ãã ç°¡åãªUserName/Passwordããã¼ã¸ãå°ãã«ã¹ã¿ãã¤ãºãã¾ãã Linux Mac OS X ããã¦15è¡ç®:: 5è¡ç®ã«ç§»åãã¦:: 11è¡ç®ã¨12è¡ç®ã§ã¢ããªãå®è¡ãã¾ãã Windowsã§ã¯kivy.batãããã«ã¯ãªãã¯ããã¨ãå¿è¦ãªå¤æ°ããã¹ã¦è¨­å®ãç¶æã§ç«¯æ«ãéãã¾ãã nix* ã·ã¹ãã ã§Kivyãã°ã­ã¼ãã«ã§ã¤ã³ã¹ãã¼ã«ããããã¦ããªãå ´åã¯ãå¥½ã¿ã®ã¿ã¼ããã«ãéã:: ããã§æ³¨æãã¹ãéè¦ãªç¹ã¯ãpackages/classes ãã¬ã¤ã¢ã¦ãããã¦ããæ¹æ³ã§ãã:class:`~kivy.uix`ã¢ã¸ã¥ã¼ã«ã¯ãã¬ã¤ã¢ã¦ããã¦ã£ã¸ã§ãããªã©ã®ã¦ã¼ã¶ã¼ã¤ã³ã¿ã¼ãã§ã¤ã¹è¦ç´ ãä¿æãã¦ããé¨åã§ãã ä¸ã¤å¿ããªãã§æ¬²ããã®ã¯ããªãªã¸ãã«ã®ã¯ã©ã¹ã®æ©è½ãå®è£ããããã«ã¹ã¼ãã¼ã§å¼ã³åºããã¨ã§ããã¾ãã¹ã¼ãã¼ãå¼ã³åºãããã«ãå¼æ°ãåé¨çã«ä½¿ç¨ãã¾ãã®ã§`**kwargs`ã¯çç¥ããªããã¨ããå§ããã¾ã ã¿ã¼ããã«ãéããkivyç°å¢å¤æ°ãè¨­å®ãã¾ãã ãã©ãããã©ã¼ã ã®ä»æ§ Pythonã¯ãã³ã¼ããã­ãã¯ãç¤ºãããã«ã¤ã³ãã³ããä½¿ç¨ãã¦ãã¾ãããã®ãã9è¡ç®ã§ã¯ã©ã¹ã¨é¢æ°ã®å®ç¾©ã¯çµäºãã¦ã¾ãã ä¸ã®ã³ã¼ããå®è¡ããã¨ä»¥ä¸ã®ãããªã¦ã£ã³ãã¦ãè¡¨ç¤ºããã¾ãã ã¢ããªã±ã¼ã·ã§ã³ã®å®è¡ åæ§ã«2è¡ç®ã®:: `éçºãã¼ã¸ã§ã³<https://github.com/kivy/kivy>`_ ã¯gitãããã¦ã³ã­ã¼ãã§ãã¾ãã:: ä¸è¨ã®ã³ã¼ãã¯ãã¦ã¼ã¶ããã®å¥åãå¦çããªãã¨ãæ¤è¨¼ãä½ããã®åä½ãè¡ãã¾ããã:class:`~kivy.widget.Widget` ã¨ã»ã¯ã·ã§ã³ã®ãµã¤ãºã¨ä½ç½®ã«ã¤ãã¦ãå¾ã®ã»ã¯ã·ã§ã³ã§æ·±ãæãä¸ãã¾ãã ãã®ã¯ã©ã¹ã¯9è¡ç®ã§å®ç¾©ããããRoot Widget (LoginScreen) ã®ãã¼ã¹ã§ä½¿ç¨ãã¾ãã Kivy Appã®åºæ¬ã¯ã©ã¹ã `å®ç¾©ãã¦ãã` ã¨ããã§ãããã®è¡ã§ã¢ããªã®MyAppã®ååãå¤æ´ããå¿è¦ãããã¾ãã ã¢ããªã±ã¼ã·ã§ã³ãå®è¡ããã«ã¯ãä½¿ç¨ãããªãã¬ã¼ãã£ã³ã°ã·ã¹ãã ã§ã®æç¤ºã«å¾ã£ã¦ãã ããï¼ ã¦ã£ã³ãã¦ããªãµã¤ãºãã¦ã¿ã¦ãã ãããç»é¢ä¸ã®widgetã¯ãä½ãããªãã¦ããã¦ã£ã³ãã¦ã®ãµã¤ãºã«å¿ãã¦èªåèªèº«ãèª¿æ´ãããã¨ãçè§£ã§ãã¾ãã widgetãããã©ã«ãã§ãµã¤ãºã®ãã³ããä½¿ç¨ããããã§ãã GridLayoutã«2ã¤ã®å­ãç®¡çããããã«ã¦ã¼ã¶ã¼åã¨ãã¹ã¯ã¼ãã®ããã«:class:`~kivy.uix.label.Label` ã¨:class:`~kivy.uix.textinput.TextInput`è¿½å ãã¾ãã Windows ä¾ãã° `main.py` ã¨ããååã§ãã­ã¹ããã¡ã¤ã«ã§ä¿å­ããå®è¡ãã¾ãã Androidä¸ã§å®è¡ããã«ã¯è£å®ãã¹ããã¡ã¤ã«ãããã¤ãããã¾ããããã«åèã®ãã :doc:`/guide/packaging-android` ãåç§ãã¦ãã ããã :class:`~kivy.uix.Widget` ã¤ã³ã¹ã¿ã³ã¹(ã«ã¼ãwidgetããªã¼)ãè¿ãã:meth:`~kivy.app.App.build` ãå®è£ãã¾ã ã¯ã©ã¹ã®ã¤ã³ã¹ã¿ã³ã¹ãè¡ãã:meth:`~kivy.app.App.run`ãå¼ã³ã ãã¾ã ãµãã¯ã©ã¹ :class:`~kivy.app.App` ã¯ã©ã¹ 