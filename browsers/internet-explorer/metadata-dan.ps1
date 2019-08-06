$files = Get-ChildItem . *.md -rec
foreach ($file in $files)
{
    (Get-Content $file.PSPath) |
    Foreach-Object { $_ -replace "manager: dansimp", "audience: itpro`rmanager: dansimp" } |
    Set-Content $file.PSPath
    $file.PSPath
}