<#if !(perModuleRepositories??) || perModuleRepositories>
buildscript {
    repositories {
        jcenter()
    }
    dependencies {
        classpath 'com.android.tools.build:gradle:${gradlePluginVersion}'
    }
}
allprojects {
    repositories {
        jcenter()
    }
}
</#if>

apply plugin: 'com.android.application'

android {

    defaultConfig {
        applicationId "${packageName}"
	<#if useMultiDex>
	multiDexEnabled true
	</#if>
    }
}

dependencies {
    <#if dependencyList?? >
    <#list dependencyList as dependency>
    compile '${dependency}'
    </#list>
    </#if>
}
