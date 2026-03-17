require 'fileutils'
year = {}
Dir.glob("_posts/*.md").each do |file|
  y, _ = File.basename(file).split(/-/)
  year[y] ||= Set.new
  year[y] << file
end

year.each do |year, files|
  File.open("#{year}.md", "w") do |f|
    y = files.map { File.read(it) }.join("\n\n")
    f.write(y)
  end
end
