def task_4(str)
    letters = 0
    digits = 0
  
    str.chars.map {|char|
    if char =~ /[[:digit:]]/
      digits += 1
    elsif char =~ /[[:alpha:]]/
      letters += 1
    end
  }
    "{letters: #{letters}, digits: #{digits}}"
  end
  
  print "#{task_4("Error 404 -_- ...")}\n"
  