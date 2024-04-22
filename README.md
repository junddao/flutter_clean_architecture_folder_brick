# clean_architecture_folders_miro

A brick to create Clean Architecture Folders.

_Generated by [mason][1] 🧱_

## Getting Started 🚀

```sh
 mason make clean_architecture_folders --name home
```

## Variables ✨

| Variable | Description   | Required | Type     |
| -------- | ------------- | -------- | -------- |
| `name`   | The App Title | `Yes`    | `string` |

## Output 📦

Generated folder architecture

```
📦lib
 ┣ 📂core
 ┃ ┣ 📂error
 ┃ ┃ ┣ 📜exceptions.dart
 ┃ ┃ ┗ 📜failure.dart
 ┃ ┣ 📂model
 ┃ ┣ 📂presentation
 ┃ ┣ 📂provider
 ┃ ┣ 📂resources
 ┃ ┣ 📂routes
 ┃ ┣ 📂themes
 ┃ ┣ 📜app_core.dart
 ┃ ┗ 📜app_strings.dart
 ┣ 📂data
 ┃ ┣ 📂datasources
 ┃ ┃ ┣ 📂local
 ┃ ┃ ┗ 📂remote
 ┃ ┣ 📂models
 ┃ ┗ 📂repositories
 ┣ 📂domain
 ┃ ┣ 📂entities
 ┃ ┣ 📂repositories
 ┃ ┗ 📂usecases
 ┗ 📂presentation
 ┃ ┣ 📂blocs
 ┃ ┣ 📂pages
 ┃ ┗ 📂widgets
 ┣ 📜app.dart
 ┣ 📜flavors.dart
 ┣ 📜index.dart
 ┣ 📜main_dev.dart
 ┣ 📜main_prod.dart
 ┣ 📜main.dart

```

[1]: https://github.com/junddao/clean_architecture_base.git

## execute after install this brick

### 1. add multiDexEnable flag in build.gradle (app side)

![alt text](image.png)

### 2. set your firebase setting

```gradle

    sourceSets {
        main.java.srcDirs += 'src/main/kotlin'
    }

    defaultConfig {
        // TODO: Specify your own unique Application ID (https://developer.android.com/studio/build/application-id.html).
        applicationId "com.example.dongnesosik"
        // You can update the following values to match your application needs.
        // For more information, see: https://docs.flutter.dev/deployment/android#reviewing-the-gradle-build-configuration.
        minSdkVersion flutter.minSdkVersion
        targetSdkVersion flutter.targetSdkVersion
        versionCode flutterVersionCode.toInteger()
        versionName flutterVersionName
        multiDexEnabled true
    }

```

### 3. create flavor with firebase files

- script.sh -> 5

### 4. create icon file for app

- script.sh -> 6
