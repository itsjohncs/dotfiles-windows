function git {
    python3.exe "$PSScriptRoot\..\git-select\src\forward.py" @Args
}

function gn {
    python3.exe "$PSScriptRoot\..\git-select\src\copy.py" @Args
}