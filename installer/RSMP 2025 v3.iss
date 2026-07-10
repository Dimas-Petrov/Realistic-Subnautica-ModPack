; -- AllPagesExample.iss --
; Same as Example1.iss, but shows all the wizard pages Setup may potentially display

; SEE THE DOCUMENTATION FOR DETAILS ON CREATING .ISS SCRIPT FILES!

[Setup]
; Инофрмация о устанавливаемом приложении
AppName=Realistic Subnautica ModPack
AppVersion=0.7.0_2025_Edition
; только цифры, стандартный формат Windows
VersionInfoVersion=0.7.0.2025
; Отображаемая версия в свойствах => совпадает с AppVersion
VersionInfoProductTextVersion=0.7.0_2025_Edition
VersionInfoProductVersion=0.7.0.2025
DefaultGroupName=Realistic Subnautica ModPack

; Настройка фильтра открытых exe или использующихся файлов
CloseApplications=yes
CloseApplicationsFilter=Subnautica.exe

// не работает проверка лицензии и версии игры

; Стиль установщика
WizardStyle=windows11 dynamic includetitlebar hidebevels
; Возможность изменять размер инсталлера
; WindowResizable=yes - не работает (предположительно отключено в InnoSetup версии 7)
; WizardResizable=yes - не работает (предположительно отключено в InnoSetup версии 7)
WizardImageFile=E:\Users\DPA\Pictures\WizardImageFile.bmp
WizardSmallImageFile=E:\Users\DPA\Pictures\WizardSmallImageFile.bmp
SetupIconFile=E:\Users\DPA\Pictures\Peeper.ico
; Тёмная тема
WizardSmallImageFileDynamicDark=E:\Users\DPA\Pictures\WizardSmallImageFile.bmp
WizardImageFileDynamicDark=E:\Users\DPA\Pictures\WizardImageFile.bmp

; Настройки путей
;DefaultDirName={autopf}\My Program
DefaultDirName={code:FindSubnauticaPath}
UninstallDisplayIcon={app}\MyProg.exe

; Настройки сжатия (в примере ниже используется максимальная степень для 4 потоков ЦП 12Гб ОЗУ и 64Бит ОС)
SetupArchitecture=x64
Compression=lzma2/max
SolidCompression=yes
LZMAAlgorithm=1
; LZMABlockSize=262144
LZMADictionarySize=128000
LZMAMatchFinder=bt
LZMAUseSeparateProcess=yes
LZMANumBlockThreads=6
LZMANumFastBytes=273

; Путь сохранения установщика
OutputDir=E:\Users\DPA\Documents\Inno Setup Examples Output

;Настройка разрядности установщика
ArchitecturesAllowed=x64compatible
ArchitecturesInstallIn64BitMode=x64compatible


; Настройки стандартных вкладок
DisableWelcomePage=no
LicenseFile=E:\Users\DPA\Documents\Inno Setup Input\RSNMP pre 0.1\license.txt
InfoBeforeFile=E:\Users\DPA\Documents\Inno Setup Input\RSNMP pre 0.1\readme.txt
UserInfoPage=no
DisableDirPage=no
DisableProgramGroupPage=yes
InfoAfterFile=E:\Users\DPA\Documents\Inno Setup Input\RSNMP pre 0.1\readme.txt
; PrivilegesRequired=admin - отключено из-за отсутствия поддержки тёмной темы в изоляции

[Languages]
Name: en; MessagesFile: "compiler:Default.isl"
Name: ru; MessagesFile: "E:\Inno Setup\Custom Languages\Russian for games.iss"

[Files]
; Файл readme
Source: "E:\Users\DPA\Documents\Inno Setup Input\RSNMP pre 0.1\readme.txt"; DestDir: "{app}";

; Временные файлы


; Файлы основного устанавливаемого ПО

; BepinEx
Source: "E:\Users\DPA\Documents\Inno Setup Input\RSNMP pre 0.1\LIBs&API\Tobey's BepInEx Pack for Subnautica 5.4.23-pack.3.0.0\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: program\0;

; Nautilus
Source: "E:\Users\DPA\Documents\Inno Setup Input\RSNMP pre 0.1\LIBs&API\Nautilus 1.0.0 pre.49\plugins\Nautilus\*"; DestDir: "{app}\BepInEx\plugins\Nautilus"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: program\1;

