require 'spec_helper'

describe Itext::Pdf do
  
  it "exist" do
    Itext::Pdf.should_not be_nil
  end

  it "has java classes" do
    @pdf = Itext::Pdf.new
    @pdf.should_not be_nil    
    @pdf.document.respond_to?('open')
  end
  
end