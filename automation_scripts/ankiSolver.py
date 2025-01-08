from pynput.keyboard import Key, Controller
import sys
import time

NUMBER_OF_QUESTIONS = int(sys.argv[1])
keyboard = Controller()

time.sleep(8)
for i in range(NUMBER_OF_QUESTIONS * 4):
	keyboard.press(Key.space)
	time.sleep(0.05)

