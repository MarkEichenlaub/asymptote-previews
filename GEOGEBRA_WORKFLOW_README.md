# GeoGebra to Asymptote Workflow

This workflow converts GeoGebra diagrams to Asymptote code using Claude API, with automatic TeXeR upload and Dynalist integration.

## Setup

### 1. Install Dependencies

```bash
pip install anthropic pyperclip python-dotenv
```

### 2. Set API Key

Add your Anthropic API key to `C:\Users\Mark Eichenlaub\github\dynalist_aops_sync\.env`:

```
ANTHROPIC_API_KEY=sk-ant-api03-...
```

### 3. Configure ShareX

1. **Open ShareX** → Hotkey settings
2. **Add new hotkey** (e.g., Ctrl+Shift+G for "GeoGebra")
3. Configure:
   - **Task**: Screen capture → Capture region
   - **After capture tasks**: ✓ Save image to file
   - **Screenshot folder**: `C:\Users\Mark Eichenlaub\github\asymptote-previews`

4. **Add Action**:
   - Go to "Actions" tab → Add
   - **File path**: `C:\Users\Mark Eichenlaub\github\asymptote-previews\run_geogebra_convert.bat`
   - **Argument**: `"$input"`
   - ✓ Wait for the process to exit
   - ✓ Show window (recommended for seeing progress)

## Usage

1. **Create your diagram in GeoGebra**
2. **Save the .ggb file** to `C:\Users\Mark Eichenlaub\github\asymptote-previews`
3. **Press your ShareX hotkey** (e.g., Ctrl+Shift+G)
4. **Crop the region** you want to capture from GeoGebra
5. **Wait** for Claude to convert and iterate until the diagram is clean
6. **TeXeR URL** is automatically copied to clipboard
7. **Paste Dynalist URL** when prompted (or press Enter to skip)

## Command Line Options

```bash
# Full workflow with most recent files
python geogebra_to_asymptote.py --test

# With specific screenshot
python geogebra_to_asymptote.py path/to/screenshot.png

# With specific GeoGebra file
python geogebra_to_asymptote.py --ggb path/to/diagram.ggb

# Skip TeXeR upload (local only)
python geogebra_to_asymptote.py --test --skip-texer

# Skip Dynalist update
python geogebra_to_asymptote.py --test --skip-dynalist

# Dry run (preview without API calls)
python geogebra_to_asymptote.py --test --dry-run
```

## What Happens

1. **Extract GeoGebra data**: Reads the `.ggb` file (which is a ZIP containing XML)
2. **Call Claude API**: Sends the GeoGebra XML + screenshot to Claude Opus 4.5
3. **Iterative refinement**: Claude writes Asymptote code, compiles locally, sees the result, and fixes any issues
4. **TeXeR upload**: Creates a new public diagram on artofproblemsolving.com/texer
5. **Clipboard**: Copies the TeXeR URL
6. **Dynalist update**: Sets the node to `#asymptote <url>` and adds preview child

## Files

- `geogebra_to_asymptote.py` - Main Python script (in dynalist_aops_sync)
- `run_geogebra_convert.bat` - Batch wrapper for ShareX
- `geogebra_converted.asy` - Last converted Asymptote code (saved after each run)

## Troubleshooting

### "ANTHROPIC_API_KEY not found"
Add your API key to the `.env` file in dynalist_aops_sync.

### "Asymptote (asy) not found in PATH"
Install Asymptote: https://asymptote.sourceforge.io/

### "Not logged in to AoPS"
The browser will open - log in manually, then press Enter in the console.

### Compilation errors persist
Claude will try up to 5 iterations. If it still fails, the error likely requires manual intervention.
