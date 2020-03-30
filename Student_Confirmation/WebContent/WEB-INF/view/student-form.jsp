<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!doctype html>

<html>

<head>

<title>Student Registration Page</title>

</head>

<body>

	<form:form action="processForm" modelAttribute="student">

First name: <form:input path="firstName" />
		<br>
		<br>
Last name: <form:input path="lastName" />
		<br>
		<br>
Country:
<form:select path="country">
			<form:options items="${student.countryOptions}" />
		</form:select>
		<br>
		<br>
Favorite Programming Language:<br>
		<form:radiobutton path="favoriteLanguage" value="Java" />Java<br>
		<form:radiobutton path="favoriteLanguage" value="C#" />C#<br>
		<form:radiobutton path="favoriteLanguage" value="PHP" />PHP<br>
		<form:radiobutton path="favoriteLanguage" value="Ruby" />Ruby
		<br>
		<br>
Operating Systems:<br>
		<form:checkbox path="operatingSystems" value="Linux" />Linux<br>
		<form:checkbox path="operatingSystems" value="Mac OS" />MAC OS<br>
		<form:checkbox path="operatingSystems" value="MS Windows" />MS Windows

		<br>
		<br>
		<input type="submit" value="Submit">

	</form:form>
	<br>
	<br>

</body>

</html>