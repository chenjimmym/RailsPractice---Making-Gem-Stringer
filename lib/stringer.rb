require "stringer/version"

module Stringer
  # Your code goes here...
  def self.spacify *strings
    string = ""
    strings.each do |s|
        string += s + " "
    end
    string[0...string.length-1]
  end

  def self.minify string, len
    if string.length > len
      string[0...10] + "..."
    else
      string
    end
  end

  def self.replacify string, remove, add
    string.gsub(remove, add)
  end

  def self.tokenize string
    string.split(" ")
  end

  def self.removify string, remove
    string.gsub(remove + ' ', '')
  end

end
