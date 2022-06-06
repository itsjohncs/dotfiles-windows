Class ProjectNames : System.Management.Automation.IValidateSetValuesGenerator {
    [string[]] GetValidValues() {
        return (Get-ChildItem "$env:USERPROFILE\personal").BaseName
    }
}

function pd {
    # .Description
    # Changes directory to project.

    Param(
        [ValidateSet([ProjectNames])]
        [string]
        $Project
    )

    if ($Project) {
        Set-Location "$env:USERPROFILE\personal\$Project"
    } else {
        Set-Location "$(git rev-parse --show-toplevel)"
    }
}