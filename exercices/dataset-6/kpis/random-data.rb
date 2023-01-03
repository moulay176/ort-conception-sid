require 'pry'
require 'csv'
require 'date'

# for 1 month, random data of dev, ticket type
# in_progress date as business day
# done date as business day

MONTHS = Date::ABBR_MONTHNAMES.compact
DEVS = ["adriel", "daniel", "jordan", "justin", "keren", "lisa", "ruben"]

def dev_capacity
  Date::ABBR_MONTHNAMES.compact.map do |month|
    capacity = rand(3..6)
    devs = DEVS.sample(capacity)
  end
end

def business_date(date)
  return date + 2 if date.saturday?
  return date + 1 if  date.sunday?
  date
end

def type(ticket_id)
  return 'story' if ticket_id.odd?
  ['bug', 'task', 'story'].sample
end

def dev_tickets(devs, month)
  tickets = []
  devs.each do |dev|
    tickets_per_month = rand(4..16)
    tickets_per_month.times do |ticket_id|
      type = type(ticket_id)
      in_progress = business_date(Date.parse("#{month}-#{rand(1..28)}"))
      done = business_date(in_progress + rand(1..4))
      tickets << [in_progress.strftime("%d-%b-%Y"), done.strftime("%d-%b-%Y"),type, dev]
    end
  end
  tickets.sort
end

def month_tickets(month)
  capacity = rand(3..6)
  devs = DEVS.sample(capacity)
  dev_tickets(devs, month)
end

def year_tickets
  MONTHS.map do |month|
    month_tickets(month)
  end
end

tickets = year_tickets.flatten(1)
tickets.unshift(['in_progress', 'done', 'type', "dev"])
File.write("dataset-6-tickets.csv", tickets.map(&:to_csv).join)

