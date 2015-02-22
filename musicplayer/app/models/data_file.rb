class DataFile < ActiveRecord::Base
  def self.save(file)
    name =  file.original_filename
    name = File.basename(name)
    name.sub(/[^\w\.\-]/,'_')
 
    directory = "public/data"
    # create the file path
    path = File.join(directory, name)
    # write the file
    File.open(path, "wb") { |f| f.write(file.read) }
  end

  def self.delete(file_name)
  	directory = "public/data"
  	path = File.join(directory, file_name)
    File.delete(path) if File.exist?(path)
  end
end
