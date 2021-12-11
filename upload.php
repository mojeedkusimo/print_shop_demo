<?php

include 'conn.php';

# region - Declare some values
$maxFileSize = 200000;
$isFileOkForUpload = true;
$validFileExtensions = array("stl", "jpg", "jpeg", "png");
# endregion

# region - Retrieve upload contents from user
$rawFileObject = $_FILES["customerFile"];
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
// if (imagecreatefromjpeg($rawFileObject["tmp_name"]) == false) {
//     $isFileOkForUpload = false;
//     echo "Sorry, there was a problem with the file you are trying to upload\n";
// }
// # endregion

# region - Perform Upload
if ($isFileOkForUpload) {
    $uploadsDir = "design_files/";
    $uniqId = uniqid("upload_");
    $newFileName = $uniqId."_".$rawFileObject["name"];
    $isUploadSuccessful = move_uploaded_file($rawFileObject["tmp_name"], $uploadsDir.$newFileName);

    if ($isUploadSuccessful) {
        echo "File uploaded successfully\n";
    } else {
        echo "Sorry, an error occurred while uploading your file, please try again <br>";
    }
}
# endregion

?>