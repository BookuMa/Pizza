<%@ page contentType="text/html; charset=UTF-8"%>
<%@ include file="common/configurationTaglibs.jsp"%>

</head>
<body>
	<div class="container">
		<!-- ヘッダー表示 -->
		<%@ include file="common/nav.jsp"%>

		<!-- 商品検索 -->
		<div class="row">
			<div
				class="col-lg-offset-3 col-lg-6 col-md-offset-2 col-md-8 col-sm-10 col-xs-12">
				<div class="panel panel-default">
					<div class="panel-heading">
						<div class="panel-title">商品を検索する</div>
					</div>
					<div class="panel-body">
						<form:form method="post" action="${pageContext.request.contextPath}/searchItem" class="form-horizontal">
							<div class="form-group">
								<label for="code" class="control-label col-sm-2">商品名</label>
						    <div class="col-sm-9">
								<input type="text" name="keyword" id="code" class="form-control input-sm" />
								  <span style="color:red">
								   <c:out value= "${error}"/>
								   </span>
								</div>
							</div>
							<div class="text-center">
								<input type="submit" value="検索" class="btn btn-primary" >
								<input type="reset" value="クリア" class="btn btn-default">
							</div>
						</form:form>
					</div>
				</div>
			</div>
		</div>

		<!-- 商品一覧 -->
		<div class="row">
			<div
				class="table-responsive col-lg-offset-1 col-lg-10 col-md-offset-1 col-md-10 col-sm-10 col-xs-12">
				<table class="table table-striped">
					<tbody>
						<c:forEach var="item" items="${itemList}" varStatus="status">
							<c:if test="${status.count % 3 == 1 }">
								<tr>
							</c:if>
							<th>
								 <a href= "#">
								   <img src="${item.imagePath}" class="img-responsive img-rounded" width="200" height="600" />
								 </a>
								<br> 
								 <a href="#">
								   <c:out value="${item.name}" />								 
								 </a>
								 <br>
								 <span class="price">&nbsp;&nbsp;M&nbsp;</span>
								 <fmt:formatNumber value="${item.priceM}" pattern="###,###" />円(税抜)<br>
								 <span class="price">&nbsp;&nbsp;L&nbsp;&nbsp;</span> 
								 <fmt:formatNumber value="${item.priceL}" pattern="###,###" />円(税抜)<br>
							</th>
							<c:if test="${status.count % 3 == 0}">
								</tr>
							</c:if>
						</c:forEach>
						
					</tbody>
				</table>
			</div>
		</div>

	</div>
</body>
</html>