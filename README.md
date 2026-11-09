# Dotfiles (macOS)

個人 macOS 環境設定檔，主要管理 Fish Shell 終端配置、外掛與開發環境變數。

---

## 依賴套件清單 (Dependencies)

在套用 `config.fish` 前，請確保已安裝以下 Homebrew 套件與工具：

| 類別 | 套件名稱 | 說明 | 連結 |
| :--- | :--- | :--- | :--- |
| **終端環境** | `fish` | 智慧且使用者友善的命令列 Shell | [官網](https://fishshell.com/) |
| **CLI 增強** | `zoxide` | 快速目錄跳轉工具（更聰明的 `cd`，以 `z` 跳轉） | [GitHub](https://github.com/ajeetdsouza/zoxide) |
| **CLI 增強** | `eza` | 現代化、支援圖示與 Git 狀態的 `ls` 替代工具 | [GitHub](https://github.com/eza-community/eza) |
| **編輯器** | `neovim` | 現代化 Vim 分支，作為預設終端編輯器 | [官網](https://neovim.io/) |
| **Android 開發** | `android-commandlinetools` | Android SDK 命令列工具（含 `sdkmanager`、`platform-tools` 等） | [Homebrew](https://formulae.brew.sh/cask/android-commandlinetools) |
| **Java 環境** | `openjdk@17` | OpenJDK 17，Android 建置與 Gradle 所需的 Java 運行環境 | [Homebrew](https://formulae.brew.sh/formula/openjdk@17) |

---

## Fish 外掛清單 (Fisher Plugins)

透過 **[Fisher](https://github.com/jorgebucaran/fisher)** 套件管理器安裝的外掛清單：

| 外掛名稱 | 說明 | 連結 |
| :--- | :--- | :--- |
| `jorgebucaran/fisher` | Fish Shell 輕量、快速的外掛套件管理器 | [GitHub](https://github.com/jorgebucaran/fisher) |
| `ilancosman/tide@v6` | 極速、高度可自訂的現代化終端 Prompt 主題（需搭配 Nerd Font） | [GitHub](https://github.com/ilancosman/tide) |

---

## 快速安裝指令

### 1. Homebrew 依賴安裝
```bash
# 安裝 CLI 工具與編輯器
brew install fish zoxide eza neovim

# 安裝 Android 開發與 Java 依賴
brew install --cask android-commandlinetools
brew install openjdk@17
```

### 2. Fisher 與外掛安裝

```bash
# 安裝 Fisher 外掛管理器
curl -sL [https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish](https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish) | source && fisher install jorgebucaran/fisher

# 安裝 Tide 主題
fisher install ilancosman/tide@v6
```

---

## 配置說明 (`fish/config.fish`)

### 1. 套件初始化 (Packages)

| 工具 | 整合語法 | 說明 |
| --- | --- | --- |
| **zoxide** | `zoxide init fish | source` | 注入智慧路徑跳轉掛鉤，啟用 `z` 快速導航 |

### 2. 常用別名 (Aliases)

| 別名 (Alias) | 對應指令 | 用途說明 |
| --- | --- | --- |
| `l` | `eza --icons -lg` | 條列檔案清單（含圖示、詳細大小與 Git/使用者權限） |
| `ll` | `eza --icons -alg` | 條列所有檔案（包含隱藏檔與詳細屬性） |
| `vim` | `nvim` | 導向至 Neovim 編輯器 |
| `vi` | `nvim` | 導向至 Neovim 編輯器 |

### 3. 全域環境變數 (Environment Variables)

| 變數名稱 | 設定值 | 作用範圍 | 說明 |
| --- | --- | --- | --- |
| `EDITOR` | `vim` | `set -gx` (Global & Export) | 設定系統預設文字編輯器 |
| `TERM` | `xterm-256color` | `set -gx` (Global & Export) | 設定終端支援 256 色色彩空間 |

### 4. 行動開發與 PATH (Universal Variables)

| 變數 / 路徑 | 設定內容 | 說明 |
| --- | --- | --- |
| `ANDROID_HOME` | `/opt/homebrew/share/android-commandlinetools` | Android SDK 命令列工具根目錄（Universal 變數） |
| `JAVA_HOME` | `/opt/homebrew/opt/openjdk@17` | OpenJDK 17 根目錄（Universal 變數） |
| `PATH` 追加 | `$ANDROID_HOME/cmdline-tools/latest/bin` | 提供 `sdkmanager`、`avdmanager` 等指令 |
| `PATH` 追加 | `$ANDROID_HOME/platform-tools` | 提供 `adb`、`fastboot` 等偵錯指令 |

---

## 部署方式

將此目錄下的 `fish/config.fish` 放置或軟連結至 macOS 本地配置路徑：

```bash
mkdir -p ~/.config/fish
ln -sf (pwd)/fish/config.fish ~/.config/fish/config.fish
```