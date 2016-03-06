
<ul>
	<#assign name = "morita">
	${name}
	<#assign list = ['morita','kenji'] />

	<#list list as item>
		<li> ${item} </li>
	</#list>
</ul>
<#assign fafa = "faffa">
