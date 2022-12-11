$packages = @("Google.Chrome", "Google.Drive", "Git.Git", "Microsoft.VisualStudioCode", "Windows Subsystem for Linux",
    "AlmaLinux 9", "JetBrains.Toolbox", "qBittorrent.qBittorrent", "RARLab.WinRAR", "7zip.7zip", "Python.Python.3.11",
    "Microsoft.PowerShell")

foreach ($package in $packages) {
    winget install --silent $package 
}
