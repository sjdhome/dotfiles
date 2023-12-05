function Prompt {
	$cwd = $(Get-Location)
	if ($env:USERPROFILE -eq $cwd) {
		$cwd = "~"
	} else {
		$cwd = $((Get-Item -Path (Get-Location)).BaseName)
	}
	$Title = "$env:USERNAME@$(hostname) $cwd"
	$PS1 = "[$Title]$ "
	$host.ui.RawUI.WindowTitle = $Title
	$PS1
}
