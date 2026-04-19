Import-Module AWS.Tools.S3

$region = "us-west-1"

$bucketName = Read-Host -Prompt "Enter the S3 bucket name"
Write-Host "AWS Region $region"
Write-Host "S3 $bucketName"
function BucketExists {
    $bucket = Get-S3Bucket -BucketName $bucketName -ErrorAction silentlyContinue
    return $null -ne $bucket
}
if (-not (BucketExists)) {
    Write-Host "Bucket Already Exists"
    New-S3Bucket -BucketName $bucketName -Region $region
} else {
    Write-Host "Bucket Already Exists"
}
New-S3Bucket -BucketName $bucketName -Region $region

$fileName = 'myfile.txt'
$fileContent = 'Hello World!'
Set-Content -Path $fileName -Value $fileContent

Write-S3Object -BucketName $bucketName -File $fileName -Key $fileName
