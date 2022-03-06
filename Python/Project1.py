from datetime import date 
today = date.today()
print("Today's date:", today)

import datetime

a = datetime.datetime.now()
print ("The time is now: = %s:%s:%s" % (a.hour, a.minute, a.second))