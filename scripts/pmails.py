#!/bin/python

file = open("../secret.txt", "r")
file_lines = file.readlines()
mail = file_lines[4]
passwd = file_lines[5]
file.close()

import imaplib

count = 0
obj = imaplib.IMAP4('127.0.0.1', 1143)
obj.starttls()
obj.login(mail, passwd)
obj.select('INBOX')
status, response = obj.search(None, '(UNSEEN)')
if status == 'OK':
    for num in response[0].split():
        count += 1

print(count)
obj.close()
obj.logout()