; Advanced Inventory
Source: "E:\Users\DPA\Documents\Inno Setup Input\RSNMP pre 0.1\LIBs&API\AdvancedInventory 1.0.4a\*"; DestDir: "{app}\BepInEx\plugins\"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: program\2;

; DeathRun Remade
Source: "E:\Users\DPA\Documents\Inno Setup Input\RSNMP pre 0.1\MODS\Deathrun Remade 1.1.3\plugins\DeathrunRemade\*"; DestDir: "{app}\BepInEx\plugins\DeathrunRemade"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: program\DeathRun;

; Bag Equipment
Source: "E:\Users\DPA\Documents\Inno Setup Input\RSNMP pre 0.1\MODS\BagEquipment 1.2.1\BagEquipment\*"; DestDir: "{app}\BepInEx\plugins\BagEquipment"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: program\bagequip;

; Unknown Name
Source: "E:\Users\DPA\Documents\Inno Setup Input\RSNMP pre 0.1\MODS\Unknown Name 2.0.0.1\plugins\UnknownName\*"; DestDir: "{app}\BepInEx\plugins\UnknownName"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: program\UnkNM;

; Roll Control
Source: "E:\Users\DPA\Documents\Inno Setup Input\RSNMP pre 0.1\MODS\Roll Control 5.4.3\RollControl\*"; DestDir: "{app}\BepInEx\plugins\RollControl"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: program\RollCtrl;

; Fixes
Source: "E:\Users\DPA\Documents\Inno Setup Input\RSNMP pre 0.1\MODS\Fixes 1.4.0\BepInEx\plugins\Fixes\*"; DestDir: "{app}\BepInEx\plugins\Fixes"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: program\Fixes;

; Tweaks
Source: "E:\Users\DPA\Documents\Inno Setup Input\RSNMP pre 0.1\MODS\Tweaks 1.2.0\BepInEx\plugins\Tweaks\*"; DestDir: "{app}\BepInEx\plugins\Tweaks"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: program\Tweaks;

; Epic Weather Mod 0.1.0
Source: "E:\Users\DPA\Documents\Inno Setup Input\RSNMP pre 0.1\MODS\Epic Weather Mod 0.1.0\plugins\WeatherMod\*"; DestDir: "{app}\BepInEx\plugins\EpicWeather"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: program\Weather;

; HydronauticaHammer
Source: "E:\Users\DPA\Documents\Inno Setup Input\RSNMP pre 0.1\MODS\HydronauticaHammer 2.0.3\*"; DestDir: "{app}\BepInEx\plugins\HydronauticaHammer"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: program\HRH;

; CustomLoadScreen 2.2.0
Source: "E:\Users\DPA\Documents\Inno Setup Input\RSNMP pre 0.1\MODS\CustomLoadScreen\*"; DestDir: "{app}\BepInEx\plugins\CustomLoadScreen"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: program\CSL;

; EnhancedSleep 1.0.0.0e
Source: "E:\Users\DPA\Documents\Inno Setup Input\RSNMP pre 0.1\MODS\SubnauticaEnhancedSleep"; DestDir: "{app}\BepInEx\plugins\EnhancedSleep"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: program\SES;

; Pictures_from_database 1.01
Source: "E:\Users\DPA\Documents\Inno Setup Input\RSNMP pre 0.1\MODS\Pictures_from_database 1.01\*"; DestDir: "{app}\BepInEx\plugins\Pictures_from_database"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: program\PFD;



; Переводы к модам

Source: "E:\Users\DPA\Documents\Inno Setup Input\RSNMP pre 0.1\TRANSLATIONS\RUSSIAN\DEATHRUN RAMADE\VARIANT_MAMONTEN0K\*"; DestDir: "{app}\BepInEx\plugins\DeathrunRemade\"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: program\DeathRun\TRANS\LANG_RUS\MaMont;

Source: "E:\Users\DPA\Documents\Inno Setup Input\RSNMP pre 0.1\TRANSLATIONS\RUSSIAN\DEATHRUN RAMADE\VARIANT_Darmar\*"; DestDir: "{app}\BepInEx\plugins\DeathrunRemade\"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: program\DeathRun\TRANS\LANG_RUS\Dar;

