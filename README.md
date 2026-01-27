# 🎬 Resolvify 1.0 
## A (TESTED WORKING) Linux-only OBS to DaVinci Resolve video converter

Resolvify exists for one simple reason:

Sometimes videos recorded in OBS will not import correctly into DaVinci Resolve on Linux.  
Resolvify converts those recordings into a format that Resolve can read reliably.

This tool is designed to be fast, safe, and easy to use while handling large batches of video files.

---

## 🐧 Linux Only

Resolvify is **built specifically for Linux**.

- Linux file paths  
- Linux process handling  
- Linux shutdown support  

Windows and macOS are **not supported** by this version.

If you enjoy porting tools or improving cross-platform support,  
feel free to create a Windows or macOS version.

This project is **open source**.  
Fork it, experiment, and share your work. Community contributions are welcome,  
and notable forks can be linked here.

---

## 🧠 What Resolvify Does

- Converts OBS recordings into DaVinci Resolve–compatible `.mov` files
- Uses DNxHR LB video codec
- Uses uncompressed PCM audio
- Verifies converted files before removing originals
- Automatically cleans up failed conversions
- Processes multiple videos at the same time
- Displays live progress bars and time remaining
- Optional automatic shutdown after overnight runs

---

## 🧰 Output Format

- Container: `.mov`
- Video Codec: DNxHR LB
- Pixel Format: yuv422p
- Audio Codec: pcm_s16le

These settings are widely supported and work well with DaVinci Resolve.

---

## ⚡ Modes

### Quick Mode
- Skips deep verification
- Faster processing
- Best for trusted recordings

### Safe Mode (Default)
- Verifies codec presence
- Verifies duration
- Ensures file integrity
- Prevents silent corruption

---

## 📁 File Handling

- Converted videos are placed into a `Done/` folder
- Original files are deleted **only after successful verification**
- Failed outputs are automatically removed

---

## 📂 Supported Input Formats

Resolvify scans for:
- `.mp4`
- `.mkv`
- `.mov`

(case-insensitive)

---

## 🖥 Requirements

- Linux
- Python 3
- FFmpeg
- FFprobe
- python-rich

Install the Rich library on Arch Linux:
```bash
sudo pacman -S python-rich
