<#if rotation_matrix??>
	<#assign matrix = rotation_matrix>
	<#include "i18n/matrix.ftlh" parse=true>
	<section>
		<h2><#outputformat "plainText">${matrix_type_map['rotation_matrix']}</#outputformat></h2>
		<#include "matrix_table.ftlh" parse=true>
	</section>
</#if>