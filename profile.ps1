foreach ($Path in (Get-ChildItem "$PSScriptRoot\src").FullName) {
    . "$Path"
}
