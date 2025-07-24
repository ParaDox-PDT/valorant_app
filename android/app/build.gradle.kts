plugins {
    id("com.android.application")
    id("org.jetbrains.kotlin.android")
    id("dev.flutter.flutter-gradle-plugin")
    id("com.google.gms.google-services")
    id("com.google.firebase.firebase-perf")
    id("com.google.firebase.crashlytics")
}

import java.io.FileInputStream
        import java.util.Properties

// local.properties dan Flutter-related parametrlarni o‘qiymiz
val localProperties = Properties().apply {
    val localPropertiesFile = rootProject.file("local.properties")
    if (localPropertiesFile.exists()) {
        localPropertiesFile.reader(Charsets.UTF_8).use { load(it) }
    }
}

// Flutter tomonidan generate qilingan versionCode va versionName
val flutterVersionCode = localProperties.getProperty("flutter.versionCode")?.toInt() ?: 1
val flutterVersionName = localProperties.getProperty("flutter.versionName") ?: "1.0"

// Flutter-generated targetSdk va ndkVersion
val flutterTargetSdk = localProperties.getProperty("flutter.targetSdkVersion")?.toInt() ?: 33
val flutterNdkVersion = localProperties.getProperty("flutter.ndkVersion")

// Key.properties faylni o‘qib, Properties obyektiga yuklaymiz
val keystorePropertiesFile = rootProject.file("key.properties")
val keystoreProperties = Properties().apply {
    load(FileInputStream(keystorePropertiesFile))
}

val signingStorePassword: String = keystoreProperties.getProperty("storePassword")
val signingKeyAlias:      String = keystoreProperties.getProperty("keyAlias")
val signingKeyPassword:   String = keystoreProperties.getProperty("keyPassword")
println("🔒 Loaded signing config from android/key.properties")

android {
    namespace = "valorant_guide.uz"
    compileSdk = 35

    defaultConfig {
        applicationId = "valorant_guide.uz"
        minSdk = 21
        targetSdk = 35
        versionCode = flutterVersionCode
        versionName = flutterVersionName
        multiDexEnabled = true

        setProperty("archivesBaseName", "valorant_${versionName}_(${versionCode})")
    }

    compileOptions {
        sourceCompatibility = JavaVersion.VERSION_1_8
        targetCompatibility = JavaVersion.VERSION_1_8

        // Java 8 desugaring yoqiladi
        isCoreLibraryDesugaringEnabled = true
    }

    kotlinOptions {
        jvmTarget = "1.8"
    }

    sourceSets {
        // Kotlin fayllarini default papkadan tashqari ham qabul qilayapmiz
        getByName("main").java.srcDirs("src/main/kotlin")
    }

    signingConfigs {
        create("release") {
            val keystoreFile = file("keystore/key.jks")
            if (!keystoreFile.exists()) {
                throw GradleException("❌ Keystore file not found: $keystoreFile")
            }
            storeFile     = keystoreFile
            storePassword = signingStorePassword
            keyAlias      = signingKeyAlias
            keyPassword   = signingKeyPassword
        }
    }

    buildTypes {
        getByName("release") {
            isMinifyEnabled = true
            isShrinkResources = true
            proguardFiles(
                getDefaultProguardFile("proguard-android.txt"),
                "proguard-rules.pro"
            )
            // Agar key.properties dan release uchun signingConfigs to‘g‘ri kelmasa,
            // bunda debug bilan ham ishga tushirish mumkin:
            signingConfig = signingConfigs.getByName("release")
            ndk {
                debugSymbolLevel = "FULL"
            }
        }
    }
}

flutter {
    source = "../.."
}

dependencies {
    implementation("androidx.multidex:multidex:2.0.1")
    // Java 8 desugaring uchun kutubxona
    coreLibraryDesugaring("com.android.tools:desugar_jdk_libs:2.1.4")
}
