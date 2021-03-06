<#macro content1 isMember>
    <div class="<#nested>">content1</div>
</#macro>

<#macro content2 isMember>
<div>content2 <#nested "fafa" 2 90></div>
</#macro>

<#--<#macro content3 isMember>-->
<#--<div>content3</div>-->
<#--</#macro>-->


<#macro content4 isMember>
<div>content4</div>
</#macro>

<#macro content5 isMember>
<div>content5</div>
</#macro>

<#macro roop>
<ul>
	<#nested>
	<#nested>
	<#nested "fafa">
</ul>
</#macro>

<#macro roop2 count>
<ul>
    <#list 0..count as x>
        <#nested x, x==count>
    </#list>
</ul>
</#macro>

<#macro repeatNested count>
    <#list 1..count as x>
        <#nested x, x/2, x==count />
    </#list>
</#macro>
