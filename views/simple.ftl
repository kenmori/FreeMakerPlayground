<h1>${name}</h1>

<hr/>
<#include "/motd.ftl" />
<#assign fafa = "<img src=\"fafafafafa\" style=\"faeee\"><br><br>ffafdfefaafafafafafafafafa">
<#if fafa?contains("img")>
  <div>${fafa?replace('<img.+<br>','','r')}</div>
<#else>
  <div>${fafa}</div>
</#if>

<#include "/export.ftl" />



<h2>1603</h2>


<div>
  ${"kyounokanji"?keep_after("ka")}
</div>
