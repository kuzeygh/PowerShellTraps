# v6-rc: fixed

[PowerShell]::Create().AddScript({
	$ErrorView = 'NormalView' #! v7
	Set-StrictMode -Version 2
	try {
		throw 'Oops!'
	}
	catch {
		'Error {'
		$_ | Format-List
		'}'
		$Error[0]
	}
}).Invoke()