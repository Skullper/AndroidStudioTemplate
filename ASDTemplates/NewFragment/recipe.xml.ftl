<?xml version="1.0"?>
<recipe>

    <#if includeLayout>
        <instantiate from="root/res/layout/fragment_blank.xml.ftl"
                       to="${escapeXmlAttribute(resOut)}/layout/${escapeXmlAttribute(fragmentName)}.xml" />

        <open file="${escapeXmlAttribute(resOut)}/layout/${escapeXmlAttribute(fragmentName)}.xml" />
    </#if>

    <instantiate from="root/src/app_package/fragment/BlankFragment.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/fragment/${className}.java" />
    <instantiate from="root/src/app_package/fragment/presentation/presenter/SimplePresenter.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/fragment/presentation/presenter/${presenterName}.java" />
    <instantiate from="root/src/app_package/fragment/presentation/view/SimpleView.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/fragment/presentation/view/${viewName}.java" />

    <open file="${escapeXmlAttribute(srcOut)}/fragment/${className}.java" />
    <open file="${escapeXmlAttribute(srcOut)}/fragment/presentation/presenter/${presenterName}.java" />
    <open file="${escapeXmlAttribute(srcOut)}/fragment/presentation/view/${viewName}.java" />
</recipe>
