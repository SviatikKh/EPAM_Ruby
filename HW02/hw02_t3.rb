require 'date'

logs = "2018-04-23 17:17:49.7 ubuntu-xenial[14319] Debug - Calling core with action: event
2018-04-23 17:17:49.7 ubuntu-xenial[14319] Debug - connecting to: 10.6.246.101
2018-04-23 17:17:49.8 ubuntu-xenial[14319] Debug - docker event processed
2018-04-23 17:18:19.5 ubuntu-xenial[14319] Debug - monitoring grid communication health
2018-04-23 17:18:38.8 ubuntu-xenial[14319] Debug - Calling core with action: messages
2018-04-23 17:18:38.8 ubuntu-xenial[14319] Debug - connecting to: 10.6.246.101
2018-04-23 17:18:59.8 ubuntu-xenial[14319] Debug - inside docker_handle_event
2018-04-23 17:19:24.9 ubuntu-xenial[14319] Debug - Calling core with action: exit"

def task_3(logs)
  logs_arr = logs.split("\n")
  filtered_logs = logs_arr.select{|log| log.include? "Calling core with action"}
  if filtered_logs.length <= 1
    "0"
  elsif filtered_logs.length == 2
    date1 = DateTime.parse(filtered_logs[0].split(" ubuntu")[0])
    date2 = DateTime.parse(filtered_logs[1].split(" ubuntu")[0])
    ((date2 - date1)*24*60*60).to_f.to_s
  else
    results = []
    filtered_logs.each_with_index.map { |el, i| 
      if i < filtered_logs.length - 1
        date1 = DateTime.parse(el.split(" ubuntu")[0])
        date2 = DateTime.parse(filtered_logs[i + 1].split(" ubuntu")[0])
        results.push(((date2 - date1)*24*60*60).to_f.to_s)
      end
    }
    results
  end
end

print "#{task_3(logs)}\n"
