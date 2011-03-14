module Itext

	begin
	  require 'java'
	  Dir["#{File.dirname(__FILE__)}/jars/*.jar"].each { |jar| require jar }
	rescue LoadError
	  puts "You need to be running jruby to use this gem."
	  raise
	end

end

# require 'itext/document'
include_package "com.itextpdf.text.pdf"
include_package "java.io"