require 'gabbler'

module ShinyWookie
  class Document
    attr_accessor :content
    
    def initialize 
      @content = generate_content
    end
    
    def write_to_file *args
      options = args.last.is_a?(Hash) ? args.last : {}
      
      prefix = (options.member?(:prefix) ? options[:prefix] : "")
      name = (options.member?(:name) ? options[:name] : nil)
      suffix = (options.member?(:suffix) ? options[:suffix] : "")
      extension = (options.member?(:extension) ? options[:extension] : "txt")
      
      raise ArgumentError if name.nil? 
      
      File.open("#{prefix}#{name}#{suffix}.#{extension}", "w") { |f| f.write @content }
    end
    
    private
    
    def generate_content
      sentences = rand(10..100)
      @content = ShinyWookie.gabbler.sentence
      sentences.times { @content << ShinyWookie.gabbler.sentence << " " }
      
      @content
    end
    
  end
end