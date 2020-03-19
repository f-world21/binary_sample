require 'pry'

content = File.read('./binary_data/input.data')

binding.pry

# 先頭1バイトを16進数として読み出し、10進数に変換
hex_string = content[0].unpack("H*")[0]
decimal_number = hex_string.to_i(16)
puts "#{hex_string}: #{decimal_number}"
# 先頭2バイトを16進数として読み出し、10進数に変換
hex_string = content[0..1].unpack("H*")[0]
decimal_number = hex_string.to_i(16)
puts "#{hex_string}: #{decimal_number}"
# 先頭4バイトを16進数として読み出し、10進数に変換
hex_string = content[0..3].unpack("H*")[0]
decimal_number = hex_string.to_i(16)
puts "#{hex_string}: #{decimal_number}"

File.open("./binary_data/output.data", 'w+') do |f|
  # 10進数を16進数に変換し、バイナリとして書き出す
  f.write [123.to_s(16)].pack("H*")
  # "E2 BB B0 F1"をバイナリとして書き出す
  f.write ["e2bbb0f1"].pack("H*")
  # "10110110" = \xB6 という2進数をバイナリとして書き出す
  decimal_number = "10110110".to_i(2)  # いちど10進数にする
  f.write [decimal_number.to_s(16)].pack("H*")
end
