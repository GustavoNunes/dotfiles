# My Emacs Configuration File

* [Introduction](#introduction)
* [Usage](#usage)
* [Prerequisites](#prerequisites)
* [Configuration details](#config-details)
* [Todo](#todo)

## <a name="introduction"></a> Introduction
I set up this repository to maintain my Emacs configuration stored and easily 
replicable.

## <a name="usage"></a> Usage
My configuration assumes the use of Emacs in xterm (emacs -nw).

## <a name="Prerequisites"></a> Prerequisites
* TERM env variable set to xterm-256color
* xsel program, for copy-paste integration with X in terminal-mode
* markdown program, to use markdown-mode live preview feature

## <a name="config-details"></a> Configuration details

### <a name="general-config"></a> General configuration
* Disable beep sounds.
* Activate IDO mode.
* CUA mode.
* Winner mode.
* Hide splash screen and message.
* Switch windows with ALT + cursor keys.
* Open protected files with sudo password prompt.
* 80-column delimiter configuration.
* Disable backup files
* Disable line-wrapping by default.

### <a name="display-config"></a> Display configuration
* Load Zenburn theme

### <a name="shortcuts-config"></a> Shortcuts configuration

#### General

*    <F2>  Magit

*    <F5>  Load file
*  C-<F5>  Load file and kill current buffer

*    <F6>  Load recent file

*    <F7>  Switch buffer
*  C-<F7>  Kill buffer

*    <F8>  Save buffer

* C-x t w  Change window height/width

#### php-mode

*    <F1>  Show function definition in minibuffer
*  C-<F1>  Open function definition in external browser

*    <F9>  Run PHPUnit

#### scheme-interaction-mode 

*    <F9>  Run expression before cursor

#### haskell-mode

*    <F12> Open interactive buffer

### <a name="php-config"></a> PHP configuration
* Debugger (GEBEN).
* Auto-completion.
* 80-column delimiter.
* Show line numbers.

## <a name="todo"></a> Todo ##
- Fix and learn/use org-mode.
- New shortcut for opening buffer in new frame.
- Learn to include all files in a given directory.
- Find/create a mysql management plugin.
