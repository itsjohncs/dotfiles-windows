foreach ($Path in (Get-ChildItem "$PSScriptRoot\src\profile.d").FullName) {
    . "$Path"
}
