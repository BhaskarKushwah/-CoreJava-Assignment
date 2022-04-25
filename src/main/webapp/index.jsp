<!doctype html>
<html lang="en">

<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">

<title>Home</title>
</head>

<body>
<%@include file ="nav_bar.jsp" %>
	<div id="carouselExampleControls" class="carousel slide"
		data-bs-ride="carousel">
		<div class="carousel-inner">
			<div class="carousel-item active">
				<img src="photo/home1.jpg" class="d-block w-100" alt="...">
			</div>
			<div class="carousel-item">
				<img src="photo/home2.jpg" class="d-block w-100" alt="...">
			</div>
			<div class="carousel-item">
				<img src="photo/home3.jpg" class="d-block w-100" alt="...">
			</div>
		</div>
		<button class="carousel-control-prev" type="button"
			data-bs-target="#carouselExampleControls" data-bs-slide="prev">
			<span class="carousel-control-prev-icon" aria-hidden="true"></span> <span
				class="visually-hidden">Previous</span>
		</button>
		<button class="carousel-control-next" type="button"
			data-bs-target="#carouselExampleControls" data-bs-slide="next">
			<span class="carousel-control-next-icon" aria-hidden="true"></span> <span
				class="visually-hidden">Next</span>
		</button>
	</div>
	<br>
	<br>
	<br>
	<div class="container">
		<div class="row">
			<div class="col">
				<div class="card" style="width: 18rem;">
					<img src="shop/image/home3.jpg" class="card-img-top" alt="...">
					<div class="card-body">
						<h5 class="card-title">Organisation</h5>
						<p class="card-text">Provide support to small farmers with
							end-to-end services covering almost all aspects of cultivation
							from inputs, technical services to processing and marketing.</p>

					</div>
				</div>
			</div>
			<div class="col">
				<div class="card" style="width: 18rem;">
					<img src="shop/image/image3.jpg" class="card-img-top" alt="...">
					<div class="card-body">
						<h5 class="card-title">Farming</h5>
						<p class="card-text">Agriculture can trigger job-led economic
							growth, provided it becomes intellectually satisfying and
							economically rewarding.</p>
					</div>
				</div>
			</div>
			<div class="col">
				<div class="card" style="width: 18rem;">
					<img src="shop/image/main2.jpg" class="card-img-top" alt="...">
					<div class="card-body">
						<h5 class="card-title">We Bring our whole self to work</h5>
						<p class="card-text">
							We’re Agro innovation, and we’ve been farmer facility one place <br>"The
							Future of Agro innovation"
						</p>

					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Remove the container if you want to extend the Footer to full width. -->
	<div class="container my-5" style="background-color: black;">

		<!-- Footer -->
		<footer class="text-center text-lg-start text-white"
			style="background-color: #1c2331">
			<!-- Section: Social media -->
			<section class="d-flex justify-content-between p-4"
				style="background-color: #6351ce">
				<!-- Left -->
				<div class="me-5">
					<span></span>
				</div>
				<!-- Left -->

				<!-- Right -->
				<div>
					<a href="" class="text-white me-4"> <i
						class="fab fa-facebook-f"></i>
					</a> <a href="" class="text-white me-4"> <i class="fab fa-twitter"></i>
					</a> <a href="" class="text-white me-4"> <i class="fab fa-google"></i>
					</a> <a href="" class="text-white me-4"> <i
						class="fab fa-instagram"></i>
					</a> <a href="" class="text-white me-4"> <i class="fab fa-linkedin"></i>
					</a> <a href="" class="text-white me-4"> <i class="fab fa-github"></i>
					</a>
				</div>
				<!-- Right -->
			</section>
			<!-- Section: Social media -->

			<!-- Section: Links  -->
			<section class="">
				<div class="container text-center text-md-start mt-5">
					<!-- Grid row -->
					<div class="row mt-3">
						<!-- Grid column -->
						<div class="col-md-3 col-lg-4 col-xl-3 mx-auto mb-4">
							<!-- Content -->
							<h6 class="text-uppercase fw-bold">Company name</h6>
							<hr class="mb-4 mt-0 d-inline-block mx-auto"
								style="width: 60px; background-color: #7c4dff; height: 2px" />
							<p>AG Inc. is an india e-commerce corporation based in ips
								accedemy indore, that facilitates consumer-to-consumer and
								business-to-consumer sales through its website. Ag was founded
								by Bhaskar,Ranjan in 2021</p>
						</div>
						<!-- Grid column -->

						<!-- Grid column -->
						<div class="col-md-2 col-lg-2 col-xl-2 mx-auto mb-4">
							<!-- Links -->
							<h6 class="text-uppercase fw-bold">Products</h6>
							<hr class="mb-4 mt-0 d-inline-block mx-auto"
								style="width: 60px; background-color: #7c4dff; height: 2px" />
							<p>
								<a href="#!" class="text-white" style="text-decoration: none;">Home
								</a>
							</p>
							<p>
								<a href="https://www.krishakjagat.org/"
									style="text-decoration: none;" class="text-white">News</a>
							</p>
							<p>
								<a href="/weather.html" class="text-white"
									style="text-decoration: none;">Weather</a>
							</p>

						</div>
						<!-- Grid column -->

						<!-- Grid column -->
						<div class="col-md-3 col-lg-2 col-xl-2 mx-auto mb-4">
							<!-- Links -->
							<h6 class="text-uppercase fw-bold">Useful links</h6>
							<hr class="mb-4 mt-0 d-inline-block mx-auto"
								style="width: 60px; background-color: #7c4dff; height: 2px" />
							<p>
								<a href="#!" class="text-white" style="text-decoration: none;">Your
									Account</a>
							</p>
							<p>
								<a href="#!" class="text-white" style="text-decoration: none;">Become
									an Affiliate</a>
							</p>

							<p>
								<a href="#!" class="text-white" style="text-decoration: none;">Help</a>
							</p>
						</div>
						<!-- Grid column -->

						<!-- Grid column -->
						<div class="col-md-4 col-lg-3 col-xl-3 mx-auto mb-md-0 mb-4">
							<!-- Links -->
							<h6 class="text-uppercase fw-bold">Contact</h6>
							<hr class="mb-4 mt-0 d-inline-block mx-auto"
								style="width: 60px; background-color: #7c4dff; height: 2px" />
							<p>
								<i class="fas fa-home mr-3"></i> Ips indore, Pin 452001, MP
							</p>
							<p>
								<i class="fas fa-envelope mr-3"></i> info@ips.com
							</p>
							<p>
								<i class="fas fa-phone mr-3"></i> + 01 234 567 88
							</p>
							<p>
								<i class="fas fa-print mr-3"></i> + 01 234 567 89
							</p>
						</div>
						<!-- Grid column -->
					</div>
					<!-- Grid row -->
				</div>
			</section>
			<!-- Section: Links  -->

			<!-- Copyright -->
			<div class="text-center p-3"
				style="background-color: rgba(0, 0, 0, 0.2)">
				© 2020 Copyright: <a class="text-white"
					href="https://mdbootstrap.com/" style="text-decoration: none;">AG.com</a>
			</div>
			<!-- Copyright -->
		</footer>
		<!-- Footer -->

	</div>
	<!-- End of .container -->

	<!-- Optional JavaScript; choose one of the two! -->

	<!-- Option 1: Bootstrap Bundle with Popper -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous"></script>

	<!-- Option 2: Separate Popper and Bootstrap JS -->
	<!--
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
    -->
</body>

</html>