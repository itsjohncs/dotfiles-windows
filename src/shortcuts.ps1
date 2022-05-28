$OutputEncoding = [console]::InputEncoding = [console]::OutputEncoding =
        New-Object System.Text.UTF8Encoding

Set-Alias -Name ls -Value ls.exe
New-Alias -Force -Name s -Value ls.exe

New-Alias -Force -Name d -Value Set-Location

Remove-Alias -Name clear -ErrorAction SilentlyContinue
function clear {
    [System.Console]::SetWindowPosition(0,[System.Console]::CursorTop)
}

function ga {
    git add @Args
}

function gc {
    git checkout @Args
}

function gb {
    git branch @Args
}

function gd {
    git diff @Args
}

function gdc {
    git diff --cached @Args
}

function gg {
    git grep --untracked --line-number @Args
}

function gl {
    git log @Args
}

Remove-Alias -Name gm -Force -ErrorAction SilentlyContinue
function gm {
    git commit @Args
}

function gr {
    git reset @Args
}

function gs {
    git status @Args
}

function gsh {
    git show @Args
}

function mk {
    cowsay "Hi! I love you <3"
    clear
}