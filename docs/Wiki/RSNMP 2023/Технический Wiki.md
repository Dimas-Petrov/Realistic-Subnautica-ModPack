---
title: Технические вопросы
description: Realistic Subnautica 2023 - Технический Wiki
---

# Realistic Subnautica 2023 - Технический Wiki

## Системные, лицензионные требования и версия игры.

МодПак имеет >50 модификаций среди которых это механизм автосохранения процесса игры, вследствие чего системные требования немного повысились в сравнение со стандартной игрой.

1. МодПак полноценно поддерживается только лицензионная версия игры. Версии 0.1 — 0.7 поддерживаются на версии игры от марта 2023 года (Обновление для Steam Deck).
1. Чтобы не ждать долгий процесс автосохранения каждые 15 минут лучше использовать SSD или HDD, но с кеш-памятью и скоростью вращения шпинделя 7200 об/мин.
1. Из-за большого кол-ва модификаций рекомендуется как минимум на 4Гб больше ОЗУ в отличие от стандартных рекомендуемых сис.требований игры.
1. На системах Windows рекомендуется как минимум 4Гб файла подкачки для HDD. Если система не соответствует требованию №3, то в 2-3 раза больше. Для SSD игнорируйте это требование.

??? abstract "Тестовая конфигурация ПК"

    Сборка собиралась и проходила начальное тестирование на следующей системе:

    - OC: Windows 11 22H2.
    - ОЗУ: 16Гб (2 по 8Гб в двухканальном режиме) DDR3 1333МГц 7-8-7-21 (тайминги с малым разгоном) Kingston KS-HX318C10FB/8.
    - ЦП: AMD Phenom II X6 1090T (аналог 1100T с пониженной на 100МГц частотой)
    - GPU: nVidia GeForce GTX 750Ti 2Gb PCI-e 2.0 16x
    - ROM: HDD 1Tb WD Green 5200 Об/мин SATA 2
    - Мат.плата (!особое внимание!): MSI 770-C45
    - Звук: Creative SB Audigy 4 (Отлично помогает погрузится в игровой процесс в наушниках) + Creative SB Audigy Live! 5.1, на базе драйвера kX Project
    - Разрешение монитора: Classic Full HD.

## Какие модификации и библиотеки входят в сборку?

??? abstract "Список"

    1. Accelerated Start v2.0.2
    1. AdvancedInventory v1.0.4
    1. Anisotropic Fix v2.0
    1. Attitude Indicator v4.0.0
    1. Bag Equipment v1.2.0
    1. Base Clocks v1.0.0.0
    1. Base Light Switch v2.1.0
    1. BepInEx Tweaks v1.2.1
    1. Blueprint Search Bar v1.0.0
    1. Configuration Manager v17.1
    1. Configuration Manager Tweaks v1.2
    1. Copper From Scanning v1.0.0
    1. Creature Flee Fix v1.0
    1. Custom Batteries (Purple Edition) v1.0.0.0
    1. Custom Craft 3 (Purple Edition) v1.0.0.4
    1. Custom Sunbeam Countdown v1.1.1
    1. Custom Load Screen v2.0.0 | в версии МодПака 0.6.0 содержится не менее 40 шт. загрузочеых экранов.
    1. Cyclops Docking Mod v2.1.1
    1. DarkerLost River v1.0.0
    1. Databank Scroll Fix v1.0.0
    1. Deathrun Remade + русификатор v1.1.2
    1. De-Extinction + русификатор v2.1.
    1. Disable Options Tabs v1.0.0
    1. Drop Storage Items v1.0.1.0
    1. Drop Upgrades On Destroy v2.0.0.0
    1. Dynamic Scanner Blips v1.1
    1. Easy Fast Craft v1.0.0
    1. ECC Library v2.1.1
    1. Enhanced Sleep v1.0.0.0
    1. Epic Structure Loader v1.0.2
    1. Epic Weather v0.0.8
    1. Faster Build v1.0.0
    1. Faster PDA Scan v1.0.0
    1. Faster Growth BepinEx v1.0.0
    1. Fast Loading Screen v2.0.1
    1. File Tree v1.0.1
    1. Find My Updates v1.0.5
    1. Fixes v1.1.0
    1. FOV Slider v1.0.2
    1. Free Look v2.4.1
    1. Geysers Performance Fix v1.0.1.0
    1. Grounded Items v1.0
    1. Habitat Control Panel v2.1.0
    1. Hull Reinforcement Fix v1.2.6
    1. Hydronautica's Hammer Mod v1.0.0
    1. Interpolation Fix v1.0.1
    1. Laser Cutter Speed v2.0.0
    1. Lights Drain Power v1.0.0.0
    1. Mod Structure Helper v1.0.8
    1. Moonpool Rotation v1.1.0
    1. More Lockers v1.0.1
    1. Music Fading Out Fix v1.0.2.0
    1. Nautilus v1.0.0.41
    1. Performance Booster v2.1
    1. Precursor Mesh Fix v1.0.0
    1. Quick Slots Plus v2.2.1
    1. Quit To Desktop v1.0.0
    1. Radial Tabs (Purple Edition) v2.0.0.0
    1. Ramunes Customized Storage v1.0.3
    1. Random Creature Size v1.0.0.0
    1. Realistic Survival Rates v1.0.0
    1. Roll Control v5.3.1
    1. Rotatable Ladders v1.1.0
    1. Show Available Items v1.0.7
    1. Simple Main Menu v1.0.2
    1. SnapBuilder v2.4.0
    1. Stats Tracker v4.1.0
    1. Subnautica Altitude Meter v2.0.1
    1. Subnautica Autosave v2.2.0
    1. SubnauticaModManager for BepInEx v1.2.3
    1. Texture Replacer v1.2.1
    1. Todo List v1.1.2
    1.  Unknown LifePod v1.9.3.1
    1.  Unknown Name v2.0.0.0
    1.  VehicleFramework v1.8.9
    1. VisibleLockerInterior v2.0.0
    1. Volume Control v1.2.1
    1. Русификатор озвучки R.G. Mechanics VoiceOver Studio | 462Мб от общего объёма установщика
    1. GamesVoice Studio | 262Мб от общего объёма установщика
    1. ReShade + 5 пресетов.
    1. DSOALL - движок OpenAL заменяющий DirectSound