Source: "E:\Users\DPA\Documents\Inno Setup Input\RSNMP pre 0.1\TRANSLATIONS\RUSSIAN\DEATHRUN RAMADE\VARIANT_anikeevv\"; DestDir: "{app}\BepInEx\plugins\DeathrunRemade\"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: program\DeathRun\TRANS\LANG_RUS\ani;



; Опциональные моды

; Tank Monitor
Source: "E:\Users\DPA\Documents\Inno Setup Input\RSNMP pre 0.1\MODS\Oxygen Tank Monitor 2025.1.0.0.0\OxygenTankMonitor\*"; DestDir: "{app}\BepInEx\plugins\OxygenTankMonitor"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: opt\OTM;

; SaveGameCustom
Source: "E:\Users\DPA\Documents\Inno Setup Input\RSNMP pre 0.1\MODS\Savegame customizer 2025\SaveGameCustomizer\*"; DestDir: "{app}\BepInEx\plugins\SaveGameCustomizer"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: opt\SGC;

; SleekBases
Source: "E:\Users\DPA\Documents\Inno Setup Input\RSNMP pre 0.1\MODS\Sleek Bases 2.3\BepInEx\plugins\SleekBases_Subnautica\*"; DestDir: "{app}\BepInEx\plugins\SleekBases_Subnautica"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: opt\SBSN;

; RepairTransportLights 1.0
Source: "E:\Users\DPA\Documents\Inno Setup Input\RSNMP pre 0.1\MODS\RepairTransportLights\*"; DestDir: "{app}\BepInEx\plugins\RepairTransportLights"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: opt\RTL;

; Radio 0.0.1
Source: "E:\Users\DPA\Documents\Inno Setup Input\RSNMP pre 0.1\MODS\Radio\*"; DestDir: "{app}\BepInEx\plugins\Radio"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: opt\Radio;


;Source: "C:\Users\DPA\Desktop\Realistic Subnautica\Mods\MonoBleedingEdge\*"; DestDir: "{app}\SNUnmanagedData\"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: debuging;

;Source: "C:\Users\DPA\Desktop\Realistic Subnautica\Mods\SNUnmanagedData\*"; DestDir: "{app}\SNUnmanagedData\"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: debuging;

;Source: "C:\Users\DPA\Desktop\Realistic Subnautica\Mods\.doorstop_version"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: program;

;Source: "C:\Users\DPA\Desktop\Realistic Subnautica\Mods\doorstop_config.ini"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: program;

;Source: "C:\Users\DPA\Desktop\Realistic Subnautica\Mods\libdoorstop.dylib"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: program;

;Source: "C:\Users\DPA\Desktop\Realistic Subnautica\Mods\run_bepinex.sh"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: program;

;Source: "C:\Users\DPA\Desktop\Realistic Subnautica\Mods\winhttp.dll"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: program;

; Компоненты
;; ReShade
;Source: "C:\Users\DPA\Desktop\Realistic Subnautica\ReShades Add-One Supported\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: reshade;

;Source: "C:\Users\DPA\Desktop\Realistic Subnautica\ReShades Presets\Aeonic 2023 RealGen(Subnautica)\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: reshade\1;

;Source: "C:\Users\DPA\Desktop\Realistic Subnautica\ReShades Presets\Cinematic Overhaul 1.7\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: reshade\2;

;Source: "C:\Users\DPA\Desktop\Realistic Subnautica\ReShades Presets\realistica 1.0.4\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: reshade\5;

;Source: "C:\Users\DPA\Desktop\Realistic Subnautica\ReShades Presets\The Deep Dark - Realistic Shader 1.0\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: reshade\3;

;Source: "C:\Users\DPA\Desktop\Realistic Subnautica\ReShades Presets\TheDepths Shader 2.0\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: reshade\4;


;; Русификаторы
;;; GVS
Source: "E:\Users\DPA\Desktop\Realistic Subnautica\Multimedia translation\GamesVoice Studio\For Linux (Powered by Dimas_Petrov)\Subnautica_Data\*"; DestDir: "{app}\Subnautica_Data\"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: multimedia\RUS\GVS;
;;;MVOS
Source: "E:\Users\DPA\Desktop\Realistic Subnautica\Multimedia translation\Mechanics VoiceOver (R.G. MVO) Studio\For Linux (v1.21 Powered by Dimas_Petrov)\Subnautica_Data\*"; DestDir: "{app}\Subnautica_Data\"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: multimedia\RUS\MVO;

