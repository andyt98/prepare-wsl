$packages = @("Google.Chrome", "Google.Drive", "Git.Git", "Microsoft.VisualStudioCode", "Windows Subsystem for Linux",
    "AlmaLinux 9", "JetBrains.Toolbox", "qBittorrent.qBittorrent")

foreach ($package in $packages) {
    winget install --silent $package 
}