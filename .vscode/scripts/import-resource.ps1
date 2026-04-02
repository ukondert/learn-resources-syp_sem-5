param(
  [Parameter(Mandatory=$true)][ValidateSet('skills','prompts','agents','hooks')][string]$resourceType,
  [Parameter(Mandatory=$true)][string]$resourceName
)

$repo = 'https://github.com/ukondert/ai-assisted-dev-resources.git'
$tmp = Join-Path $env:TEMP ("ai_res_" + [guid]::NewGuid().ToString().Substring(0,8))

Write-Host "Klone Remote-Repository temporär..." -ForegroundColor Cyan
git clone --depth 1 --quiet $repo $tmp
if ($LASTEXITCODE -ne 0) {
    Write-Error 'git clone fehlgeschlagen'
    exit 10
}

switch ($resourceType) {
    'skills'  {
        $paths = @(
            Join-Path $tmp ".github\skills\$resourceName"
            Join-Path $tmp ".agents\skills\$resourceName"
            Join-Path $tmp "skills\$resourceName"
        )
        $dest = Join-Path $PWD '.github\skills'
    }
    'prompts' {
        $paths = @(
            Join-Path $tmp "prompts\$resourceName.prompt.md"
            Join-Path $tmp "prompts\$resourceName.md"
            Join-Path $tmp ".github\prompts\$resourceName.prompt.md"
        )
        $dest = Join-Path $PWD '.github\prompts'
    }
    'agents' {
        $paths = @(
            Join-Path $tmp "agents\$resourceName.agent.md"
            Join-Path $tmp "agents\$resourceName.md"
            Join-Path $tmp ".agents\$resourceName.agent.md"
        )
        $dest = Join-Path $PWD '.agents'
    }
    'hooks' {
        $paths = @(
            Join-Path $tmp "hooks\$resourceName.js"
            Join-Path $tmp "hooks\$resourceName.ps1"
            Join-Path $tmp "hooks\$resourceName"
        )
        $dest = Join-Path $PWD '.hooks'
    }
}

$src = $paths | Where-Object { Test-Path $_ } | Select-Object -First 1
if (-not $src) {
    Write-Error "Resource '$resourceName' in Typ '$resourceType' nicht im geklonten Repo gefunden"
    Remove-Item -Recurse -Force $tmp -ErrorAction SilentlyContinue
    exit 20
}

if (-not (Test-Path $dest)) {
    New-Item -ItemType Directory -Force $dest | Out-Null
}
Copy-Item -Recurse -Force -Path $src -Destination $dest
Write-Host "Erfolg: $resourceType '$resourceName' nach '$dest' importiert" -ForegroundColor Green

Remove-Item -Recurse -Force $tmp -ErrorAction SilentlyContinue
exit 0
