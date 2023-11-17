FROM node:20

ENV ANDROID_HOME /opt/android
ENV ANDROID_SDK_ROOT /opt/android
ENV PATH $PATH:$ANDROID_SDK_ROOT/cmdline-tools/latest/bin

RUN apt-get update && \
    apt-get install -y openjdk-17-jdk && \
    apt-get install -y gradle

WORKDIR /opt/android

RUN wget -O tools.zip https://dl.google.com/android/repository/commandlinetools-linux-10406996_latest.zip && \
    unzip tools.zip && rm tools.zip && \
    cd cmdline-tools && mkdir latest && ls | grep -v latest | xargs mv -t latest

RUN mkdir /root/.android && touch /root/.android/repositories.cfg && \
    while true; do echo 'y'; sleep 2; done | sdkmanager "platform-tools" && \
    while true; do echo 'y'; sleep 2; done | sdkmanager "platforms;android-34" && \
    while true; do echo 'y'; sleep 2; done | sdkmanager "platforms;android-33" && \
    while true; do echo 'y'; sleep 2; done | sdkmanager "build-tools;34.0.0" && \
    while true; do echo 'y'; sleep 2; done | sdkmanager "build-tools;33.0.2" && \
    while true; do echo 'y'; sleep 2; done | sdkmanager "build-tools;33.0.1" && \
    while true; do echo 'y'; sleep 2; done | sdkmanager "build-tools;33.0.0"
