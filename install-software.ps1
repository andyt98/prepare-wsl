$packages = @("Google.Chrome" , "Git.Git", "Microsoft.VisualStudioCode", "Windows Subsystem for Linux",
    "AlmaLinux 9", "JetBrains.Toolbox")

foreach ($package in $packages) {
    winget install --silent $package 
}