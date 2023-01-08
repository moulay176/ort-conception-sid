require 'date'

wday_names = ['sun', 'mon', 'tues', 'wed']
date = '04-01-2023'
p date_obj = Date.parse(date)
wday = date_obj.wday
p wday_names[wday]