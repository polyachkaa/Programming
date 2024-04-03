import time
from tkinter import *
import random

def activate_or_deactivate():
    if button["text"] == "Вкл":
        button["text"] = "Выкл"
        while button["text"] == "Выкл":
            for ball in balls:
                c.itemconfig(ball, fill = random.choice(colors))
            c.update()
            time.sleep(1)

    else:
        button["text"] = "Вкл"
        for ball in balls:
            c.itemconfig(ball, fill = "light grey")

def change1():
    if button2["text"] == "Я меняюсь":
        button2["text"] = ":)"
def change2():
    if button3["text"] == "Я тоже!":
        button3["text"] = ":))"

window = Tk()
window.title('Гирлянда')
text = Label(window, text='С наступающим Новым годом!', font=("Arial Bold", 14))
text.pack()
c = Canvas(window, width = 700, height = 700, bg = "grey")
c.pack()
c.create_line(0, 40, 700, 40)

colors = ["red", "light green", "blue", "purple", "light blue", "orange", "yellow"]
x = 100
balls = []

for i in range(6):
    c.create_line(x, 40, x, 200)
    ball = c.create_oval(x-40, 200, x+40, 300, fill = "light grey")
    balls.append(ball)
    x += 100
button = Button(c, text = "Вкл", command = activate_or_deactivate)
button.place(x = 330, y = 400)
button2 = Button(c, text = "Я меняюсь", command = change1)
button2.place(x = 150, y = 500)
button3 = Button(c, text = "Я тоже!", command = change2)
button3.place(x = 500, y = 500)


window.mainloop()


