module Itext

	begin
	  require 'java'
	  # require_jar File.dirname(__FILE__) + '/jars/iText-5.0.6.jar'
	  # Dir["#{File.dirname(__FILE__) + '/jars/'}"].each { |jar| require jar }
	  puts File.dirname(__FILE__)
	  Dir["#{File.dirname(__FILE__)}/jars/*.jar"].each do |jar|
	    puts "requiring: #{jar}"
        require jar
	  end	  
	  
	rescue LoadError
	  puts "You need to be running jruby to use this gem."
	  raise
	end

end
