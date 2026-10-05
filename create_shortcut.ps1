$project = "C:\Users\glsri\repos\aaroh\DSA_SD_Coach\DSA_SD_Coach_04Oct2026"
$desktop = [Environment]::GetFolderPath("Desktop")   # works with OneDrive desktops
$shell = New-Object -ComObject WScript.Shell
$link = $shell.CreateShortcut("$desktop\DSA_SD_COACH_4Oct2026.lnk")
$link.TargetPath = "$project\launch_coach.bat"
$link.WorkingDirectory = $project
$link.Description = "DSA and System Design interview coach"
$link.IconLocation = "$env:SystemRoot\System32\shell32.dll,23"
$link.Save()
Write-Host "Shortcut created on $desktop"
