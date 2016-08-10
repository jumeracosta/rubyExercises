#puts Dir.entries('.').select {|f| File.file? f} #to get the file of the current directories

#puts Dir.glob("**/") #to get the path of directories upto subdirectories

#files = Dir[ '**/*' ].select{ |f| File.file? f } #returns filename and paths
#puts files # ["file1.rb", "file2.rb", "file3.rb"]

#Using the CSV class
#require 'csv'

#CSV.open('test.csv', 'wb') do |csv|
#	csv << (files)
#end

#Using the File Class
files = Dir[ '**/*' ].select{ |f| File.file? f }
puts files #["file1.rb", "path/file2.rb"]

file = File.new('test2.csv','w')
file.puts (files)