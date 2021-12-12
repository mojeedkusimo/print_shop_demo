<?php

include 'conn.php';

# region - Declare some values
$maxFileSize = 200000;
$isFileOkForUpload = true;
$validFileExtensions = array("stl", "jpg", "jpeg");
# endregion

#region - Retrieve user data
$firstname = $_POST["firstname"];
$lastname = $_POST["lastname"];
$email = $_POST["email"];
$state = $_POST["state"];
$filename = $_FILES["customerFile"]["name"];

# region - Retrieve upload contents from user
$rawFileObject = $_FILES["customerFile"];
$filename = $rawFileObject["name"];
$fileExtension = strtolower(pathinfo($rawFileObject["name"], PATHINFO_EXTENSION));
# endregion

# region - Run checks
# 1) Is file extension valid?
if (!in_array($fileExtension, $validFileExtensions)) {
    $isFileOkForUpload = false;
    echo "Sorry, you can only upload files of type STL, JPG (or JPEG) <br>";
}

# 2) Is file size within permissible range?
if ($rawFileObject["size"] <= 0 || $rawFileObject["size"] > $maxFileSize) {
    $isFileOkForUpload = false;
    echo "Sorry, you can only upload non-empty files less than $maxFileSize <br>";
}

# 3) Is file content valid (e.g. valid jpg or jpeg)?
if (imagecreatefromjpeg($rawFileObject["tmp_name"]) == false) {
    $isFileOkForUpload = false;
    echo "Sorry, there was a problem with the file you are trying to upload <br>";
}
// # endregion

# region - Perform Upload
if ($isFileOkForUpload) {
    $uploadsDir = "design_files/";
    $uniqId = uniqid("upload_");
    $newFileName = $uniqId."_".$rawFileObject["name"];
    $isUploadSuccessful = move_uploaded_file($rawFileObject["tmp_name"], $uploadsDir.$newFileName);

    $query = "INSERT INTO ORDERS (FIRST_NAME,LAST_NAME,EMAIL,STATE,FILE_NAME) VALUES ('$firstname', '$lastname', '$email', '$state', '$filename')";

    if (($isUploadSuccessful) & (mysqli_query($conn, $query))) {
        header("Location: ./success.php");
    } else {
        echo "Sorry, an error occurred while uploading your file, please try again <br>";
        echo mysqli_error($conn);
    }
}
# endregion

?>