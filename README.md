# Universal Syn X

<p>
  <a href="https://github.com/KribbyWare/Universal-Syn-X/releases/latest"><img alt="GitHub Release (Latest by Date)" src="https://img.shields.io/github/v/tag/KribbyWare/Universal-Syn-X?color=1f2829&label=Latest&logo=github"></a>
  <a href="https://github.com/KribbyWare/Universal-Syn-X/releases/latest"><img alt="GitHub Releases" src="https://img.shields.io/github/downloads/KribbyWare/Universal-Syn-X/latest/total?color=1f2829&label=Latest%20Downloads&logo=github"></a>
  <a href="https://github.com/KribbyWare/Universal-Syn-X/releases"><img alt="All GitHub Releases" src="https://img.shields.io/github/downloads/KribbyWare/Universal-Syn-X/total?color=1f2829&label=Total%20Downloads&logo=github"></a>
</p>

<p align="center">
  <img src="https://raw.githubusercontent.com/KribbyWare/Universal-Syn-X/master/src/themes-result/UniversalSynXUI.png" width="700">
  <p align="center">
    A Remake of Synapse X
  </p>
</p>

<h1 align="center">Installation</h1>

* Download the [Latest Release](https://kribbyware.github.io/Universal-Syn-X) and extract it to a folder with [WinRar](https://win-rar.com) or any other unzip program.
* Run `Universal Syn X.exe`

<a name="themetutorial"></a><h1 align="center">Create your own theme</h1>

- Go to `%appdata%\UniversalSynX\Themes`, you can do this by pressing `Windows Key + R` and typing `%appdata%\UniversalSynX\Themes`
- Create a new file and n ame it whateveryou want but make sure you have the file extension as `.xaml`
  - To set the file extension you will have to click on `View` at the top bar of file explorer and enable `File name extensions`. After that you can create a file and it will allow you to change the file extension.
- Open the file with notepad or any other text editor of you liking and paste the following text:
```lua
<ResourceDictionary xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation"
                    xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml">
    <Color x:Key="BackgroundColor">{background-color}</Color>
    <Color x:Key="LightBackgroundColor">{lightbackground-color}</Color>
    <Color x:Key="HighlightColor">{highlight-color}</Color>
    <Color x:Key="BorderColor">{border-color}</Color>
    <Color x:Key="LightBorderColor">{lightborder-color}</Color>
    <Color x:Key="DarkForegroundColor">{darkforeground-color}</Color>
    <Color x:Key="ForegroundColor">{foreground-color}</Color>
    <Color x:Key="LogoColor">{logo-color}</Color>

    <SolidColorBrush x:Key="BackgroundBrush" Color="{StaticResource BackgroundColor}"/>
    <SolidColorBrush x:Key="LightBackgroundBrush" Color="{StaticResource LightBackgroundColor}"/>
    <SolidColorBrush x:Key="HighlightBrush" Color="{StaticResource HighlightColor}"/>
    <SolidColorBrush x:Key="BorderBrush" Color="{StaticResource BorderColor}"/>
    <SolidColorBrush x:Key="LightBorderBrush" Color="{StaticResource LightBorderColor}"/>
    <SolidColorBrush x:Key="DarkForegroundBrush" Color="{StaticResource DarkForegroundColor}"/>
    <SolidColorBrush x:Key="ForegroundBrush" Color="{StaticResource ForegroundColor}"/>
    <SolidColorBrush x:Key="LogoBrush" Color="{StaticResource LogoColor}"/>
</ResourceDictionary>
```
- Replace {background-color}, {lightbackground-color}, etc. with the colors you want!
- You can adjust the hex values that start with #, you can use a color picker, google has one built in which you can open by searching for `color picker` through google search.
  - Make sure the length of the hex value is 6 long, if its 8 it means there is an extra channel for the alpha value. This is for transparency which isn't supported by Universal Syn X and will result in weird outcomes. You need to remove the first 2 characters to make it 6 long again. (For example: `#FF202020` becomes `#202020`)
- After all that is done, restart Universal Syn X, go to settings and change the theme. It should look something like this:
<p align="center">
  <img src="https://raw.githubusercontent.com/KribbyWare/Universal-Syn-X/master/src/themes-result/UniversalSynXUI-Theme.png" width="700">
</p>
