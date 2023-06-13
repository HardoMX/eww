#!/bin/python

file = open("/home/arch/.config/eww/personal/personal.txt", "r")
file_lines = file.readlines()
mail = file_lines[2]
passwd = file_lines[3]
file.close()

import imaplib

obj = imaplib.IMAP4_SSL('imap.gmail.com',993)
obj.login(mail, passwd)
obj.select("inbox")
print(len(obj.uid('search', 'X-GM-RAW "Category:Primary is:unread"')[1][0].split()))

obj.close()
