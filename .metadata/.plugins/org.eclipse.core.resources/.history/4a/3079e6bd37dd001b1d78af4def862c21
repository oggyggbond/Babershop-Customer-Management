<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Content</title>
</head>
<body>
	<div class="col-md-10 ">
		<div class="p-4">
			<h1 class="border-bottom py-3">Add Content</h1>
			<div class="card">
				<div class="card-header">
					<p class="m-0">Profile Edit Element</p>
				</div>
				<div class="card-body">
					<form:form class="form-horizontal" role="form" id="formSubmit" modelAttribute="model">
						<div class="row">
							<div class="col-md-9">
								<div class="w-100">
									<label class="font-weight-bold">Title</label>
									<form:input path="title" cssClass="form-control"
										placeholder="Enter the Title" />
								</div>
								<div class="w-100 pt-3">
									<label class="font-weight-bold">Brief</label>
									<form:textarea path="brief" cssClass="form-control" rows="4" placeholder="Enter the Title" />
								</div>
								<div class="w-100 pt-3">
									<label class="font-weight-bold">Content</label>
									<form:textarea path="categoryType" cssClass="form-control" rows="7" placeholder="Enter the Content" />
								</div>
								<div class="w-100">
									<label class="font-weight-bold">Category</label>
									<form:select path="categoryType" id="categoryType" class="form-control">
							  	 		<form:option value="" label="-- Chọn thể loại --"/>
							  	 		<form:options items="${categories}"/>
							  		</form:select>
								</div>
								<div class="pt-3">
									<c:if test="${not empty model.id}">
										<button type="button" class="btn btn-success border"
											id="btnAddOrUpdate">Update Button</button>
										<button type="reset" class="btn btn-success border">Reset Button</button>
									</c:if>
									<c:if test="${empty model.id}">
										<button type="button" class="btn btn-success border" id="btnAddOrUpdate">Add Button</button>
										<button type="reset" class="btn btn-success border">Reset Button</button>
									</c:if>
								</div>
							</div>
							<div class="col-md-3">
								<div class="w-100">
									<label class="font-weight-bold">Category</label>
									<form:select path="title" id="categoryType" class="form-control">
							  	 		<form:option value="" label="-- Chọn thể loại --"/>
							  	 		<form:options items="${categories}"/>
							  		</form:select>
								</div>
								<div class="w-100 pt-3">
									<label class="font-weight-bold">Status</label>
									<select
										id="cars" name="cars" class="form-control">
										<option value="volvo">[ Choose Status ]</option>
										<option value="volvo">Published</option>
										<option value="saab">Unpublished</option>
									</select>
								</div>
							</div>
						</div>
					</form:form>
				</div>
			</div>
		</div>
	</div>
</body>
</html>