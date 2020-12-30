FROM rianby64/vscode

RUN yum install -y \
    qt-creator.x86_64 \
    qt5-qt3d-examples.x86_64 \
    qt5-qtbase-examples.i686 \
    qt5-qtbase-examples.x86_64 \
    qt5-qtcanvas3d-examples.x86_64 \
    qt5-qtcharts-examples.x86_64 \
    qt5-qtconnectivity-examples.x86_64 \
    qt5-qtdatavis3d-examples.x86_64 \
    qt5-qtdeclarative-examples.x86_64 \
    qt5-qtenginio-examples.x86_64 \
    qt5-qtgamepad-examples.x86_64 \
    qt5-qtlocation-examples.x86_64 \
    qt5-qtmultimedia-examples.x86_64 \
    qt5-qtnetworkauth-examples.x86_64 \
    qt5-qtquickcontrols-examples.x86_64 \
    qt5-qtquickcontrols2-examples.x86_64 \
    qt5-qtremoteobjects-examples.i686 \
    qt5-qtremoteobjects-examples.x86_64 \
    qt5-qtscript-examples.x86_64 \
    qt5-qtscxml-examples.x86_64 \
    qt5-qtsensors-examples.x86_64 \
    qt5-qtserialbus-examples.x86_64 \
    qt5-qtserialport-examples.x86_64 \
    qt5-qtspeech-examples.x86_64 \
    qt5-qtsvg-examples.x86_64 \
    qt5-qttools-examples.i686 \
    qt5-qttools-examples.x86_64 \
    qt5-qtvirtualkeyboard-examples.x86_64 \
    qt5-qtwayland-examples.x86_64 \
    qt5-qtwebchannel-examples.x86_64 \
    qt5-qtwebengine-examples.x86_64 \
    qt5-qtwebsockets-examples.x86_64 \
    qt5-qtwebview-examples.x86_64 \
    qt5-qtxmlpatterns-examples.x86_64

USER rianby64

WORKDIR $HOME

CMD [ "bash" ]