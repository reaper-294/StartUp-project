<html>
<head>
    <title>Invio dati Db</title>
</head>
<body>
		<?php
			$tipo2 = $_POST["tipo_prodotto"];
			$tipo3 = $_POST["tipo_materiale"];
			$misure = $_POST["misure"];

            $connection = mysqli_connect("localhost","root","","proget");

			$query="INSERT INTO prodotto VALUES('$misure','$tipo2','$tipo3')";
			$result=mysqli_query($connection,$query);
			if($result>0)
				echo "Dati inseriti";
			else
				echo "Errore, dati non inseriti!";
			mysqli_close($connection);
		?>
</body>
</html>