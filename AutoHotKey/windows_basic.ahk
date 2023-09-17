#Requires AutoHotkey v2.0

 SwitchToWindowsTerminal()
{
  windowHandleId := WinExist("ahk_exe WindowsTerminal.exe")
  windowExistsAlready := windowHandleId > 0

  ; If the Windows Terminal is already open, determine if we should put it in focus or minimize it.
  if (windowExistsAlready = true)
  {
    activeWindowHandleId := WinExist("A")
    windowIsAlreadyActive := activeWindowHandleId == windowHandleId

    if (windowIsAlreadyActive)
    {
      ; Minimize the window.
      WinMinimize(windowHandleId)
    }
    else
    {
      ; Put the window in focus.
      WinActivate(windowHandleId)
      WinShow(windowHandleId)
    }
  }
  ; Else it's not already open, so launch it.
  else
  {
    Run("wt")
  }
}

; Hotkey to use Ctrl+Shift+C to launch/restore the Windows Terminal.
^+t::SwitchToWindowsTerminal()


OpenDownloadsFolder()
{
  windowHandleId := WinExist("Downloads")
  windowExistsAlready := windowHandleId > 0

  ; If the Windows Terminal is already open, determine if we should put it in focus or minimize it.
  if (windowExistsAlready = true)
  {
    activeWindowHandleId := WinExist("A")
    windowIsAlreadyActive := activeWindowHandleId == windowHandleId

    if (windowIsAlreadyActive)
    {
      ; Minimize the window.
      WinMinimize(windowHandleId)
    }
    else
    {
      ; Put the window in focus.
      WinActivate(windowHandleId)
      WinShow(windowHandleId)
    }
  }
  ; Else it's not already open, so launch it.
  else
  {
    Run("explorer.exe C:\Users\bisin\Downloads")
  }
}

; Hotkey to use Ctrl+Shift+C to launch/restore the Windows Terminal.
^+d::OpenDownloadsFolder()