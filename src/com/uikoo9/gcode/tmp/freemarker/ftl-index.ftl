<\#include "/com/uikoo9/util/view/common/inc.ftl"/>

<@bslist qpage=qpage>
	<@bstable>
		<thead>
			<tr>
		        <th><input type="checkbox" class="allcheck"/></th>
				#foreach($col in $cols)#if($col.get("colname") != "cuser_name" && $col.get("colname") != "cuser_id")<th>$col.get("remarks")</th>#end

				#end
				
				<th>操作</th>
			</tr>
		</thead>
		<tbody>
		    <#list qpage.list?if_exists as row>
			    <tr data="id:${row.id};">
			        <td><input type="checkbox" class="onecheck"/></td>
				    #foreach($col in $cols)#if($col.get("colname") != "cuser_name" && $col.get("colname") != "cuser_id")<td>${(row.$col.get("colname"))!}</td>#end
				    
					#end<td>
			        	<@bsbutton size='xs' icon='pencil' class='editbtn'/>
			        	<@bsbutton size='xs' icon='remove' class='delbtn'/>
			        </td>
			    </tr>
		    </#list>
		</tbody>
	</@bstable>
</@bslist>