<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
<title>User Login</title>
<link rel="stylesheet" href="./style/logincss.css">

<!-- BEGIN INCLUDE HEADER AND FOOTER -->
<script src="https://code.jquery.com/jquery-3.3.1.js"
	integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60="
	crossorigin="anonymous">
	
</script>





<!-- END INCLUDE HEADER AND FOOTER -->
<style>
#nav a {
	float: left;
	background-color: inherit;
	text-align: center;
	padding-top: 1.33vh;
	padding-bottom: 1.33vh;
	text-decoration: none;
	font-size: 2.12vh;
	color: white;
}

#nav a:hover {
	background-color: rgb(0, 40, 230);
}

#nav a.active {
	background-color: rgb(0, 0, 200);
}

.dropbtn {
	background-color: rgb(0, 51, 153);
	color: white;
	padding-top: 1.33vh;
	padding-bottom: 1.33vh;
	text-align: center;
	font-size: 2.12vh;
	border: none;
}

.dropdown {
	display: inline-block;
}

.dropdown-content {
	display: none;
	position: absolute;
	background-color: rgb(0, 51, 153);
	z-index: 1;
}

.dropdown-content a {
	color: rgb(0, 51, 153);
	padding: 0px 0.5px;
	text-decoration: none;
	display: block;
}

.dropdown-content a:hover {
	background-color: rgb(0, 40, 230);
}

.dropdown:hover .dropdown-content {
	display: block;
}

.dropdown:hover .dropbtn {
	background-color: rgb(0, 40, 230);
}

.required {
	color: red;
}
</style>


</head>




