# RC4系列だけにしてみた
ciphers = `openssl ciphers -v #{ARGV[0]}`

# 調査対象サーバー:ポート
connect_server = ARGV[1]

check_results = []
ciphers.each_line{|protocol_suite|
  encrypt_protocol = protocol_suite.split(/\s/)[0]

  cmd_result = `openssl s_client -connect #{connect_server} -cipher #{encrypt_protocol} < /dev/null`

  cmd_result =~ /^New.*Cipher is (.*)$/    
  check_results << "client cipher is #{encrypt_protocol}, session cipher is #{$1}"
}

puts "------------"
puts check_results
