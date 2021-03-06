require 'spec_helper'
require 'shiny_wookie/document'

describe ShinyWookie::Document do
  before :each do
    @document = ShinyWookie::Document.new
  end
  
  subject { @document }
  
  context :content do
    it { should respond_to :content }
    
    its(:content) { should_not be_empty }
    
    it "is unique" do 
      doc2 = ShinyWookie::Document.new
      
      @document.content.should_not eql doc2.content
    end
  end
  
  context "write file" do
    it "writes content" do
      @document.write_to_file :prefix => "cv_", :name => "document", :extension => "txt"
  
      IO.read("cv_document.txt").should eql @document.content
      File.delete("cv_document.txt")
    end
  
    it "has a file name" do
      expect { @document.write_to_file :prefix => "doc_" }.to raise_error ArgumentError
    end
  end
  
end