Source: "E:\Users\DPA\Desktop\Realistic Subnautica\Multimedia translation\Original v2025\Subnautica_Data\*"; DestDir: "{app}\Subnautica_Data\"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: multimedia\Orig;

;; OpenAL
;Source: "C:\Users\DPA\Desktop\Realistic Subnautica\OpenAL support (BETA)\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: openal;

;; Автосохранение
;Source: "C:\Users\DPA\Desktop\Realistic Subnautica\Additional Mods\SubnauticaAutosave\*"; DestDir: "{app}\BepInEx\plugins\SubnauticaAutosave"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: AddMods\SAS;

;; Настройки автосохранения
;Source: "C:\Users\DPA\Desktop\Realistic Subnautica\Additional Mods\Dingo.SN.SubnauticaAutosave\15.cfg"; DestDir: "{app}\BepInEx\config"; DestName: "Dingo.SN.SubnauticaAutosave.cfg"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: AddMods\SAS\15;

;Source: "C:\Users\DPA\Desktop\Realistic Subnautica\Additional Mods\Dingo.SN.SubnauticaAutosave\30.cfg"; DestDir: "{app}\BepInEx\config"; DestName: "Dingo.SN.SubnauticaAutosave.cfg"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: AddMods\SAS\30;

;Source: "C:\Users\DPA\Desktop\Realistic Subnautica\Additional Mods\Dingo.SN.SubnauticaAutosave\1h.cfg"; DestDir: "{app}\BepInEx\config"; DestName: "Dingo.SN.SubnauticaAutosave.cfg"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: AddMods\SAS\1h;

;Source: "C:\Users\DPA\Desktop\Realistic Subnautica\Additional Mods\Dingo.SN.SubnauticaAutosave\1h30.cfg"; DestDir: "{app}\BepInEx\config"; DestName: "Dingo.SN.SubnauticaAutosave.cfg"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: AddMods\SAS\1h30;

;Source: "C:\Users\DPA\Desktop\Realistic Subnautica\Additional Mods\Dingo.SN.SubnauticaAutosave\2h.cfg"; DestDir: "{app}\BepInEx\config"; DestName: "Dingo.SN.SubnauticaAutosave.cfg"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: AddMods\SAS\2h;

; Дополнительные моды
;Source: "C:\Users\DPA\Desktop\Realistic Subnautica\Additional Mods\VolumeControl\*"; DestDir: "{app}\BepInEx\plugins\VolumeControl\"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: AddMods\VoC;

;Source: "C:\Users\DPA\Desktop\Realistic Subnautica\Additional Mods\Performance Booster\*"; DestDir: "{app}\BepInEx\plugins\Performance Booster\"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: AddMods\PB;

;Source: "C:\Users\DPA\Desktop\Realistic Subnautica\Additional Mods\FOVSlider\*"; DestDir: "{app}\BepInEx\plugins\FOVSlider\"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: AddMods\FOV;

; Технические моды

;Source: "C:\Users\DPA\Desktop\Realistic Subnautica\Technical Mods\FindMyUpdates\*"; DestDir: "{app}\BepInEx\plugins\FindMyUpdates\"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: TchMds\FMU;

;Source: "C:\Users\DPA\Desktop\Realistic Subnautica\Technical Mods\SubnauticaModManager\*"; DestDir: "{app}\BepInEx\plugins\SubnauticaModManager\"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: TchMds\SMM;

[Run]
Filename: "https://dimas-petrov.github.io/Realistic-Subnautica-ModPack/"; Description: "Открыть Wiki-сайт проекта"; Flags: postinstall shellexec skipifsilent unchecked

; Типы установки
[Types]
Name: "full"; Description: "Полная установка"
Name: "fullexp"; Description: "Полная установка + эксперементальные моды"
Name: "compact"; Description: "Установка компакт."
Name: "custom"; Description: "Пользовательская"; Flags: iscustom

[Components]
Name: "multimedia"; Description: "Multimedia Translation"; Types: full
Name: "multimedia\RUS"; Description: "Русификаторы озвучки и текста (субтитры, КПК)"; Flags: exclusive
Name: "multimedia\RUS\MVO"; Description: "Mechanics VoiceOver (R.G. MVO) Studio"; Flags: exclusive
Name: "multimedia\RUS\GVS"; Description: "GamesVoice Studio"; Flags: exclusive
Name: "multimedia\Orig"; Description: "Original"; Flags: exclusive



