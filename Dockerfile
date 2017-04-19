FROM ubuntu:14.04
MAINTAINER MarvAmBass

RUN apt-get update; apt-get install -y \
    software-properties-common \
    python-software-properties

RUN echo oracle-java7-installer shared/accepted-oracle-license-v1-1 select true | debconf-set-selections

RUN add-apt-repository -y ppa:webupd8team/java && \
    apt-get update; \
    apt-get install -y oracle-java7-installer; \
    apt-get install -y oracle-java7-set-default; \
    rm -rf /var/cache/oracle-jdk7-installer; \
    apt-get	install -y acl at-spi2-core colord dconf-gsettings-backend dconf-service fontconfig fontconfig-config hicolor-icon-theme libasound2 libasound2-data libatk-bridge2.0-0 libatk1.0-0 libatk1.0-data libatspi2.0-0 libavahi-client3 libavahi-common-data libavahi-common3 libcairo-gobject2 libcairo2 libcanberra0 libcolord1 libcolorhug1 libcups2 libdatrie1 libdbusmenu-glib4 libdbusmenu-gtk4 libdconf1 libexif12 libfontconfig1 libgd3 libgdk-pixbuf2.0-0 libgdk-pixbuf2.0-common libgphoto2-6 libgphoto2-l10n libgphoto2-port10 libgraphite2-3 libgtk-3-0 libgtk-3-bin libgtk-3-common libgtk2.0-0 libgtk2.0-bin libgtk2.0-common libgudev-1.0-0 libgusb2 libharfbuzz0b libice6 libieee1284-3 libjasper1 libjbig0 libjpeg-turbo8 libjpeg8 liblcms2-2 libltdl7 libogg0 libpango-1.0-0 libpangocairo-1.0-0 libpangoft2-1.0-0 libpixman-1-0 libpolkit-agent-1-0 libpolkit-backend-1-0 libpolkit-gobject-1-0 libsane libsane-common libsm6 libstartup-notification0 libtdb1 libthai-data libthai0 libtiff5 libusb-1.0-0 libv4l-0 libv4lconvert0 libvorbis0a libvorbisfile3 libvpx1 libwayland-client0 libwayland-cursor0 libx11-6 libx11-data libx11-xcb1 libxau6 libxcb-render0 libxcb-shm0 libxcb-util0 libxcb1 libxcomposite1 libxcursor1 libxdamage1 libxdmcp6 libxext6 libxfixes3 libxi6 libxinerama1 libxkbcommon0 libxpm4 libxrandr2 libxrender1 libxt6 libxtst6 policykit-1 sound-theme-freedesktop xul-ext-ubufox ; \
    wget https://ftp.mozilla.org/pub/firefox/releases/51.0.1/linux-x86_64/en-US/firefox-51.0.1.tar.bz2 ; \
    tar -xjvf firefox-51.0.1.tar.bz2 ; \
    rm firefox-51.0.1.tar.bz2 ; \
    mv firefox/ /opt/ ; \
    ln -s /opt/firefox/firefox /usr/bin/firefox
    
    
