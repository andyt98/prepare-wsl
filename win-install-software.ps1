$packages = @("Google.Chrome", "Google.Drive", "Git.Git", "Microsoft.VisualStudioCode", "Windows Subsystem for Linux",
    "AlmaLinux 9", "JetBrains.Toolbox", "qBittorrent.qBittorrent" "RARLab.WinRAR")

foreach ($package in $packages) {
    winget install --silent $package 
}
