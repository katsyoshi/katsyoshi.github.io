dir = ARGV.first
Dir.entries(dir).map do |file_name|
  next if file_name =~ /^\.|\.bk$/
  fn = "#{dir}/#{file_name}"
  bk = fn + ".bk"
  File.rename(file_name, bk)
  lines = File.readlines(bk)
  if /^\n$/ =~ lines[1]
    lines[1] = fn.split(/-/)
               
  f = File.open(fn, "wb")
  f.write(lines.join)p
  f.close
end