Name: "Opt"; Description: "Optional Mods"; Types: full custom;
Name: "Opt\OTM"; Description: "Oxygen Tank Monitor 2025.1.0.0.0"; Types: full custom;
Name: "Opt\SGC"; Description: "Savegame customizer 2025"; Types: full custom;
Name: "opt\SBSN"; Description: "Sleek Bases 2.3"; Types: full custom;
Name: "opt\RTL"; Description: "RepairTransportLights 1.0 (Делает свет фар транспорта или фонариков мягко-белым, вместо мягкого-голубого)"; Types: full custom;
Name: "opt\Radio"; Description: "Radio (Experemental BETA MOD)"; Types: fullexp;

Name: "program"; Description: "Обязательные API\Библеотеки\Моды"; Types: full compact custom; Flags: fixed

Name: "program\0"; Description: "Tobey's BepInEx Pack for Subnautica 5.4.23-pack.3.0.0"; Types: full compact custom; Flags: fixed

Name: "program\1"; Description: "Nautilus 1.0.0 pre.49"; Types: full compact custom; Flags: fixed

Name: "program\2"; Description: "AdvancedInventory 1.0.4a"; Types: full compact custom; Flags: fixed

Name: "program\DeathRun"; Description: "Deathrun Remade 1.1.3"; Types: full compact custom; Flags: fixed

Name: "program\DeathRun\TRANS"; Description: "Translations DeathRun Remade";

Name: "program\DeathRun\TRANS\LANG_RUS"; Description: "Перевести на русский - DeathRun Remade"; Flags: exclusive

Name: "program\DeathRun\TRANS\LANG_RUS\MaMont"; Description: "Перевод от MAMONTENOK"; Flags: exclusive

Name: "program\DeathRun\TRANS\LANG_RUS\Dar"; Description: "Перевод от Darmar"; Flags: exclusive

Name: "program\DeathRun\TRANS\LANG_RUS\ani"; Description: "Перевод от Anikeevv"; Flags: exclusive

Name: "program\bagequip"; Description: "Bag Equipment 1.2.1"; Types: full compact custom; Flags: fixed

Name: "program\UnkNM"; Description: "Unknown Name 2.0.0.1"; Types: full compact custom; Flags: fixed

Name: "program\RollCtrl"; Description: "Roll Control 5.4.3"; Types: full compact custom; Flags: fixed

Name: "program\Fixes"; Description: "Fixes 1.4.0"; Types: full compact custom; Flags: fixed

Name: "program\Tweaks"; Description: "Tweaks 1.2.0"; Types: full compact custom; Flags: fixed

Name: "program\Weather"; Description: "Epic Weather 0.1.0"; Types: full compact custom; Flags: fixed

Name: "program\HRH"; Description: "HydronauticaHammer 2.0.3"; Types: full compact custom; Flags: fixed

Name: "program\CSL"; Description: "CustomLoadScreen 2.0.0"; Types: full compact custom; Flags: fixed

Name: "program\SES"; Description: "EnhancedSleep 1.0.0.0e"; Types: full compact custom; Flags: fixed

Name: "program\PFD"; Description: "Pictures_from_database 1.01"; Types: full compact custom; Flags: fixed

;Name: "debuging"; Description: "Копировать файл настроек Subnautica (рекомендуется, заменяет ваш файл параметров игры)"; Types: full compact custom

;Name: "openal"; Description: "Сменить аудиодвижок игры на OpenAL (экспериментально, улучшает погружение в игру, за счёт более широкого использования алгоритмов аудио, особенно заметно в наушниках!)"; Types: full

;Name: "ReShade"; Description: "Установить ReShade"; Types: full
;Name: "ReShade\1"; Description: "Aeonic 2023"; Flags: checkablealone; Types: full compact
;Name: "ReShade\2"; Description: "Cinematic Overhaul"; Flags: checkablealone; Types: full
;Name: "ReShade\3"; Description: "The Deep Dark"; Flags: checkablealone; Types: full
;Name: "ReShade\4"; Description: "TheDepths Shader"; Flags: checkablealone; Types: full
;Name: "ReShade\5"; Description: "Realistica Shader"; Flags: checkablealone; Types: full


