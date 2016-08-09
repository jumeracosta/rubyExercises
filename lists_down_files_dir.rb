#Dir.entries(".") do |file|
#	puts file
#end

#puts Dir.entries( '.' ).select{ |f| File.file? f }

#Dir.foreach("testdir") {|x| puts "Got #{x}" }

#Dir.entries("file_name") {|x| puts "Got #{x}"}

#puts Dir.glob("*/*")

#files.each do |file_name|
	
#Dir.new('.').each {|file| puts file }

#Dir.foreach('.') {|x| puts "Got #{x}" }

#puts Dir.entries('.').select {|f| File.file? f} #to get the file of the current directories

#puts Dir.glob("**/") #to get the path of directories upto subdirectories

files = Dir[ '**/*' ].select{ |f| File.file? f } #returns filename and paths
puts files # ["file1.rb", "file2.rb", "file3.rb"]

require 'csv'

CSV.open('test.csv', 'wb') do |csv|
	csv << (files)
end