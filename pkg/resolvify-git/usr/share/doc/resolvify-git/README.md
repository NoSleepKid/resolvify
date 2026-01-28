# 🎬 Resolvify 1.0

## A (TESTED WORKING) Linux-only OBS to DaVinci Resolve video converter

Resolvify exists for one simple reason: sometimes videos recorded in OBS will not import correctly into DaVinci Resolve on Linux.  
Resolvify converts those recordings into a format that Resolve can read reliably.

This tool is designed to be fast, safe, and easy to use while handling large batches of video files.

---

## 🐧 Linux Only (Windows/Mac users, look away!)

Resolvify is built specifically for Linux environments  
(file paths, process handling, and shutdown commands).

**IMPORTANT:**  
Windows and macOS are **NOT supported**.

If you are looking for a solution on those platforms, check out:
- **Shutter Encoder**
- **HandBrake**

If you enjoy porting tools, feel free to fork this project and make it cross-platform.

---

## 🛠 Installation (Arch Linux)

### Install System Dependencies

```bash
sudo pacman -S ffmpeg python-rich tk
pip install customtkinter --break-system-packages
````

---

### Setup the Scripts

To run Resolvify from anywhere, place the scripts in `/usr/local/bin`.

#### Make them executable

```bash
chmod +x resolvify resolvify-gui
```

#### Move to system bin

```bash
sudo mv resolvify /usr/local/bin/
sudo mv resolvify-gui /usr/local/bin/
```

---

### Create Desktop Shortcut

To find Resolvify in your App Menu (KDE, GNOME, etc.), create the following file:

`~/.local/share/applications/resolvify.desktop`

```ini
[Desktop Entry]
Name=Resolvify
Exec=/usr/local/bin/resolvify-gui
Icon=video-x-generic
Type=Application
Terminal=false
Categories=Video;
```

---

## 🚀 How to Use

### The GUI Dashboard (`resolvify-gui`)

Perfect for the “set it and forget it” workflow.

* **Pick Folder**: Choose where your OBS clips live
* **Toggles**: Enable Quick Mode, Auto-Delete, or Overnight Shutdown
* **Launch**: Clicking Launch opens a Kitty terminal window showing real-time progress

---

### The CLI Engine (`resolvify`)

For terminal users.

* **Interactive**:
  Just run:

  ```bash
  resolvify
  ```

  and follow the prompts.

* **Automated**:
  Run with flags for scripting:

  ```bash
  resolvify --path "/home/user/Videos" --delete --quick
  ```

---

## ✨ Features & Output

* **Format**: Converts to `.mov` using DNxHR LB and PCM audio
* **Safety**: Verifies file duration and integrity before deleting originals
* **Parallel Processing**: Handles multiple videos simultaneously
* **Cleanup**: Automatically removes failed or corrupted output files
* **Overnight Mode**: Can automatically shut down your computer when finished

---

## 📂 Supported Inputs

Resolvify scans for:

* `.mp4`
* `.mkv`
* `.mov`
