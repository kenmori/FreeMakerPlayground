<style>
    .fs20 {
        font-size: 20px;
    }
</style>
<h2>FreeMarker</h2>
<#assign isMember = true >

<#import "./macro.ftl" as m >

<#assign list2 = ["a", "b", "c", "d"]>
<#assign list3 = ["b", "d", "a", "c"]>

<#function returnVeiwListOrder>
    <#if isMember == true>
        <#return list2 />
    <#else>
        <#return list3 />
    </#if>
</#function>

<#--${.version}-->
<#--<#list returnVeiwListOrder() as list>-->
    <#--<#switch list>-->
        <#--<#case 'a'><@m.content1 isMember><#if isMember>fs20</#if></@m.content1><#break >-->
        <#--<#case 'b'>-->
            <#--<@m.content2 isMember; x, y, z>-->
                <#--<span>${x} ${y} ${z}</span>-->
            <#--</@m.content2>-->
        <#--<#break>-->
        <#--<#case 'c'><@m.content3 isMember/><#break>-->
        <#--<#case 'd'><@m.content4 isMember/><#break>-->
    <#--</#switch>-->
<#--</#list>-->


<@m.roop; x><li class="${x!''}">fafa</li></@m.roop>

<@m.roop2 count=3; x, last>
    <li class="${x!''}">fafa <#if last>last</#if></li>
</@m.roop2>

<#include '/export.ftl'>


<@m.repeatNested 4; x, half, isLast>
    ${x}, ${half}, <#if isLast>last!!!</#if>
</@m.repeatNested>