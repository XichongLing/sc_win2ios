#build a transfer folder on desktop
$transferFolderName = Read-Host 'build a transfer folder on Desktop'
$transferFolder = $env:USERPROFILE + '\Desktop\' + $transferFolderName
New-Item -ItemType directory -Path $transferFolder

#subscribe to an event listener
$watcher = New-Object System.IO.FileSystemWatcher
$watcher.IncludeSubdirectories = $false

#specify target folder
$targetPath = $env:USERPROFILE +'\Pictures\Screenshots'
$watcher.Path = $targetPath
$watcher.EnableRaisingEvents = $true


#specify actions to take when target event triggered
$action =
{
    $file=gci 'C:\Users\Dell\Pictures\Screenshots' | sort LastWriteTime | select -last 1 |select -expand Fullname
    cp $file $transferFolder
}

#initiate the listener
Register-ObjectEvent $watcher "Created" -Action $action



#get-eventsubscriber -force | unregister-event -force