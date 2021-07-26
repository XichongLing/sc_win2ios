$watcher = New-Object System.IO.FileSystemWatcher
$watcher.IncludeSubdirectories = $false

$userName = $(whoami)
$targetPath = 'C:\Users\'+$userName+'\Pictures\Screenshots'
$watcher.Path = $targetPath
$watcher.EnableRaisingEvents = $true
$action =
{
    $path = $event.SourceEventArgs.FullPath
    $changetype = $event.SourceEventArgs.ChangeType
    Write-Host "$path was $changetype at $(get-date)"
}
Register-ObjectEvent $watcher "Created" -Action $action