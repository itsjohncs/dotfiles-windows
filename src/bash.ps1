function bash {
    if ( $Args.length -eq 0 ) {
        & "$HOME\scoop\apps\cygwin\current\root\bin\bash.exe" --login -i
    } else {
        & "$HOME\scoop\apps\cygwin\current\root\bin\bash.exe" @Args
    }
}