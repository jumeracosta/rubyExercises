#files = Dir.entries(".")

#puts Dir.entries( '.' ).select{ |f| File.file? f }

#puts Dir.glob("*/*")

#files.each do |file_name|
	
#Dir.foreach('.') {|x| puts "#{x}" }

#files1 = Dir.entries('.').select {|f| File.file? f} #to get the file of the current directory
#puts files1
#files = Dir.glob("**/") #to get the path of directories upto subdirectories
#files1 = Dir.entries('.') #to get the path of directories upto subdirectories
require 'csv'

files = Dir.glob('**/*').select { |f| File.file? f } #get 
puts files #["file1.rb","path/file2.rb","path/subdir/file3.rb"]

CSV.open('test.csv', 'wb') do |csv| #create csv file
	csv << ["Filename", "Path"] #column header
	files.each do |fs| #iterate over the file
		 csv << [File.basename(fs), File.dirname(fs)] #File.basename-> to get files, File.dirname -> to get the dir of file
	end
end