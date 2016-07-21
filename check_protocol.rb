protocol = ARGV[0]

connect_server = ARGV[1]

puts "------------"

cmd_result = `openssl s_client -connect #{connect_server} -#{protocol} < /dev/null`

puts cmd_result
