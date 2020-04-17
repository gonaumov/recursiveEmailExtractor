$result = (Get-ChildItem -Include *.txt -Recurse | Get-Content | Select-String -Pattern "(?:[a-zA-Z0-9_\-\.]+)@(?:[a-zA-Z0-9_\-\.]+)\.(?:[a-zA-Z]{2,5})").Matches | Select-Object -ExpandProperty Value -Unique 
$result | Out-File -FilePath .\out.txt
Write-Host "Found "$result.Count" unique emails"
Write-Host "Please check file out.txt located in the same directory"
Write-Host "Press any key to continue..."
$Host.UI.RawUI.ReadKey("NoEcho,IncludeKeyUp") > $null