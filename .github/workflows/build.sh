#!/bin/bash
# Lovecraft Locker 云编译脚本（在 GitHub Actions Ubuntu 上运行）
set -x
cd "$GITHUB_WORKSPACE"

# 1. 下载 Godot 3.5.1 headless
wget -q https://github.com/godotengine/godot/releases/download/3.5.1-stable/Godot_v3.5.1-stable_linux_headless.64.zip
unzip -q Godot_v3.5.1-stable_linux_headless.64.zip
mv Godot_v3.5.1-stable_linux_headless.64 godot
chmod +x godot

# 2. 下载并安装 Android 导出模板
wget -q https://github.com/godotengine/godot/releases/download/3.5.1-stable/Godot_v3.5.1-stable_export_templates.tpz
mkdir -p ~/.local/share/godot/templates/3.5.1.stable
cd ~/.local/share/godot/templates/3.5.1.stable
unzip -o "$GITHUB_WORKSPACE/Godot_v3.5.1-stable_export_templates.tpz" templates/android_debug.apk templates/android_release.apk
cd "$GITHUB_WORKSPACE"

# 3. 下载原版 APK（含完整资源）
wget -q -L "https://github.com/qianxingbuyiyu/lovecraft-locker-re/releases/download/base-apk/base_original.apk" -O base_original.apk
ls -la base_original.apk

# 4. 解出全部 assets 资源到工程
python3 - <<'PYEOF'
import zipfile, os
z = zipfile.ZipFile('base_original.apk')
n = 0
for name in z.namelist():
    if name.startswith('assets/'):
        rel = name[7:]
        out = os.path.join('assets', rel)
        os.makedirs(os.path.dirname(out), exist_ok=True)
        with open(out, 'wb') as f:
            f.write(z.read(name))
        n += 1
print('解出资源:', n)
PYEOF

# 5. Godot 导入（生成 .godot 缓存）
./godot --path . --editor --quit --headless 2>&1 | tail -5 || true

# 6. 导出 APK（debug 签名，可直接安装）
./godot --path . --export-debug "Android" lovecraft-locker-re.apk 2>&1 | tail -15 || true
ls -la *.apk || echo "无 APK 产出"

echo "BUILD_DONE"