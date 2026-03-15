<#
.SYNOPSIS
Convert video or audio files to high-quality MP3.

.DESCRIPTION
This script converts any media file supported by FFmpeg into
high-quality MP3 audio.

Features:
- Accepts multiple files or wildcards (*)
- Stores converted files in a separate "mp3" folder
- Skips existing MP3 files automatically
- Skips files already converted
- Optional force reconversion of MP3 files

Requires FFmpeg to be installed and available in PATH.

.PARAMETER InputFiles
One or more media files or wildcard patterns to convert.

Examples:
*.mp4
*.mkv
*

.PARAMETER ForceMP3
Force reconversion of files that are already MP3.

.EXAMPLE
.\tomp3.ps1 video.mp4

Convert a single file.

.EXAMPLE
.\tomp3.ps1 *.mkv

Convert all MKV files in the current directory.

.EXAMPLE
.\tomp3.ps1 *

Convert all files in the current directory.

.EXAMPLE
.\tomp3.ps1 * -ForceMP3

Convert everything including existing MP3 files.

.NOTES
Uses FFmpeg with "-q:a 0" which produces the highest VBR MP3 quality.
#>

param(
    [Parameter(Mandatory=$true, ValueFromRemainingArguments=$true)]
    [string[]]$InputFiles,

    [switch]$ForceMP3
)

# Output directory
$OutputDir = Join-Path (Get-Location) "mp3"

if (!(Test-Path $OutputDir)) {
    New-Item -ItemType Directory -Path $OutputDir | Out-Null
}

# Expand wildcard inputs like *
$ExpandedFiles = foreach ($pattern in $InputFiles) {
    Get-ChildItem -Path $pattern -File -ErrorAction SilentlyContinue
}

foreach ($file in $ExpandedFiles) {

    $ext = $file.Extension.ToLower()

    if ($ext -eq ".mp3" -and -not $ForceMP3) {
        Write-Host "Skipping MP3: $($file.Name)"
        continue
    }

    $outputFile = Join-Path $OutputDir "$($file.BaseName).mp3"

    if (Test-Path $outputFile) {
        Write-Host "Already exists, skipping: $($file.BaseName).mp3"
        continue
    }

    Write-Host "Converting: $($file.Name)"

    ffmpeg -hide_banner -loglevel error `
        -i "$($file.FullName)" `
        -vn `
        -map a `
        -q:a 0 `
        "$outputFile"

    if ($LASTEXITCODE -eq 0) {
        Write-Host "Saved -> $outputFile"
    } else {
        Write-Host "Conversion failed: $($file.Name)"
    }
}
