Þ          ü               Ü  $   Ý  U        X  >   v      µ  8   Ö  F     J   V  Ð   ¡  ;   r  &   ®  (   Õ     þ          3     P  E  e  (   «  (   Ô  6   ý     4      E  ¸   f       z   -  ¥   ¨     N	  Í  m	  (   ;  c   d  *   È  P   ó  X   D  c     W     U   Y  I  ¯  j   ù  D   d  @   ©  1   ê  -     *   J  ?   u  ¦  µ  `   \  `   ½  O     !   n  Y     %  ê       °   )  Ö   Ú  (   ±   3d monkey demo is also fun too see:: A video to see what we were doing with it: http://www.youtube.com/watch?v=NVM09gaX6pQ Add APT key for vontaene.de:: Add APT sources for Gstreamer 1.0 in `/etc/apt/sources.list`:: Change the default screen to use Check :ref:`environment` to see all the possible values. For more information about configuring Kivy, see :ref:`configure kivy` Go to your `kivy/examples` folder, you'll have tons of demo you could try. If you are using the official Raspberry Pi touch display, you need to configure Kivy to use it as an input source. To do this, edit the file ``~/.kivy/config.ini`` and go to the ``[input]`` section. Add this: Install Cython from sources (debian package are outdated):: Install Kivy globally on your system:: Install a new enough version of Cython:: Install pip from source:: Install the dependencies:: Installation on Raspberry Pi KivyPie distribution KivyPie is a compact and lightweight Raspbian based distribution that comes with Kivy installed and ready to run. It is the result of applying the manual installation steps described above, with a few more extra tools. You can download the image from http://kivypie.mitako.eu/kivy-download.html and boot it on a Raspberry PI. Manual installation (On Raspbian Jessie) Manual installation (On Raspbian Wheezy) Or build and use kivy inplace (best for development):: Running the demo Using Official RPi touch display We made few games using GPIO / physical input we got during Pycon 2013: a button and a tilt. Checkout the https://github.com/kivy/piki. You will need to adapt the GPIO pin in the code. Where to go ? You can install Kivy manually, or you can download and boot KivyPie on the Raspberry Pi. Both options are described below. You can set an environment variable named `KIVY_BCM_DISPMANX_ID` in order to change the display used to run Kivy. For example, to force the display to be HDMI, use:: You could start the showcase:: Project-Id-Version: Kivy 1.10.0
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
 3Dã¢ã³ã­ã¼ã®ãã¢ã¯è¦³ãã«ã¯:" ç§ãã¡ãä½ããã¦ããã®ããç¥ããããªï¼http://www.youtube.com/watch?v=NVM09gaX6pQ vontaene.deã«APTã­ã¼ãè¿½å ãã¾ã: ã/etc/apt/sources.listãã«Gstreamer 1.0ç¨ã®APTã½ã¼ã¹ãè¿½å ãã¾ã: Change the default screen to use(ããã©ã«ãã®ã¹ã¯ãªã¼ã³ãå¤æ´ããã«ã¯) ãã¹ã¦ã®å¯è½ãªå¤ãè¡¨ç¤ºããã«ã¯ã :ref:`environment`  ãåç§ãã¦ãã ããã Kivyã®è¨­å®ã®è©³ç´°ã«ã¤ãã¦ã¯ã:ref:`configure  ãåç§ãã¦ãã ããã ãkivy/examplesããã©ã«ãã«ç§»åããã¨ãå¤ãã®ãã¢ãè©¦ãã¾ãã å¬å¼ã®Raspberry Piã¿ãããã£ã¹ãã¬ã¤ãä½¿ç¨ãã¦ããå ´åã¯ãKivyãå¥åã½ã¼ã¹ã¨ãã¦ä½¿ç¨ããããã«è¨­å®ããå¿è¦ãããã¾ãã ãããè¡ãã«ã¯ãã~/.kivy/config.iniããã¡ã¤ã«ãç·¨éããã[input]ãã»ã¯ã·ã§ã³ã«ç§»åãã¾ãã ãããè¿½å ãã¦ãã ãã: ã½ã¼ã¹ããCythonãã¤ã³ã¹ãã¼ã«ãã¾ãï¼debianããã±ã¼ã¸ã¯å¤ããªã£ã¦ãã¾ãï¼: ã·ã¹ãã ã«Kivyãã°ã­ã¼ãã«ã«ã¤ã³ã¹ãã¼ã«ãã¾ã: æ°ãããã¼ã¸ã§ã³ã®Cythonãã¤ã³ã¹ãã¼ã«ãã¾ã: ã½ã¼ã¹ããpipãã¤ã³ã¹ãã¼ã«ãã¾ã: ä¾å­é¢ä¿ãã¤ã³ã¹ãã¼ã«ãã¾ãï¼ Installation on Raspberry Pi(ç¿»è¨³æ¸ã¿) KivyPie distribution(KivyPie ãã£ã¹ããªãã¥ã¼ã·ã§ã³) KivyPieã¯ãKivyãã¤ã³ã¹ãã¼ã«ããå®è¡å¯è½ãªç¶æã§æä¾ãããã³ã³ãã¯ãã§è»½éã®Raspbianãã¼ã¹ã®ãã£ã¹ããªãã¥ã¼ã·ã§ã³ã§ããä¸è¨ã®æåã¤ã³ã¹ãã¼ã«æé ãé©ç¨ããããã«ããã¤ãã®ãã¼ã«ãè¿½å ããçµæã§ããhttp://kivypie.mitako.eu/kivy-download.htmlããç»åããã¦ã³ã­ã¼ãããRaspberry PIã§èµ·åãããã¨ãã§ãã¾ãã Manual installation (On Raspbian Jessie)(æåã§ã¤ã³ã¹ãã¼ã«ï¼Raspbian Jessieä¸ã§ï¼) Manual installation (On Raspbian Wheezy)(æåã§ã¤ã³ã¹ãã¼ã«ï¼Raspbian Wheezyä¸ã§ï¼) ã¾ãã¯Kivy inplaceãæ§ç¯ãã¦ä½¿ç¨ãã¾ãï¼éçºã«æé©ã§ãï¼: Running the demo(ãã¢ã®å®è¡) Using Official RPi touch display(RPi ã®å¬å¼ã¿ãããã£ã¹ãã¬ã¤ãä½¿ç¨ãã) ç§ãã¡ã¯ãPycon 2013ã®éã«å¾ãGPIO /ç©ççãªå¥åãä½¿ç¨ãã¦ããã¿ã³ã¨å¾ããä½¿ã£ãã²ã¼ã ãã»ã¨ãã©ä½ã£ã¦ãã¾ããã§ããã https://github.com/kivy/pikiãç¢ºèªãã¦ãã ããã GPIOãã³ãã³ã¼ãã«é©åãããå¿è¦ãããã¾ãã Where to go ?(ã©ãã¸) æåã§Kivyãã¤ã³ã¹ãã¼ã«ããããKivyPieããã¦ã³ã­ã¼ããã¦Raspberry Piã§èµ·åãã§ãã¾ããã©ã¡ãã®ãªãã·ã§ã³ãä»¥ä¸ã§èª¬æãã¾ãã Kivyãå®è¡ããããã®è¡¨ç¤ºãå¤æ´ããã«ã¯ã `KIVY_BCM_DISPMANX_ID` ã¨ããç°å¢å¤æ°ãè¨­å®ãã¾ãããã¨ãã°ããã£ã¹ãã¬ã¤ãHDMIã«ããã«ã¯ãæ¬¡ã®ããã«å¥åãã¾ã:: ã·ã§ã¼ã±ã¼ã¹ãéå§ã§ãã¾ã: 