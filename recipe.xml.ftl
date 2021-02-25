<?xml version="1.0"?>
<recipe>

    <!-- Fragment Resource -->
    <instantiate from="res/layout/fragment.xml.ftl"
                   to="${escapeXmlAttribute(resOut)}/layout/${fragmentLayout}.xml" />

    <open file="${escapeXmlAttribute(resOut)}/layout/${fragmentLayout}.xml" />

    <!-- Fragment Class -->
    <instantiate from="src/app_package/Fragment.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${fragmentClass}Fragment.kt" />

    <open file="${escapeXmlAttribute(srcOut)}/${fragmentClass}Fragment.kt" />

    <!-- Fragment ViewModel -->
    <instantiate from="src/app_package/ViewModel.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${fragmentClass}ViewModel.kt" />

    <open file="${escapeXmlAttribute(srcOut)}/${fragmentClass}ViewModel.kt" />

</recipe>