<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Address</title>
<%@ include file="all_component/allCss.jsp"%>
</head>
<body style="background-color: #f0f1f2;">
<%@ include file="all_component/navbar.jsp"%>
<div class="container  p-2">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card">
					<div class="card-body">
						<h4 class="text-center">Edit Address</h4>
						<form>
							
							<div class="form-row">	
							
							<div class="form-group col-md-6">
									<label for="inputPassword4">Address</label> <input type="text"
										class="form-control" id="inputPassword4" placeholder="Address">
								</div>
							
								<div class="form-group col-md-6">

									<label for="inputEmail4">Landmark</label> <input type="text"
										class="form-control" id="inputEmail4" placeholder="Landmark">
								</div>
								
							</div>
							<div class="form-row">
								<div class="form-group col-md-4">

									<label for="inputEmail4">City</label> <input type="text"
										class="form-control" id="inputEmail4" placeholder="Name">
								</div>
								<div class="form-group col-md-4">
									<label for="inputPassword4">State</label> <input type="text"
										class="form-control" id="inputPassword4" placeholder="city">
								</div>
								<div class="form-group col-md-4">
									<label for="inputPassword4">Pincode</label> <input type="text"
										class="form-control" id="inputPassword4" placeholder="Pincode">
								</div>
							</div>
							

							<div class="text-center">
								<button class="btn btn-warning">Add Address</button>
								
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>

<div style="margin-top: 221px;">
<%@ include file="all_component/footer.jsp"%>
</div>
</body>
</html>