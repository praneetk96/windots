# PowerShell Scripts

A small collection of practical **PowerShell scripts** I wrote to solve real problems on Windows.

These scripts focus on **automation, convenience, and fixing everyday annoyances** in my workflow.  
Most of them are lightweight and designed to do **one job well**.

---

## Available Scripts

| Script | Description |
|------|------|
| `tomp3.ps1` | Convert video or audio files to high-quality MP3 using FFmpeg |

More scripts will be added over time.

---

## Usage

Clone the repository or download the script you need.

```powershell
git clone https://github.com/praneetkumar/windots
```

Navigate to the scripts directory:

```powershell
cd windots/powershell-scripts
```

Run any script:

```powershell
.\tomp3.ps1 *
```

Most scripts include **built-in help** which can be accessed with:

```powershell
Get-Help .\script-name.ps1
```

Examples:

```powershell
Get-Help .\tomp3.ps1
Get-Help .\tomp3.ps1 -Examples
```

---

## Requirements

Some scripts may rely on external tools.

Example:

- **FFmpeg** (required for `tomp3.ps1`)

Make sure required tools are installed and available in your system `PATH`.

---

## Philosophy

These scripts follow a few simple ideas:

- Solve **real problems I encounter**
- Stay **small and readable**
- Avoid unnecessary dependencies
- Prefer **command-line workflows**

---

## Notes

⚠️ Some scripts may contain small personal modifications depending on my system setup.

Feel free to adapt them to your own workflow.
