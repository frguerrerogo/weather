import com.android.build.gradle.AppExtension

val android = project.extensions.getByType(AppExtension::class.java)

android.apply {
    flavorDimensions("flavor-type")

    productFlavors {
        create("dev") {
            dimension = "flavor-type"
            applicationId = "com.frguerrerogo.weather.dev"
            resValue(type = "string", name = "app_name", value = "Weather Dev")
        }
        create("prod") {
            dimension = "flavor-type"
            applicationId = "com.frguerrerogo.weather"
            resValue(type = "string", name = "app_name", value = "Weather")
        }
    }
}