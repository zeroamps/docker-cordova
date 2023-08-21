FROM beevelop/cordova:latest

ENV ANDROID_HOME=/opt/android
RUN while true; do echo 'y'; sleep 2; done | sdkmanager "build-tools;32.0.0"
RUN while true; do echo 'y'; sleep 2; done | sdkmanager "build-tools;33.0.0"
RUN while true; do echo 'y'; sleep 2; done | sdkmanager "build-tools;33.0.1"
RUN while true; do echo 'y'; sleep 2; done | sdkmanager "build-tools;33.0.2"
RUN while true; do echo 'y'; sleep 2; done | sdkmanager "build-tools;34.0.0"
