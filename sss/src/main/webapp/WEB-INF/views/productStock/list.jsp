<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="/style/basic_layout.css" rel="stylesheet" type="text/css">
<link href="/style/common_style.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="/js/jquery/jquery.js"></script>
<script type="text/javascript" src="/js/plugins/artDialog/jquery.artDialog.source.js?skin=blue"></script>
<script type="text/javascript" src="/js/commonAll.js"></script>

<title>PSS-库存管理</title>
<style>
	.alt td{ background:black !important;}
</style>
</head>
<body>
	<jsp:include page="../common/common_msg.jsp"/>
	<s:form id="searchForm" action="productStock" method="post">
		<div id="container">
			<div class="ui_content">
				<div class="ui_text_indent">
					<div id="box_border">
						<div id="box_top">搜索</div>
						<div id="box_center">
							货品
							<s:textfield name="qo.keyword" class="ui_input_txt02" placeholder="货品编码/货品名称"/>
							仓库
							<s:select name="qo.depotId" list="#depots" listKey="id" listValue="name"
									  headerKey="-1" headerValue="全部" class="ui_select01"/>
							品牌
							<s:select name="qo.brandId" list="#brands" listKey="id" listValue="name"
									  headerKey="-1" headerValue="全部" class="ui_select01"/>
							阈值
							<s:textfield name="qo.limitNum" class="ui_input_txt02" />
						</div>
						<div id="box_bottom">
							<input type="submit" value="查询" class="ui_input_btn01"/>
						</div>
					</div>
				</div>
			</div>
			<div class="ui_content">
				<div class="ui_tb">
					<table class="table" cellspacing="0" cellpadding="0" width="100%" align="center" border="0">
						<tr>
							<th width="30"><input type="checkbox" id="all" /></th>
							<th>编码</th>
							<th>货品</th>
							<th>仓库</th>
							<th>品牌</th>
							<th>库存价格</th>
							<th>库存数量</th>
							<th>库存总金额</th>
						</tr>
						<tbody>
							<s:iterator value="#pageResult.listData">
								<tr>
									<td><input type="checkbox" name="IDCheck" class="acb" data-oid="<s:property value="id"/>" /></td>
									<td><s:property value="id"/></td>
									<td><s:property value="product.name"/></td>
									<td><s:property value="depot.name"/></td>
									<td><s:property value="product.brand.name"/></td>
									<td><s:property value="price"/></td>
									<td><s:property value="storeNumber"/></td>
									<td><s:property value="amount"/></td>
								</tr>
							</s:iterator>
						</tbody>
					</table>
				</div>
				<jsp:include page="../common/common_page.jsp"/>
			</div>
		</div>
	</s:form>
</body>
</html>