; Дополнительные моды
;Name: "AddMods"; Description: "Дополнительные настройки и модификации"; Types: full custom;

;Name: "AddMods\VoC"; Description: "Дополнительные настройки звука во вкладке Mods"; Types: full custom;

;Name: "AddMods\PB"; Description: "Дополнительные настройки графики во вкладке Графика (полезно для слабых устройств)"; Types: full custom;

;Name: "AddMods\FOV"; Description: "Доп.настройка FOV во вкладке Mods для экранов шире 16:9"; Types: full custom;

;Name: "AddMods\SAS"; Description: "Автосохранение игрового процесса"; Types: full custom;
;Name: "AddMods\SAS\15"; Description: "Сохранять игровой процесс каждые 15 мин.(рекомендуется)"; Flags: exclusive
;Name: "AddMods\SAS\30"; Description: "Сохранять игровой процесс каждые 30 мин."; Flags: exclusive
;Name: "AddMods\SAS\1h"; Description: "Сохранять игровой процесс каждый час"; Flags: exclusive
;Name: "AddMods\SAS\1h30"; Description: "Сохранять игровой процесс каждые 1,5 часа"; Flags: exclusive
;Name: "AddMods\SAS\2h"; Description: "Сохранять игровой процесс каждые 2 часа"; Flags: exclusive

; Технические моды

;Name: "TchMds"; Description: "Технические модификации"; Types: full custom;
;Name: "TchMds\FMU"; Description: "Менеджер обновлений для модификаций FindMyUpdates"; Types: full custom;
;Name: "TchMds\SMM"; Description: "Менеджер модификаций (просмотр списка всех модификаций в игре)"; Types: full custom;

[Icons]
Name: "{group}\My Program"; Filename: "{app}\MyProg.exe"; 

[Code]
const
  // Скопируй ПЕРВЫЕ 10 символов из файла:
  // Subnautica_Data\StreamingAssets\__buildtime.txt
  // Пример: '10/03/2025' или '2025.03.10' — зависит от формата файла
  RequiredBuildDate = '10/03/2025';

var
  DonateButton, SupportButton: TButton;
  SubnauticaPath: string;

// ============================================================
// ПОИСК ПУТИ К ИГРЕ
// ============================================================

function TryGetPathFromUninstall: string;
var
  S: string;
begin
  Result := '';

  if RegQueryStringValue(HKLM,
       'SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\Steam App 264710',
       'InstallLocation', S) then
  begin
    if FileExists(S + '\Subnautica.exe') then
    begin
      Result := S;
      Exit;
    end;
  end;

  if RegQueryStringValue(HKCU,
       'SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\Steam App 264710',
       'InstallLocation', S) then
  begin
    if FileExists(S + '\Subnautica.exe') then
    begin
      Result := S;
      Exit;
    end;
  end;

  if RegQueryStringValue(HKLM,
       'SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Uninstall\Steam App 264710',
       'InstallLocation', S) then
  begin
    if FileExists(S + '\Subnautica.exe') then
      Result := S;
  end;
end;

function TryGetPathFromSteamFolder: string;
var
  SteamRoot, TestPath: string;
begin
  Result := '';
  if RegQueryStringValue(HKCU, 'Software\Valve\Steam', 'SteamPath', SteamRoot) or
     RegQueryStringValue(HKLM, 'SOFTWARE\WOW6432Node\Valve\Steam', 'InstallPath', SteamRoot) then
  begin
    TestPath := SteamRoot + '\steamapps\common\Subnautica';
    if FileExists(TestPath + '\Subnautica.exe') then
      Result := TestPath;
  end;
end;

function TryGetPathFromCommonLocations: string;
var
  Drives: array[0..3] of string;
  i: Integer;
  Base, TestPath: string;
begin
  Result := '';
  Drives[0] := ExpandConstant('{pf}');
  Drives[1] := ExpandConstant('{pf32}');
  Drives[2] := 'C:';
  Drives[3] := 'D:';
  for i := 0 to High(Drives) do
  begin
    Base := Drives[i];
    TestPath := Base + '\Subnautica';
    if FileExists(TestPath + '\Subnautica.exe') then
    begin
      Result := TestPath;
      Exit;
    end;
    TestPath := Base + '\Steam\steamapps\common\Subnautica';
    if FileExists(TestPath + '\Subnautica.exe') then
    begin
      Result := TestPath;
      Exit;
    end;
  end;
