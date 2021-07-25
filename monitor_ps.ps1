$watcher = New-Object System.IO.FileSystemWatcher
$watcher.IncludeSubdirectories = $false
$watcher.Path = 'C:\Users\Dell\Pictures\Screenshots'
$watcher.EnableRaisingEvents = $true
$action =
{
    $path = $event.SourceEventArgs.FullPath
    $changetype = $event.SourceEventArgs.ChangeType
    Write-Host "$path was $changetype at $(get-date)"
}
Register-ObjectEvent $watcher "Created" -Action $action