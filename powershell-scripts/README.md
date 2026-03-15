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

## Installation

Clone the repository:

```powershell
git clone https://github.com/praneetkumar/windots
```

Navigate to the scripts directory:

```powershell
cd windots/powershell-scripts
```

Add this directory to your **Windows PATH environment variable** so the scripts can be used from anywhere.

Example path:

```
C:\Users\YOUR_USERNAME\.github\windots\powershell-scripts
```

### Steps

1. Open **Start Menu** and search for **Environment Variables**
2. Click **Edit the system environment variables**
3. Open **Environment Variables**
4. Under **System variables**, find `Path`
5. Click **Edit**
6. Click **New**
7. Add the path to the `powershell-scripts` directory
8. Click **OK**

Restart PowerShell after updating the PATH.

---

## Usage

Once the directory is in your PATH, you can run scripts from anywhere.


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
