require 'fileutils'
Dir.glob("_posts/*.markdown").each do |file|
  new_file = file.sub(/\.markdown/, ".md")
  FileUtils.mv(file, new_file)
end
