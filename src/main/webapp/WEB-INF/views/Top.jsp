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
						<form method="post" action="#" class="form-horizontal">
							<div class="form-group">
								<label for="code" class="control-label col-sm-2">商品名</label>
								<div class="col-sm-9">
									<input type="text" name="code" id="code"
										class="form-control input-sm" />
								</div>
							</div>
							<div class="text-center">
								<button type="submit" value="検索" class="btn btn-primary">検索</button>
								<button type="reset" value="クリア" class="btn btn-default">クリア</button>
							</div>
						</form>
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
							<th><img src="${item.imagePath}"
								class="img-responsive img-rounded" width="200" height="600" /><br>
								<c:out value="${item.name}" /><br> 
								<span class="price">&nbsp;&nbsp;M&nbsp;</span>
								<fmt:formatNumber value="${item.priceM}" pattern="###,###" />円(税抜)<br>
								<span class="price">&nbsp;&nbsp;L&nbsp;&nbsp;</span> 
								<fmt:formatNumber value="${item.priceL}" pattern="###,###" />円(税抜)<br></th>
							<c:if test="${status.count % 3 == 0}">
								</tr>
							</c:if>
						</c:forEach>
						<tr>

							<th><a href="item_detail.html"> <img src="img/01.jpg"
									class="img-responsive img-rounded" width="200" height="600">
							</a><br> <a href="item_detail.html">じゃがバターベーコン</a><br> <span
								class="price">&nbsp;М&nbsp;</span>&nbsp;&nbsp;1,380円(税抜)<br>
								<span class="price">&nbsp;Ｌ</span>&nbsp;&nbsp;2,380円(税抜)<br>
							</th>


							<th><a href="item_detail.html"> <img src="img/01.jpg"
									class="img-responsive img-rounded" width="200" height="600">
							</a><br> <a href="item_detail.html">じゃがバターベーコン</a><br> <span
								class="price">&nbsp;М&nbsp;</span>&nbsp;&nbsp;1,380円(税抜)<br>
								<span class="price">&nbsp;Ｌ</span>&nbsp;&nbsp;2,380円(税抜)<br>
							</th>


							<th><a href="item_detail.html"> <img src="img/01.jpg"
									class="img-responsive img-rounded" width="200" height="600">
							</a><br> <a href="item_detail.html">じゃがバターベーコン</a><br> <span
								class="price">&nbsp;М&nbsp;</span>&nbsp;&nbsp;1,380円(税抜)<br>
								<span class="price">&nbsp;Ｌ</span>&nbsp;&nbsp;2,380円(税抜)<br>
							</th>

						</tr>


						<!-- ２段落目 -->
						<tr>

							<th><a href="item_detail.html"> <img src="img/01.jpg"
									class="img-responsive img-rounded" width="200" height="600">
							</a><br> <a href="item_detail.html">じゃがバターベーコン</a><br> <span
								class="price">&nbsp;М&nbsp;</span>&nbsp;&nbsp;1,380円(税抜)<br>
								<span class="price">&nbsp;Ｌ</span>&nbsp;&nbsp;2,380円(税抜)<br>
							</th>
							<th><a href="item_detail.html"> <img src="img/01.jpg"
									class="img-responsive img-rounded" width="200" height="600">
							</a><br> <a href="item_detail.html">じゃがバターベーコン</a><br> <span
								class="price">&nbsp;М&nbsp;</span>&nbsp;&nbsp;1,380円(税抜)<br>
								<span class="price">&nbsp;Ｌ</span>&nbsp;&nbsp;2,380円(税抜)<br>
							</th>
							<th><a href="item_detail.html"> <img src="img/01.jpg"
									class="img-responsive img-rounded" width="200" height="600">
							</a><br> <a href="item_detail.html">じゃがバターベーコン</a><br> <span
								class="price">&nbsp;М&nbsp;</span>&nbsp;&nbsp;1,380円(税抜)<br>
								<span class="price">&nbsp;Ｌ</span>&nbsp;&nbsp;2,380円(税抜)<br>
							</th>
						</tr>


						<!-- 3段落目 -->
						<tr>

							<th><a href="item_detail.html"> <img src="img/01.jpg"
									class="img-responsive img-rounded" width="200" height="600">
							</a><br> <a href="item_detail.html">じゃがバターベーコン</a><br> <span
								class="price">&nbsp;М&nbsp;</span>&nbsp;&nbsp;1,380円(税抜)<br>
								<span class="price">&nbsp;Ｌ</span>&nbsp;&nbsp;2,380円(税抜)<br>
							</th>
							<th><a href="item_detail.html"> <img src="img/01.jpg"
									class="img-responsive img-rounded" width="200" height="600">
							</a><br> <a href="item_detail.html">じゃがバターベーコン</a><br> <span
								class="price">&nbsp;М&nbsp;</span>&nbsp;&nbsp;1,380円(税抜)<br>
								<span class="price">&nbsp;Ｌ</span>&nbsp;&nbsp;2,380円(税抜)<br>
							</th>
							<th><a href="item_detail.html"> <img src="img/01.jpg"
									class="img-responsive img-rounded" width="200" height="600">
							</a><br> <a href="item_detail.html">じゃがバターベーコン</a><br> <span
								class="price">&nbsp;М&nbsp;</span>&nbsp;&nbsp;1,380円(税抜)<br>
								<span class="price">&nbsp;Ｌ</span>&nbsp;&nbsp;2,380円(税抜)<br>
							</th>
						</tr>
					</tbody>
				</table>
			</div>
		</div>

	</div>
</body>
</html>