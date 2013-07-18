require "shiny_wookie/version"
require "shiny_wookie/document"

module ShinyWookie
  
  def self.generate_documents amount = 1
    documents = []
    
    return [] if amount.to_i < 1
    
    0.upto amount.to_i do
      documents << Document.new
    end
    
    documents
  end
  
end
