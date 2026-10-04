<html>
<head>
    <title>Invio dati Db</title>
</head>
<body>
		<?php
			$nome = $_POST["nome"];
			$cognome = $_POST["cognome"];
			$cf = $_POST["cf"];
			$tel = $_POST["tel"];
			$mail = $_POST["mail"];
			$pass = $_POST["password"];

            $connection = mysqli_connect("localhost","root","","proget");

			$query="INSERT INTO Cliente VALUES('$cf','$nome','$cognome','$tel','$mail','$pass')";
			$result=mysqli_query($connection,$query);
			if($result>0)
				echo "Cliente inserito!";
			else
				echo "Errore, cliente non inserito!";
			mysqli_close($connection);
		?>
</body>
</html>