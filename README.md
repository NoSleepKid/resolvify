🎬 Resolvify 1.6

Because DaVinci Resolve refusing your OBS footage is bullshit

Have you ever recorded something clean in OBS, imported it into DaVinci Resolve…
and Resolve just stares back like “nah”?
Yeah. Same.

Resolvify is a fast, safe, zero-BS video converter built around FFmpeg that turns OBS recordings into files Resolve actually likes.

Vibe coded. File-safe. Overnight-ready. 💾⚡

🧠 What This Does

Converts OBS videos into Resolve-friendly .mov files

Uses DNxHR LB video codec (editor-approved)

Uses uncompressed PCM audio (no weird audio bugs)

Auto-verifies output so broken files don’t slip through

Deletes originals only after successful conversion

Runs multiple conversions at once

Shows clean progress bars with real time remaining

Can shut your PC down after an overnight run

🧰 Features Breakdown
✅ Resolve Compatibility

DNxHR LB

YUV 4:2:2

PCM audio
Resolve eats this shit up instantly.

⚡ Quick Mode

Skips deep verification

Perfect for trusted files

Way faster

🧪 Safe Mode (Default)

Verifies codec

Verifies duration

Verifies file integrity
No silent corruption. Ever.

📁 Clean Output

Converted files go into a Done/ folder

Originals are deleted only after success

Failed conversions are auto-cleaned

🧵 Multithreaded

Converts multiple videos at once

No UI lag

CPU stays busy, not stupid

🌙 Overnight Mode

Let it cook

Auto shutdown when finished

Wake up to free disk space

📦 What It Works With

Scans for:

.mp4

.mkv

.mov
(case insensitive)

🖥 Requirements

Linux

ffmpeg

ffprobe

Python 3

python-rich

Install rich (Arch):

sudo pacman -S python-rich

🚀 How To Use

Run the script

Enter a folder path (or press c for default)

Pick Quick Mode or Safe Mode

Optional overnight shutdown

Let it rip 🎥

🧨 Why This Exists

OBS records fine.
DaVinci Resolve is picky.
This fixes that.
Without sketchy GUIs.
Without data loss.
Without drama.

⚠️ Warning

This tool is:

VIBE CODED

Powerful

Unapologetic

Use it responsibly. Or don’t. 😈

🏁 Final Note

If Resolve ever says

“Media Offline”

Resolvify says

“Bet.”

Happy editing. 🖤💚
