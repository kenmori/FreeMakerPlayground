
<#assign lists = ['kuki', 'kawasaki', 'ikejiriohhashi'] />
<#list lists as list>
  <p>${list?counter} : ${list}
</#list>
