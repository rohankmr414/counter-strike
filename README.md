# Counter-Strike 2 – Config Setup

## Autoexec Location

Place your **autoexec.cfg** file here:

```
C:\Program Files (x86)\Steam\steamapps\common\Counter-Strike Global Offensive\game\csgo\cfg\autoexec.cfg
```

## Launch Options

Add these to your game’s **Launch Options** in Steam:

```
-freq 144 -fullscreen -console +exec autoexec.cfg
```

## Setup Script

If you use the provided `setup_autoexec.bat` script to copy your `autoexec.cfg`, you must run it as administrator. This is required to allow copying files into the `Program Files` directory on Windows.
