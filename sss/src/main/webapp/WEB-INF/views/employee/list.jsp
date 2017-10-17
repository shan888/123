<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="/style/basic_layout.css" rel="stylesheet" type="text/css">
<link href="/style/common_style.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="/js/jquery/jquery.js"></script>
<script type="text/javascript" src="/js/plugins/artDialog/jquery.artDialog.source.js?skin=blue"></script>
<script type="text/javascript" src="/js/commonAll.js"></script>
<title>WMS-员工管理</title>
<style>
	.alt td{ background:black !important;}
</style>
</head>
<body>
	<jsp:include page="/WEB-INF/views/common/common_msg.jsp"/>
	<s:form id="searchForm" namespace="/" action="employee" method="post">

		<div id="container">
			<div class="ui_content">
				<div class="ui_text_indent">
					<div id="box_border">
						<div id="box_top">搜索</div>
						<div id="box_center">
							姓名/邮箱
							<s:textfield name="qo.keyword" class="ui_input_txt02" />
							所属部门
							<s:select name="qo.dept_id" list="#depts" listKey="id" listValue="name"
									  headerKey="-1" headerValue="全部" class="ui_select01"/>
						</div>
						<div id="box_bottom">
							<input type="submit" value="提交" class="ui_input_btn01"/>
							<s:url namespace="/" action="employee_input" var="#inputUrl"/>
							<input type="button" value="新增" class="ui_input_btn01 btn_input"
								   data-url="<s:property value='#inputUrl'/>"/>
							<input type="button" value="批量删除" class="ui_input_btn01 btn_batchDelete"
								   data-url="<s:url namespace="/" action="employee_batchDelete"/>"/>
						</div>
					</div>
				</div>
			</div>
			<div class="ui_content">
				<div class="ui_tb">
					<table class="table" cellspacing="0" cellpadding="0" width="100%" align="center" border="0">
						<tr>
							<th width="30"><input type="checkbox" class="all" /></th>
							<th>编号</th>
							<th>用户名</th>
							<th>EMAIL</th>
							<th>年龄</th>
							<th>所属部门</th>
							<th>角色</th>
							<th>操作</th>
						</tr>
						<tbody>
							<s:iterator value="#pageResult.listData">
								<tr>
									<td><input type="checkbox" name="IDCheck" class="acb" data-id="<s:property value="id"/>"/></td>
									<td><s:property value="id"/></td>
									<td><s:property value="name"/></td>
									<td><s:property value="email"/></td>
									<td><s:property value="age"/></td>
									<td><s:property value="dept.name"/></td>
									<td>[]</td>
									<td>
										<s:a namespace="/" action="employee_input">修改
											<s:param name="employee.id" value="id"/>
											<s:param name="qo.currentPage" value="qo.currentPage"/>
										</s:a>|
										<s:url namespace="/" action="employee_delete" var="#deleteUrl">
											<s:param name="employee.id" value="id"/>
										</s:url>
										<a href="javascript:;" class="btn_delete" data-url="<s:property value='#deleteUrl'/>">删除</a>
									</td>
								</tr>
							</s:iterator>
						</tbody>
					</table>
				</div>
				<jsp:include page="/WEB-INF/views/common/common_page.jsp"/>
			</div>
		</div>
	</s:form>
</body>
</html>
