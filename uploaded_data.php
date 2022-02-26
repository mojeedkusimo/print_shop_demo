<?php 
    # region - Database Connection file
    include 'conn.php';
    # endregion
    $all_uploaded_data = mysqli_query($conn, "SELECT * FROM ORDERS");
    $formated_data = mysqli_fetch_all($all_uploaded_data, MYSQLI_ASSOC);
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Uploaded Data</title>
    <link rel="stylesheet" href="bootstrap/css/bootstrap.css">
</head>
<body>
    <h2 class="h2 text-danger text-center mt-5">Received Orders</h2>
    <div class="container">
        <div class="row border rounded border-danger text-center p-5 m-5">
            <?php foreach ($formated_data as $order): ?>
                <div class="col-lg-4 col-md-6 mb-5">
                    <div class="card border border-danger">
                        <img
                            src="<?php echo 'design_files/'.$order['FILE_NAME'] ?>"
                            class="card-img-top "
                            alt="<?php echo $order['FILE_NAME'] ?>"
                            width='250'
                            height='250'
                        />
                        <div class="card-body">
                            <h6 class="card-text"><span class="text-danger">NAME:</span> <?php echo $order['FIRST_NAME'].' '.$order['LAST_NAME']?></h6>
                            <h6 class="card-text text-daner"><span class="text-danger">EMAIL: </span><?php echo $order['EMAIL']?></h6>
                            <h6 class="card-text text-dager"><span class="text-danger">STATE:</span> <?php echo $order['STATE']?></h6>
                        </div>
                    </div>
                </div>
            <?php endforeach; ?>
        </div>
        <div class="row mb-5">
            <div class="col text-center">
                <a href="/" class="btn btn-danger inline-block">Go Home</a>
            </div>
        </div>
    </div>
</body>
</html>