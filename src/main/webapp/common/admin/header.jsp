<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<header class="topbar" data-navbarbg="skin5">
			<nav class="navbar top-navbar navbar-expand-md navbar-dark">
				<div class="navbar-header" data-logobg="skin6">
					<a class="navbar-brand" href="admin-home"> <b class="logo-icon">
							<img
							src="<c:url value='/template/plugins/images/logo-icon.png'/>"
							alt="homepage" />
					</b> <span class="logo-text"> <img
							src="<c:url value='/template/plugins/images/logo.png'/>"
							alt="homepage" />
					</span>
					</a> <a
						class="nav-toggler waves-effect waves-light text-dark d-block d-md-none"
						href="javascript:void(0)"><i class="ti-menu ti-close"></i></a>
				</div>
				<div class="navbar-collapse collapse" id="navbarSupportedContent"
					data-navbarbg="skin5">
					<ul class="navbar-nav ms-auto d-flex align-items-center">
						<li class=" in">
							<form
								class="d-none d-md-inline-block form-inline ml-auto mr-0 mr-md-3 my-2 my-md-0">
								<div class="input-group">
									<input type="text" class="form-control"
										placeholder="Search for..." aria-label="Search"
										aria-describedby="basic-addon2">
									<div class="input-group-append">
										<button class="btn btn-primary" type="button">
											<i class="fas fa-search"></i>
										</button>
									</div>
								</div>
							</form>
						</li>

					</ul>
					<ul class="navbar-nav ml-auto ml-md-0">
						<li class="nav-item dropdown no-arrow"><a
							class="nav-link dropdown-toggle" href="#" id="userDropdown"
							role="button" data-toggle="dropdown" aria-haspopup="true"
							aria-expanded="false"> <i class="fas fa-user-circle fa-fw"></i>
						</a>
							<div class="dropdown-menu dropdown-menu-right"
								aria-labelledby="userDropdown">
								<div class="dropdown-divider"></div>
								<a class="dropdown-item" href="#" data-toggle="modal"
									data-target="#logoutModal">Logout</a>
							</div></li>
					</ul>
				</div>
			</nav>

		</header>
		