## Как исправить ошибки при установке МодПака через инсталлятор?

Если при установке МодПака возникают ошибки нужно:
1. Убедится в том, что вы запустили установку от имени администратора. 
1. Удалить файл, из-за которого возникла ошибка, если инсталлятор пишет "файл уже существует". 
1. Удалить МодПак предыдущей версии (в случае, если будет удаляться МодПак версии 0.4.0 будут удалены файлы сохранений игры, рекомендуется создать их резервную копию перед тем как удалять).

## Как исправить "сломанную камеру"

Если в процессе игры, у вас перестала поворачиваться камера/голова персонажа или сломалось положение тела, либо вообще некорректно открывается КПК, то в режиме плавания дважды нажмите на правую клавишу Alt. 

!!! warning "Предупреждение"
    - **Учтите, что данный способ работает, только если в процессе установки МодПака, в разделе компонентов, вы выбрали пункт "заменить настройки игры" (может называться иначе, в зависимости от версии МодПака).**
    - **Данный метот отключает работу мода Roll Control, позволяющего иметь расширенное управление движением персонажа и мотылька.**

## Почему появляются камикадзе из выступов известняка, сланца, песчаника и прочих пород?

В первую очередь это связано с тем, что вы установили МодПак на нелицензионную версию Subnautica. Причиной этому являются моды которые активируют отключённые скрипты проверки лицензии внутри игрового процесса.

!!! note "Как исправить"

    Для игры на нелицензионной версии, вы можете удалить эти моды. Если же у вас имеется лицензия Steam, то переживать не о чем. 

    Вот эти моды: 
    1. RamunesCustomizedStorage - позволяет настраивать объём хранилищ, таких как шкафчики, модуль хранилищ транспортных средств и пр.

    1. FOVSlider - Увеличивает Поле обзора слайдера с 90 до 120 макс.

    1. FindMyUpdates - Стандартный мод проверки версии для Subnautica 2.0 — проверяет установленные моды на наличие обновлений каждый раз при запуске игры.

    1. DisableOptionsTabs - Добавляет переключатели для отключения вкладок в меню «Параметры» («Графика», «Клавиатура», «Устранение неполадок», «Активировать ключ» и т. д.).

    1. BaseClocks - Добавляет возможность строить двое часов (аналоговые и электронные) в конструктор среды обитания.

    Оригинал информации: https://t.me/rl_sub/23/2024