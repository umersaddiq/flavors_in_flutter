import com.android.build.gradle.AppExtension

val android = project.extensions.getByType(AppExtension::class.java)

android.apply {
    flavorDimensions("flavor-type")

    productFlavors {
        create("development") {
            dimension = "flavor-type"
            applicationId = "com.example.del_dev"
            resValue(type = "string", name = "app_name", value = "[DEV] My App")
        }
        create("staging") {
            dimension = "flavor-type"
            applicationId = "com.example.del_stg"
            resValue(type = "string", name = "app_name", value = "[STG] My App")
        }
        create("production") {
            dimension = "flavor-type"
            applicationId = "com.example.del"
            resValue(type = "string", name = "app_name", value = "My App")
        }
    }
}