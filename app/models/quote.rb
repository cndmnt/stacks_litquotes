class Quote
  
  ALL_QUOTES = []
  attr_accessor :quote, :author, :tags
  
  def initialize(quote, author, tags)
    @quote = quote
    @author = author
    @tags = tags.split(",")
    ALL_QUOTES << self
  end
  
  def self.all
    return ALL_QUOTES
  end
  
end