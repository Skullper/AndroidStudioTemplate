<?xml version="1.0"?>
<recipe>
    <#include "../common/recipe_manifest.xml.ftl" />

    <#include "../common/recipe_simple.xml.ftl" />

    <instantiate from="root/src/app_package/SimpleActivity.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${activityClass}.java" />

    <instantiate from="root/src/app_package/presentation/view/SimpleView.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/presentation/view/${viewName}.java" />

    <instantiate from="root/src/app_package/presentation/presenter/SimplePresenter.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/presentation/presenter/${presenterName}.java" />

    <open file="${escapeXmlAttribute(resOut)}/layout/${layoutName}.xml" />
    <open file="${escapeXmlAttribute(srcOut)}/${activityClass}.java" />
    <open file="${escapeXmlAttribute(srcOut)}/presentation/presenter/${presenterName}.java" />
    <open file="${escapeXmlAttribute(srcOut)}/presentation/view/${viewName}.java" />
</recipe>
