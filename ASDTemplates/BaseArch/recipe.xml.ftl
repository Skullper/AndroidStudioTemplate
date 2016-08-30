<?xml version="1.0"?>
<recipe>
<#if useMultiDex>
    <dependency mavenUrl="com.android.support:multidex:1.0.1" />
</#if>
	<dependency mavenUrl="com.jakewharton:butterknife:${butterKnifeVer}"/>
    <merge from="root/build.gradle.ftl"
             to="${escapeXmlAttribute(projectOut)}/build.gradle" />

    <merge from="root/AndroidManifest.xml.ftl"
             to="${escapeXmlAttribute(manifestOut)}/AndroidManifest.xml" />
			 
    <instantiate from="root/src/app_package/ApplicationWrapper.java.ftl" to="${escapeXmlAttribute(srcOut)}/${classApplication}.java"/>

    <instantiate from="root/src/app_package/base_arch/activity/SimpleActivity.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/base_arch/activity/${activityClass}.java" />

    <instantiate from="root/src/app_package/base_arch/fragment/BlankFragment.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/base_arch/fragment/${className}.java" />

    <instantiate from="root/src/app_package/base_arch/presentation/view/SimpleView.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/base_arch/presentation/view/${viewName}.java" />

    <instantiate from="root/src/app_package/base_arch/presentation/presenter/SimplePresenter.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/base_arch/presentation/presenter/${presenterName}.java" />

    <instantiate from="root/src/app_package/utils/NotificationDialog.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/utils/NotificationDialog.java" />

    <instantiate from="root/src/app_package/utils/PrefConstantaz.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/utils/PrefConstantaz.java" />

    <instantiate from="root/src/app_package/utils/SPrefs.java.ftl"
               to="${escapeXmlAttribute(srcOut)}/utils/SPrefs.java" />

    <open file="${escapeXmlAttribute(srcOut)}/base_arch/fragment/${className}.java" />
    <open file="${escapeXmlAttribute(srcOut)}/base_arch/activity/${activityClass}.java" />
    <open file="${escapeXmlAttribute(srcOut)}/base_arch/presentation/presenter/${presenterName}.java" />
    <open file="${escapeXmlAttribute(srcOut)}/base_arch/presentation/view/${viewName}.java" />
</recipe>
