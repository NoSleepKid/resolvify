# 🎬 Resolvify 1.6
## DaVinci Resolve stops crying. OBS footage behaves.

Have you ever recorded a video in OBS, imported it into DaVinci Resolve…  
and Resolve just refuses to read it like it’s cursed?

Yeah. Same problem.  
So I made **Resolvify**.

A fast, file-safe, FFmpeg-powered converter that turns OBS recordings into **Resolve-friendly `.mov` files** without nuking your data.

⚠️ VIBE CODED WARNING ⚠️

---

## 🧠 What This Does

- Converts OBS recordings into **DaVinci Resolve–readable files**
- Uses **DNxHR LB** video codec (editor approved)
- Uses **PCM audio** (no desync, no bullshit)
- Verifies outputs before deleting originals
- Automatically cleans up failed conversions
- Runs multiple conversions at once
- Shows real progress bars and time remaining
- Can shut your system down after an overnight run

---

## 🧰 Features

### ✅ Resolve-Compatible Output
- Codec: DNxHR LB
- Pixel Format: yuv422p
- Audio: pcm_s16le
- Container: `.mov`

Resolve eats this instantly.

### ⚡ Quick Mode
- Skips deep verification
- Faster as hell
- Best for trusted files

### 🧪 Safe Mode (Default)
- Verifies codec
- Verifies duration
- Verifies file integrity
- No silent corruption

### 📁 Clean File Handling
- Output goes into a `Done/` folder
- Originals deleted **only after success**
- Failed outputs are auto-removed

### 🧵 Multithreaded
- Converts multiple videos at once
- Keeps CPU busy, not stupid

### 🌙 Overnight Mode
- Let it run while you sleep
- Auto shutdown when finished
- Wake up with free disk space

---

## 📂 Supported Input Formats

Scans for:
- `.mp4`
- `.mkv`
- `.mov`

(case-insensitive)

---

## 🖥 Requirements

- Linux
- Python 3
- `ffmpeg`
- `ffprobe`
- `python-rich`

Install on Arch:
```bash
sudo pacman -S python-rich
