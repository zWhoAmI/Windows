# Define the source and destination paths
$source = "C:\Users\enterpriseadmin\Desktop\"
$destination = ".\rahat"

# Ensure the destination directory exists
New-Item -Path $destination -ItemType Directory -Force

# Function to copy files and directories with SeBackupPrivilege
function Copy-DirectoryWithBackupPrivilege {
    param (
        [string]$sourceDir,
        [string]$destDir
    )

    # Get all items in the directory
    $items = Get-ChildItem -Path $sourceDir -ErrorAction SilentlyContinue
    foreach ($item in $items) {
        $sourcePath = $item.FullName
        $relativePath = $sourcePath.Substring($source.Length)
        $destinationPath = Join-Path -Path $destDir -ChildPath $relativePath

        if ($item.PSIsContainer) {
            # Create the directory
            New-Item -Path $destinationPath -ItemType Directory -Force
            # Recurse into the directory
            Copy-DirectoryWithBackupPrivilege -sourceDir $sourcePath -destDir $destDir
        } else {
            # Copy the file
            Copy-FileSeBackupPrivilege -Source $sourcePath -Destination $destinationPath -Overwrite
        }
    }
}

# Start copying
Copy-DirectoryWithBackupPrivilege -sourceDir $source -destDir $destination
