FROM beevelop/android-nodejs

ENV CORDOVA_VERSION=12.0.0 \
    ANDROID_HOME=/opt/android

RUN while true; do echo 'y'; sleep 2; done | sdkmanager "build-tools;33.0.0" && \
    while true; do echo 'y'; sleep 2; done | sdkmanager "build-tools;33.0.1" && \
    while true; do echo 'y'; sleep 2; done | sdkmanager "build-tools;33.0.2" && \
    npm i -g --unsafe-perm cordova@${CORDOVA_VERSION} && \
    rm -rf /opt/android/licenses
