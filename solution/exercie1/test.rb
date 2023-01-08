require 'date'

date = "1-7-2011"

wday_names = ['sun', 'mon', 'tues', 'wed','thu','fri','sat']
p date_obj = Date.parse(date)
wday = date_obj.wday
p wday_names[wday]


#matchdate = date.match(/(.+)-(.+)-(.+)/)
#p date
#p matchdate[2]+"-"+matchdate[1]+"-"+matchdate[3]
