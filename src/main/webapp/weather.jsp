<html>

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
<link rel="stylesheet" href="weatherStyle.css">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Weather</title>
</head>

<body>
	<%@include file ="nav_bar.jsp" %>
	<form id="search-form">
		<input type="search" placeholder="Enter City Name" id="search-input"
			required autocomplete="off" /> <br> </br>
		<button id="search-button">Search</button>

	</form>


	<main id="app-container">
		<div id="location">
			<p>-------</p>
		</div>
		<div id="temp">
			<img id="temp-icon" src="./photo/weather/sun.png" alt="">
			<p>
				<span id="temp-value">-----</span> <span id="temp-unit">&#176c</span>
			</p>
		</div>

		<div id="climate">
			<p>------</p>
		</div>
	</main>
	<script src="weatherscript.js">

    </script>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous"></script>
</body>

</html>