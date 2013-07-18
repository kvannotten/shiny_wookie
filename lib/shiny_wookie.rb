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
  
  def self.gabbler
    if @gabbler.nil?
      @gabbler = Gabbler.new
      story_file = File.join(File.dirname(File.expand_path(__FILE__)), '../resources/huckleberry.txt')
      story = File.read(story_file)
      gabbler.learn story
    end
    
    @gabbler
  end
  
end
