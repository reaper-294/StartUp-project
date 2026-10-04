<html>
<head>
    <title>Invio dati Db</title>
</head>
<body>
	<?php
			$tipo1 = $_POST["tipo_struttura"];
			$n_piani = $_POST["n_piani"];

            $connection = mysqli_connect("localhost","root","","proget");

			$query="INSERT INTO struttura VALUES('$tipo1','$n_piani')";
			$result=mysqli_query($connection,$query);
			if($result>0)
				echo "Dati inseriti";
			else
				echo "Errore, dati non inseriti!";
			mysqli_close($connection);
		?>
</body>
</html>