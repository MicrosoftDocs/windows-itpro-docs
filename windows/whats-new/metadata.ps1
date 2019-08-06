$files = Get-ChildItem . *.md -rec
foreach ($file in $files)
{
    (Get-Content $file.PSPath) |
    Foreach-Object { $_ -replace "author: greg-lindsay", "audience: itpro`rauthor: greg-lindsay" } |
    Set-Content $file.PSPath
    $file.PSPath
}