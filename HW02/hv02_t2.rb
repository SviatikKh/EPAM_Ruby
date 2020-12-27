logs = '10.6.246.103 - - [23/Apr/2018:20:30:39 +0300] "POST /test/2/messages HTTP/1.1" 200 48 0.0498
10.6.246.101 - - [23/Apr/2018:20:30:42 +0300] "POST /test/2/run HTTP/1.1" 200 - 0.2277
2018-04-23 20:30:42: SSL ERROR, peer: 10.6.246.101, peer cert: , #<Puma::MiniSSL::SSL: System error: Undefined error: 0 - 0>
10.6.246.101 - - [23/Apr/2018:20:31:39 +0300] "POST /test/2/messages HTTP/1.1" 200 48 0.0290
'

def task_2(logs)
  regex = /^\d{2}\.\d{1}\.\d{3}\.\d{3}\s{1}\-\s{1}\-\s{1}\[\d{2}\/\w{3}\/\d{4}\:\d{2}\:\d{2}\:\d{2}\s{1}\+\d{4}\]\s{1}\"\bPOST\b\s{1}\/\btest\b\/\d{1,3}\/\w{1,12}\s{1}\bHTTP\b\/\d{1}\.\d{1}\"\s{1}\b200\b\^*/
  result = []
  messages = logs.split("\n")
  messages.each do |mes|
    if mes =~ regex
      mes.gsub! '"', ''
      mes.gsub! '[', ''
      mes.gsub! ']', ''
      mes_arr = mes.split(" ")
      new_mes = "#{mes_arr[3]} #{mes_arr[4]} FROM: #{mes_arr[5]} #{mes_arr[6].upcase}"
      result.push(new_mes)
    end
  end
  result
end

print "#{task_2(logs)}\n"