<body style="background-color: white; overflow: hidden;">
	<!-------------------------------- Header --------------------------------------->
	<header>
		<div id="header"
			style="height: 11.94vh; background-color: rgb(249, 249, 249); text-align: center; top: 50%;">

			<div id="logo"
				style="position: absolute; margin-left: 1.95vw; height: 9.28vh; width: 10.42vw; margin-top: 1.33vh; margin-bottom: 1.33vh; background-color: inherit;">

				<!-- Logo Image to be added -- -->
				<img src="./Images/Logo.jpeg" style="height: 4em; width: 5em;">

			</div>

			<span
				style="position: absolute; color: rgb(237, 28, 36); font-weight: bold; font-size: 4.23vw; left: 21.48vw; top: 1.86vh; z-index: 1;">ONLINE
				CRIME MANAGEMENT</span>

		</div>


		<!-------------------------------- Navigation Bar --------------------------------------->
		<div
			style="background-color: rgb(0, 51, 153); height: 5.31vh; width: 100%; z-index: 1"
			id="nav">
			<a class="active" href="homepage.html" style="width: 12.5vw;">HOME</a>
			<a href="html/newsfinal.html" style="width: 12.5vw;">NEWS</a> <a
				href="html/mostwanted.html" style="width: 15.43vw;">MOST WANTED</a>
			<a href="html/missingpersons.html" style="width: 15.43vw;">MISSING
				PERSONS</a> <a href="html/unidentifiedbodies.html"
				style="width: 17.38vw;">UNIDENTIFIED BODIES</a> <a
				href="html/crimetypes.html" style="width: 12.83vw;">CRIME TYPES</a>

			<div class="dropdown" style="width: 10.83vw;">
				<button class="dropbtn" style="width: 12.83vw;">LOGIN</button>
				<div class="dropdown-content">
					<a href="/PodMock2/login.jsp" style="width: 12.83vw;">Public
						Login</a><br> <a href="/PodMock2/policelogin.jsp"
						style="width: 12.83vw;">Police Login</a>
				</div>
			</div>


		</div>
	</header>
	<!-------------------------------- Footer --------------------------------------->
	<footer
		style="background-color: rgb(0, 51, 153); height: 4.38vh; position: absolute; top: 94.16vh; width: 99%; padding-top: 1.33vh;">
		<p
			style="color: rgb(249, 249, 249); font-size: 2.12vh; padding-left: 11.72vw; display: inline;">
			<i>Disclaimer </i>
		</p>
		<p
			style="color: rgb(249, 249, 249); font-size: 2.12vh; padding-left: 18vw; display: inline;">
			<i>Privacy Policy </i>
		</p>
		<p
			style="color: rgb(249, 249, 249); font-size: 2.12vh; padding-left: 18vw; display: inline;">
			<i>Terms of use</i>
		</p>
		<p
			style="color: rgb(249, 249, 249); font-size: 2.12vh; padding-left: 18vw; display: inline;">
			<i>Important Sites</i>
		</p>

	</footer>
	<!----------------------------Left HelpLine Pannel------------------------------------------>
	<div class="helpline" style="width: 15%">
		<div id="icon"
			style="position: absolute; margin-left: 0vw; border: 1px black solid; border-radius: 18px; height: 27.1vw; width: 9.95vw; margin-top: 80px; background-color: rgb(0, 51, 153); color: white;">
			<img src="./Images/telephone.png"
				style="height: 4.28vh; width: 2.42vw; z-index: 1"><span
				style="position: absolute; margin-top: 8px;">HELPLINE </span> <br>
			<br>
			<p>
				Report A Crime: <br> 100
			</p>
			<p>
				Women Helpline: <br> 1091
			</p>
			<p>
				Child Helpline: <br> 1098
			</p>
			<p>
				Anti Ragging: <br> 1800-180-5522
			</p>
			<p>
				Ambulance: <br>108
			</p>
			<p>
				Railway Protection: <br> 1322
			</p>



		</div>
	</div>

	<!----------------------------Left HelpLine Pannel--END-------------------------------->


	<!----------------------------Right Covid HelpLine Pannel---------------------------------->

	<a href="https://www.mohfw.gov.in/pdf/coronvavirushelplinenumber.pdf"
		target="_blank"> <img src="./Images/telephone.png"
		style="width: inherit; height: 40px; padding-left: 0px; position: absolute; margin-left: 96.5vw; margin-top: 100px; z-index: 1; border-radius: 25px;" />
		<div id="covid-helpline"
			style="padding-top: 3vw; position: absolute; margin-left: 96.5vw; border: 1px black solid; border-radius: 12px; height: 17.3vw; width: 1.68vw; margin-top: 100px; background-color: rgb(0, 51, 153); color: white; padding-left: 10px;">

			<span> C<br>O<br>V<br>I<br>D<br>
			<br>H<br>E<br>L<br>P<br>L<br>I<br>N<br>E<br>
			</span>

		</div>

	</a>

	<!----------------------------Right Covid HelpLine Pannel END---------------------------------->



	<!--------------------------------------------- USER LOGIN BEGIN ------------------------------------------------------------------------->

	<h1>Welcome to User Login Page!</h1>
	<form method="post" action="LoginController">
		<table align="center">
			<tr>
				<td><label for="username">Enter Email Id:<span
						class="required">*</span></label></td>
				<td><input type="email" name="emailid"
					placeholder="Enter mail id" required></td>
			</tr>
			<tr>
				<td><label for="username">Enter Password:<span
						class="required">*</span></label></td>
				<td><input type="password" name="password"
					placeholder="Enter Password" required></td>
			</tr>
			<tr>
				<td><label for="username">Enter Mobile No:<span
						class="required">*</span></label></td>
				<td><input type="tel" pattern="[6-9]{1}[0-9]{9}"
					name="mobilenumber" placeholder="Enter Mobile Number" required /></td>
				<td><input type="submit" id="sendotp" value="Send OTP"
					id="generate otp"></td>
			</tr>
			<tr>
				<td><label for="username">Enter the OTP:<span
						class="required">*</span></label></td>
				<td>
					<form method="get" id="digit" class="digit-group"
						data-group-name="digits" data-autosubmit="false"
						autocomplete="off">

						<input type="text" maxlength="1" size="1" min="0" max="9"
							pattern="[0-9]{1}" id="digit" name="digit-1" data-next="digit-2" />
						<input type="text" maxlength="1" size="1" min="0" max="9"
							pattern="[0-9]{1}" id="digit" name="digit-2" data-next="digit-3"
							data-previous="digit-1" /> <input type="text" maxlength="1"
							size="1" min="0" max="9" pattern="[0-9]{1}" id="digit"
							name="digit-3" data-next="digit-4" data-previous="digit-2" /> <span
							class="splitter">&ndash;</span> <input type="text" maxlength="1"
							size="1" min="0" max="9" pattern="[0-9]{1}" id="digit"
							name="digit-4" data-next="digit-5" data-previous="digit-3" /> <input
							type="text" maxlength="1" size="1" min="0" max="9"
							pattern="[0-9]{1}" id="digit" name="digit-5" data-next="digit-6"
							data-previous="digit-4" /> <input type="text" maxlength="1"
							size="1" min="0" max="9" pattern="[0-9]{1}" id="digit"
							name="digit-6" data-previous="digit-5" />

					</form>
				</td>
			</tr>

			<tr>
				<td align="center" colspan="2"><button type="submit"
						id="verify">Verify</button></td>
			</tr>
			<tr>
				<td align="center" colspan="2"><a href="register.jsp"
					style="color: red; font-size: 16px; margin-left: 100px; padding-bottom: 30px;"
					target="_blank">Register Here</a></td>
			</tr>
		</table>
	</form>



	<!--------------------------------------------- USER LOGIN ENDS ------------------------------------------------------------------------>









	<!-------- Footer Begins ------->

	<!-------- Footer Ends ------->


</body>
</html>
