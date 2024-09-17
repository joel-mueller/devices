# Whats app poll

You should have python allready installed. Install the required libary for running the script.

```shell
python3 -m pip install pynput
```

Go to the directory you want the script and use vim to edit it (`i` to edit, esc button to go into reader mode, `:wq` to safe)

```shell
vim poll.py
```

Run the python script

```shell
python3 poll.py
```

```python
from datetime import date, timedelta
from pynput.keyboard import Key, Controller
import time
import locale

locale.setlocale(locale.LC_TIME, 'de_DE')

def alldays(startDate, endDate, weekday):
    d = date(startDate[0], startDate[1], startDate[2])
    e = date(endDate[0], endDate[1], endDate[2])
    d += timedelta(days = (weekday - d.weekday()) % 7)
    while d < e:
        yield d
        d += timedelta(days = 7)

def append(dates, weekdays, startDate, endDate):
    for i in range(len(weekdays)):
        if weekdays[i]:
            for j in alldays(startDate, endDate, i):
                dates.append(j)
    dates.sort()

def datePrinter(weekdays, startDate, endDate, index):
    dates = []
    append(dates, weekdays, startDate, endDate)
    time.sleep(5)
    for i in dates[index[0]:index[1]]:
        keyboard = Controller()
        keyboard.type(i.strftime("%A, %d %B %Y"))
        keyboard.press(Key.tab)
        keyboard.press(Key.tab)
    time.sleep(1)

#Use it here
weekdays = [False, False, False, False, True, True, False]
startDate = [2024, 4, 1]
endDate = [2030, 12, 31]
index = [0, 12]
datePrinter(weekdays, startDate, endDate, index)
```

