require 'spec_helper'

describe ShinyWookie do
  it 'has a version number' do
    ShinyWookie::VERSION.should_not be_nil
  end
  
  context "documents" do
    it 'returns an array' do
      documents = ShinyWookie.generate_documents
    
      documents.should be_an_instance_of Array
    end

    it 'contains documents' do
      documents = ShinyWookie.generate_documents
    
      documents.first.should be_an_instance_of ShinyWookie::Document
    end
  
  end
  
  it "has a gabbler" do 
    gabbler = ShinyWookie.gabbler
    
    gabbler.should be_an_instance_of Gabbler
  end
  
  it "has one gabbler" do
    gabbler = ShinyWookie.gabbler
    gabbler2 = ShinyWookie.gabbler
    
    gabbler.object_id.should eql gabbler2.object_id
  end

end
