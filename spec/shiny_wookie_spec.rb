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

end
