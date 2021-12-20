# Open the dashboard, and wait until the daily reward pops up
Start-Process chrome.exe "https://dashboard.honeygain.com/"
Start-Sleep -Seconds 20

# Create an object that allows to send keystrokes
$wshell = New-Object -ComObject wscript.shell;

# Activate the Dashboard window
$wshell.AppActivate("Honeygain – Google Chrome")
Start-Sleep -Seconds 1

# Send "tab" key 21 times to activate daily rewards
for ($i=1; $i -le 21; $i++)
{
    $wshell.SendKeys("{TAB}")
    Start-Sleep -Milliseconds 150
}

# Send "enter" key to accept reward
$wshell.SendKeys("~")
Start-Sleep -Seconds 1

# Send "tab" key 3 times to activate add-to-my-accound
for ($i=1; $i -le 2; $i++)
{
    $wshell.SendKeys("{TAB}")
    Start-Sleep -Milliseconds 150

}

# Send "enter" key to accept into account
$wshell.SendKeys("~")
Start-Sleep -Seconds 1

for ($i=1; $i -le 1; $i++)
{
    $wshell.SendKeys("{TAB}")
    Start-Sleep -Milliseconds 50

}

$wshell.SendKeys("~")
Start-Sleep -Seconds 1


# Kill the chrome window
Stop-Process -name "chrome"

if ($Error) {exit 1}
