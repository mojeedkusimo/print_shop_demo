<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Upload your designs</title>
    <link rel="stylesheet" href="bootstrap/css/bootstrap.css">
</head>
<body>
    <form class="row g-3 m-5 border rounded border-danger" action="upload.php" method="post" enctype="multipart/form-data">
      <div class="col-md-12 pt-3">
        <h2 class="h2 text-danger text-center">Custom Design Uploads</h2>
      </div>
        <div class="col-md-6 pt-3">
          <label for="firstName" class="form-label text-danger">First Name</label>
          <input type="text" class="form-control" id="firstName" name="firstname" required>
        </div>
        <div class="col-md-6 pt-3">
          <label for="lastName" class="form-label text-danger">Last Name</label>
          <input type="text" class="form-control" id="lastName" name="lastname" required>
        </div>
        <div class="col-md-6 pt-3">
          <label for="email" class="form-label text-danger">Email</label>
          <input type="email" class="form-control" id="email" name="email" required>
        </div>
        </div>
        <div class="col-md-6 pt-3">
          <label for="state" class="form-label text-danger">State</label>
          <input type="text" class="form-control" id="state" name="state" required>
        </div>
        <div class="col-md-6  pt-3">
          <label for="customerFile" class="form-label text-danger">File</label>
          <input type="file" class="form-control-file" id="customerFile" name="customerFile" accept=".stl,.jpg,.jpeg" onchange=displayFile(); required>
        </div>
        <div class="col-12 py-3">
          <input type="submit" class="btn btn-danger" value="Upload"/>
        </div>
      </form>
</body>
</html>