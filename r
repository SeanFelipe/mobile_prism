#!/bin/bash
title run-Appiumario

export APP_PATH=$HOME/p/Kickstarter/android-oss/app/build/outputs/apk/external/debug/app-external-debug.apk
export APPIUM_APK=$APP_PATH

cucumber features/Kickstarter/Kickstarter.feature
