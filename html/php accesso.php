<html>
<head>
    <title>Invio dati Db</title>
</head>
<body>
<?php
			$cf = $_POST["cf"];
			$mail = $_POST["mail"];
			$pass = $_POST["password"];

            $connection = mysqli_connect("localhost","root","","proget");

			$query="SELECT *
					FROM Cliente
					WHERE codice_fiscale ='$cf'";
			$result=mysqli_query($connection,$query);
			if(mysqli_num_rows($result)!=0)
				echo"Sei entrato nel tuo account!";
			mysqli_close($connection);
		?>
</body>
</html>