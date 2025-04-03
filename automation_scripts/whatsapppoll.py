# Note: pyinput has to be installed : python3 -m pip install pynput
from datetime import date, timedelta
from pynput.keyboard import Key, Controller
import time
import locale

locale.setlocale(locale.LC_TIME, 'de_DE')

NUMBER_OF_QUESTIONS = 12
WEEKDAYS = [True, True, True, True, True, True, True]
START_DATE = [2024, 10, 26]
END_DATE = [2024, 11, 12]
INDEX = 0

def alldays(weekday):
    d = date(START_DATE[0], START_DATE[1], START_DATE[2])
    e = date(END_DATE[0], END_DATE[1], END_DATE[2]) + timedelta(days=1)
    d += timedelta(days = (weekday - d.weekday()) % 7)
    while d < e:
        yield d
        d += timedelta(days = 7)

def append(dates):
    for i in range(len(WEEKDAYS)):
        if WEEKDAYS[i]:
            for j in alldays(i):
                dates.append(j)
    dates.sort()

def datePrinter():
    dates = []
    append(dates)
    time.sleep(8)
    for i in range(NUMBER_OF_QUESTIONS):
        j = NUMBER_OF_QUESTIONS * INDEX + i
        if len(dates) > j:
            date = dates[j]
            keyboard = Controller()
            keyboard.type(date.strftime("%A, %d %B %Y"))
            keyboard.press(Key.tab)
            keyboard.press(Key.tab)
    time.sleep(1)

datePrinter()