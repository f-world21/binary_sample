require 'pry'

File.open('./binary_data/first_0.data') do |f|
  file_size = f.size
  content = f.read(file_size)
  # binding.pry

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
end
