[postgres@PostG-STB2 ~]$ cat test.awk
Last failed login: Tue Mar 25 17:14:35 +07 2025 from 192.168.157.1 on ssh:notty
There was 1 failed login attempt since the last successful login.
Last login: Mon Mar 24 09:57:39 2025 from 192.168.157.1

--------- print line having '192'
[postgres@PostG-STB2 ~]$ awk '/192/ {print}' test.awk
Last failed login: Tue Mar 25 17:14:35 +07 2025 from 192.168.157.1 on ssh:notty
Last login: Mon Mar 24 09:57:39 2025 from 192.168.157.1

-------- print the 2nd and 4th word on which the line having '192' and seperate word is space
[postgres@PostG-STB2 ~]$ awk '/192/ {print $2, $4}' test.awk
failed Tue
login: Mar

-------- print the 2nd and 4th word on which the line having '192' and seperate word is 'Mar'
[postgres@PostG-STB2 ~]$ awk -F 'Mar' '/192/ {print $2}' test.awk
 25 17:14:35 +07 2025 from 192.168.157.1 on ssh:notty
 24 09:57:39 2025 from 192.168.157.1

