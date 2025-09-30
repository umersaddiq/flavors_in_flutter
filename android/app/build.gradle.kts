plugins {
    id("com.android.application")
    id("kotlin-android")
    id("dev.flutter.flutter-gradle-plugin")
}

android {
    namespace = "com.example.del"
    compileSdk = flutter.compileSdkVersion
    ndkVersion = flutter.ndkVersion

    compileOptions {
        sourceCompatibility = JavaVersion.VERSION_11
        targetCompatibility = JavaVersion.VERSION_11
    }

    kotlinOptions {
        jvmTarget = JavaVersion.VERSION_11.toString()
    }

    defaultConfig {
        applicationId = "com.example.del"
        minSdk = flutter.minSdkVersion
        targetSdk = flutter.targetSdkVersion
        versionCode = flutter.versionCode
        versionName = flutter.versionName
    }

    buildTypes {
        release {
            signingConfig = signingConfigs.getByName("debug")
        }
    }

    android.apply {
        flavorDimensions("app")

        productFlavors {
            create("dev") {
                dimension = "app"
                applicationIdSuffix = ".dev"
                versionNameSuffix = "-dev"
//                applicationId = "com.codewithandrea.flutter_ship_app.dev"
                resValue(type = "string", name = "app_name", value = "Flavors Dev")
            }
            create("staging") {
                dimension = "app"
                applicationIdSuffix = ".staging"
                versionNameSuffix = "-staging"
//                applicationId = "com.codewithandrea.flutter_ship_app.stg"
                resValue(type = "string", name = "app_name", value = "Flavors Staging")
            }
            create("prod") {
                dimension = "app"
//                applicationId = "com.codewithandrea.flutter_ship_app"
                resValue(type = "string", name = "app_name", value = "Flavors")
            }
        }
    }
}

flutter {
    source = "../.."
}
