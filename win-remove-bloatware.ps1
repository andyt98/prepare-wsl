$packages = @("Clipchamp", "Disney+", "Lenovo Hotkeys", "Lenovo Welcome", "McAfee LiveSafe",
  "Cortana", "Microsoft News", "MSN Weather", "Xbox", "Microsoft Solitaire Collection", 
  "Microsoft Sticky Notes", "Mixed Reality Portal", "OneNote for Windows 10", "Microsoft People",
  "Power Automate", "Skype", "Store Experience Host", "Mail and Calendar", "Spotify Music",
  "Glance by Mirametrix", "Microsoft Tips", "Microsoft To Do", "Feedback Hub", "Xbox TCUI",
  "Xbox Game Bar Plugin", "Xbox Game Bar", "Xbox Identity Provider", "Xbox Game Speech Window",
  "Phone Link", "Movies & TV", "Microsoft Teams", "Microsoft OneDrive")

foreach ($package in $packages) {
  winget uninstall --silent $package 
}