end;

function LocateSubnautica(): string;
begin
  Result := TryGetPathFromUninstall;
  if Result <> '' then Exit;

  Result := TryGetPathFromSteamFolder;
  if Result <> '' then Exit;

  Result := TryGetPathFromCommonLocations;

  if Result = '' then
    Result := ExpandConstant('{pf}\Subnautica');
end;

function FindSubnauticaPath(Param: string): string;
begin
  if SubnauticaPath = '' then
    SubnauticaPath := LocateSubnautica();
  Result := SubnauticaPath;
end;

// ============================================================
// ПРОВЕРКА ЛИЦЕНЗИИ
// ============================================================

// Проверяет наличие Steam-манифеста в папке steamapps рядом с игрой.
// Путь игры: X:\Steam\steamapps\common\Subnautica
// Манифест:  X:\Steam\steamapps\appmanifest_264710.acf
function IsSteamManifestPresent(const GamePath: string): Boolean;
var
  SteamAppsPath: string;
begin
  // Поднимаемся на два уровня: Subnautica -> common -> steamapps
  SteamAppsPath := ExtractFilePath(
    RemoveBackslash(
      ExtractFilePath(RemoveBackslash(GamePath))
    )
  );
  Result := FileExists(SteamAppsPath + 'appmanifest_264710.acf');
end;

// Эвристика: подозрительный путь = X:\Games\... или Program Files без Steam.
// Такой путь характерен для ручной установки пиратской копии.
function IsPathSuspicious(const GamePath: string): Boolean;
var
  P: string;
