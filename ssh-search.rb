require 'net/ssh'

@hostname = ""
@username = ""
@password = ""
@palavratosearch = ""
@cmd = ARGV[0]
def time_diff_milli(start, finish)
  (finish - start) * 1000
end

begin

  
t1 = Time.now
ssh = Net::SSH.start(@hostname, @username, :password => @password)
puts "Searching for '#{palavratosearch}' word ... \nby martin3lli"
ls = ssh.exec!("grep -ir '#{palavratosearch}' *.txt")
ssh.close
t2 = Time.now
msecs = time_diff_milli t1, t2
puts ""
puts ls
puts "scan terminado em #{msecs}ms"
puts ""
rescue
  puts "não consegui conectar"
end 