module ShinyWookie
  class Document
    attr_accessor :content
    
    def initialize 
      @content = generate_content
    end
    
    def write_to_file prefix = "", name = "", suffix = ""
      File.open("#{prefix}#{name}#{suffix}.txt", "w") { |f| f.write @content }
    end
    
    private
    
    def generate_content
      "Some document content #{rand(100)}"
    end
    
  end
end