begin
  Result := False;
  P := Lowercase(GamePath);

  // Проверяем X:\Games\ИмяПапки (Games — прямо на корне диска)
  if (Length(P) >= 2) and (P[2] = ':') then
  begin
    if Pos(':\games\', P) = 2 then
    begin
      Result := True;
      Exit;
    end;
  end;

  // Program Files или Program Files (x86) — но не через Steam (нет steamapps)
  if Pos('\steamapps\', P) = 0 then
  begin
    if (Pos('\program files\', P) > 0) or
       (Pos('\program files (x86)\', P) > 0) then
    begin
      Result := True;
    end;
  end;
end;

// Комплексная проверка: сначала манифест, потом путь, потом dll как запасной вариант.
function IsLicensedInstall(const GamePath: string): Boolean;
begin
  // Steam-манифест — самый надёжный индикатор легальной установки
  if IsSteamManifestPresent(GamePath) then
  begin
    Result := True;
    Exit;
  end;

  // Путь явно указывает на пиратскую установку
  if IsPathSuspicious(GamePath) then
  begin
    Result := False;
    Exit;
  end;

  // Нестандартное расположение: допускаем по наличию Steam DLL
  Result := FileExists(GamePath + '\steam_api64.dll') or
            FileExists(GamePath + '\steam_api.dll');
end;

// ============================================================
// ЧТЕНИЕ ДАТЫ СБОРКИ
// ============================================================

// Читает первые 10 символов из __buildtime.txt с защитой от BOM и переносов строк.
// RequiredBuildDate должна совпадать с первыми 10 символами этого файла.
function GetBuildDate(const GamePath: string): string;
var
  FilePath: string;
  Content: AnsiString;
  S: string;
  I: Integer;
begin
  Result := '';
  FilePath := GamePath + '\Subnautica_Data\StreamingAssets\__buildtime.txt';
  if not LoadStringFromFile(FilePath, Content) then
    Exit;

  S := Trim(string(Content));

  // Пропускаем не-ASCII символы в начале (BOM: $EF $BB $BF и другие)
  I := 1;
  while (I <= Length(S)) and (Ord(S[I]) > 127) do
    Inc(I);
  S := Copy(S, I, Length(S));

  // Берём только первую строку (на случай, если файл многострочный)
  I := Pos(#13, S);
  if I > 0 then S := Copy(S, 1, I - 1);
  I := Pos(#10, S);
  if I > 0 then S := Copy(S, 1, I - 1);

  // Первые 10 символов = дата
  Result := Trim(Copy(S, 1, 10));
end;

// ============================================================
// КНОПКИ
// ============================================================

procedure DonateButtonClick(Sender: TObject);
var
  ErrorCode: Integer;
begin
  ShellExec('open', 'https://www.donationalerts.com/r/dimas_petrov', '', '',
    SW_SHOWNORMAL, ewNoWait, ErrorCode);
end;

procedure SupportButtonClick(Sender: TObject);
var
  ErrorCode: Integer;
begin
  ShellExec('open', 'https://taplink.cc/urls_dimas_petrov', '', '',
    SW_SHOWNORMAL, ewNoWait, ErrorCode);
end;

procedure InitializeWizard;
begin
  DonateButton := TButton.Create(WizardForm);
  DonateButton.Parent := WizardForm;
  DonateButton.Caption := 'Поддержать проект';
  DonateButton.OnClick := @DonateButtonClick;
  DonateButton.Width := ScaleX(120);
  DonateButton.Height := ScaleY(25);
  DonateButton.Left := ScaleX(10);
  DonateButton.Top := WizardForm.ClientHeight - DonateButton.Height - ScaleY(10);

  SupportButton := TButton.Create(WizardForm);
  SupportButton.Parent := WizardForm;
  SupportButton.Caption := 'Соц.сети автора';
  SupportButton.OnClick := @SupportButtonClick;
  SupportButton.Width := ScaleX(100);
  SupportButton.Height := ScaleY(25);
  SupportButton.Left := DonateButton.Left + DonateButton.Width + ScaleX(10);
  SupportButton.Top := DonateButton.Top;
end;

// ============================================================
// ПРОВЕРКИ ПРИ НАЖАТИИ «ДАЛЕЕ»
// ============================================================

function NextButtonClick(CurPageID: Integer): Boolean;
var
  SelectedPath, BuildDate: string;
begin
  Result := True;

  if CurPageID = wpSelectDir then
  begin
    SelectedPath := WizardForm.DirEdit.Text;

    // 1. Пустой путь
    if SelectedPath = '' then
    begin
      MsgBox('Пожалуйста, укажите папку с игрой.', mbError, MB_OK);
      Result := False;
      Exit;
    end;

    // 2. Subnautica.exe не найден — ВОТ ПОЧЕМУ РАНЬШЕ МОЛЧАЛИ ВСЕ ПРОВЕРКИ.
    //    Теперь явно сообщаем об ошибке вместо тихого пропуска.
    if not FileExists(SelectedPath + '\Subnautica.exe') then
    begin
      MsgBox(
        'Файл Subnautica.exe не найден в указанной папке.' + #13#10 +
        'Пожалуйста, выберите корневую папку игры.' + #13#10#13#10 +
        'Текущий путь: ' + SelectedPath,
        mbError, MB_OK);
      Result := False;
      Exit;
    end;

    // 3. Проверка лицензии
    if not IsLicensedInstall(SelectedPath) then
    begin
      if MsgBox(
        'Внимание: обнаружена возможная нелицензионная копия игры.' + #13#10 +
        'Разработчик МодПака не поддерживает пиратские версии и не гарантирует' + #13#10 +
        'корректную работу модов или игры в целом.' + #13#10#13#10 +
        'Продолжить установку на свой страх и риск?',
        mbConfirmation, MB_OKCANCEL or MB_DEFBUTTON2) = IDCANCEL then
      begin
        Result := False;
        Exit;
      end;
    end;

    // 4. Проверка версии игры по дате сборки
    BuildDate := GetBuildDate(SelectedPath);
    if BuildDate = '' then
    begin
      if MsgBox(
        'Не удалось определить версию игры.' + #13#10 +
        'Файл __buildtime.txt отсутствует или недоступен.' + #13#10#13#10 +
        'Продолжить установку?',
        mbConfirmation, MB_OKCANCEL or MB_DEFBUTTON2) = IDCANCEL then
      begin
        Result := False;
        Exit;
      end;
    end
    else if BuildDate <> RequiredBuildDate then
    begin
      if MsgBox(
        'Версия игры не совпадает с требуемой для данного МодПака.' + #13#10 +
        'Обнаруженная версия: ' + BuildDate + #13#10 +
        'Требуемая версия:    ' + RequiredBuildDate + #13#10#13#10 +
        'Установка может привести к ошибкам. Продолжить?',
        mbConfirmation, MB_OKCANCEL or MB_DEFBUTTON2) = IDCANCEL then
      begin
        Result := False;
        Exit;
      end;
    end;
  end;
end;