import org.gradle.api.tasks.Delete

allprojects {
    repositories {
        google()
        mavenCentral()
    }
}

rootProject.buildDir = file("../build")

subprojects {
    buildDir = file("${rootProject.buildDir}/${project.name}")
    evaluationDependsOn(":app")

    configurations.all {
        resolutionStrategy.eachDependency {
            if (requested.group == "com.android.support" &&
                !requested.name.contains("multidex")
            ) {
                useVersion("27.1.1")
            }
        }
    }
}

// "clean" taskini ro’yxatga olish
tasks.register<Delete>("clean") {
    delete(rootProject.buildDir)
}
