<tfoot>
	<tr>
		<td></td>
		<td></td>

		<#if group.type != "GNSS1D" && group.type != "GNSS2D" && group.type != "GNSS3D">
			<td></td>
			<td></td>
		</#if>

		<#if group.type == "GNSS1D" || group.type == "GNSS2D" || group.type == "GNSS3D">
			<#if group.type == "GNSS2D" || group.type == "GNSS3D">
				<td></td>
				<td></td>
			</#if>
			<#if group.type == "GNSS1D" || group.type == "GNSS3D">
				<td></td>
			</#if>
		<#else>
			<td></td>
		</#if>
		
		<#if group.type == "GNSS1D" || group.type == "GNSS2D" || group.type == "GNSS3D">
			<#if group.type == "GNSS2D" || group.type == "GNSS3D">
				<td></td>
				<td></td>
			</#if>
			<#if group.type == "GNSS1D" || group.type == "GNSS3D">
				<td></td>
			</#if>
		<#else>
			<td></td>
		</#if>
		
		<#if group.type == "GNSS1D" || group.type == "GNSS2D" || group.type == "GNSS3D">
			<#if group.type == "GNSS2D" || group.type == "GNSS3D">
				<td></td>
				<td></td>
			</#if>
			<#if group.type == "GNSS1D" || group.type == "GNSS3D">
				<td></td>
			</#if>
		<#else>
			<td></td>
		</#if>
		
		<#if group.type == "GNSS1D" || group.type == "GNSS2D" || group.type == "GNSS3D">
			<#if group.type == "GNSS2D" || group.type == "GNSS3D">
				<td></td>
				<td></td>
			</#if>
			<#if group.type == "GNSS1D" || group.type == "GNSS3D">
				<td></td>
			</#if>

			<#if group.type == "GNSS2D" || group.type == "GNSS3D">
				<td>${group.redundancy_y?string[df_statistic]}</td>
				<td>${group.redundancy_x?string[df_statistic]}</td>
			</#if>
			<#if group.type == "GNSS1D" || group.type == "GNSS3D">
				<td>${group.redundancy_z?string[df_statistic]}</td>
			</#if>
			
			<#if group.type == "GNSS2D" || group.type == "GNSS3D">
				<td>${group.max_gross_error_y?string[df_length_residual]}</td>
				<td>${group.max_gross_error_x?string[df_length_residual]}</td>
			</#if>
			<#if group.type == "GNSS1D" || group.type == "GNSS3D">
				<td>${group.max_gross_error_z?string[df_length_residual]}</td>
			</#if>
			
			<#if group.type == "GNSS2D" || group.type == "GNSS3D">
				<td></td>
				<td></td>
			</#if>
			<#if group.type == "GNSS1D" || group.type == "GNSS3D">
				<td></td>
			</#if>
			
			<td></td>
			
			<#if group.type == "GNSS2D" || group.type == "GNSS3D">
				<td></td>
				<td></td>
			</#if>
			<#if group.type == "GNSS1D" || group.type == "GNSS3D">
				<td></td>
			</#if>
		<#else>
			<td></td>
			<td>${group.redundancy?string[df_statistic]}</td>
			<td>${group.max_gross_error?string[apply_angle_unit?then(df_angle_residual, df_length_residual)]}</td>
			<td></td>
			<td></td>
			<td></td>
		</#if>
		
		<td>${group.omega?string[df_statistic]}</td>
		<td></td>
		<td></td>
		
		<td></td>
		<td></td>
		
		<td><span class="${group.significant?then('rejected', 'accepted')}"><#outputformat "plainText">${group.significant?then('&#x2718;', '&#x2714;')}</#outputformat></span></td>
	</tr>
</tfoot>