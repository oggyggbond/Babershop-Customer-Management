<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp" %>
<c:url var="listContentURL" value="/admin-list"/>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>List Content</title>
	</head>
	<body>
			<div class="col-md-10 ">
				<div class="p-4">
					<form action="<c:url value='/admin-list'/>" id="formSubmit" method="put">
					<h1 class="border-bottom py-3">List Content</h1>
					<div class="card">
						<div class="card-header"> <p class="m-0">Profile Edit Element</p></div>
						<div class="card-body">
							<table class="table table-striped table-bordered">
								<thead>
									<tr>
										<th>#</th>
										<th width="25%" scope="col">Title</th>
										<th width="50%" scope="col">Briefs</th>
										<th width="13%" scope="col">Option</th>
										<th width="15%" scope="col">Created Date</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach var="item" items="${model.listResult}" varStatus="i">
									<tr>
										<th class="font-weight-normal"><c:out value = "${i.count+(model.page-1)*(model.limit)}"/></th>
										<td>${item.title}</td>
										<td>${item.brief}</td>
										<td>
											<c:if test="${item.sort eq '0' }">
												<button class="btn btn-sm text-danger border btn-light status" type="button" id="status${i.count}" value="${item.id}">
													<i class="fas fa-toggle-off"></i>
												</button>
											</c:if>
											<c:if test="${item.sort eq '1' }">
												<button class="btn btn-sm text-success border btn-light status" type="button" id="status${i.count}" value="${item.id}">
													<i  class="fas fa-toggle-on"></i>
												</button>
											</c:if>
											
											<!-- update -->
											<c:url var="updateNewURL" value="/admin-add">
												<c:param name="id" value="${item.id}"/>															
											</c:url>	
											<a class="btn btn-sm text-info border btn-light" title="Cập nhật bài viết" href='${updateNewURL}'> <i class="far fa-edit"></i></a>
											
											<!-- store -->
											<button class="btn btn-sm text-danger border btn-light delete" type="button" id="id${i.count}" value="${item.id}">
												<i class="far fa-trash-alt">
												</i>
											</button>
										</td>
										<td>${item.createDate}</td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
						<nav aria-label="Page navigation example">
							<ul class="pagination pagination-sm justify-content-center mb-0" id="pagination"></ul>
						</nav>
						<input type="hidden" value="" id="page" name="page"/>
						<input type="hidden" value="" id="limit" name="limit"/>
					</div>
				</div>
			</form>
		</div>
	</div>
		<script>
			var totalPages = ${model.totalPage};
			var currentPage = ${model.page};
			$(function() {
				window.pagObj = $('#pagination').twbsPagination({
					totalPages : totalPages,
					visiblePages : 10,
					startPage : currentPage,
					onPageClick : function(event, page) {
						if (currentPage != page) {
							$('#limit').val(10);
							$('#page').val(page);
							$('#formSubmit').submit();
							window.location.href = "${listContentURL}?page="+page+"&limit=10&message=success"
						}
					}
				});
			});
		      $('.delete').click(function(e){
		    	  e.preventDefault();
				    var data = {};
			        data["id"] = $(this).val();
			        data["sort"] = 3;
				    updateContent(data);
		      });
		      $('.status').click(function(e){
		    	  e.preventDefault();
				    var data = {};
			        data["id"] = $(this).val();
			        data["sort"] =4;
				    updateContent(data);
		      });
			function updateContent(data) {
				$.ajax({
		            url: '/api-content',
		            type: 'PUT',
		            contentType: 'application/json',
		            data: JSON.stringify(data),
		            dataType: 'json',
		            success: function (result) {
		            	window.location.href = "${listContentURL}?page="+$.urlParam('page')+"&limit=10&message=success";
		            },
		            error: function (error) {
		            	window.location.href = "${listContentURL}?page="+$.urlParam('page')+"&limit=10&message=error";
		            }
		        });
			}
			//hàm get param từ url
			$.urlParam = function(name){
			    var results = new RegExp('[\?&]' + name + '=([^&#]*)').exec(window.location.href);
			    if (results==null) {
			       return null;
			    }
			    return decodeURI(results[1]) || 0;
			}
		</script>
	</body>
</html>