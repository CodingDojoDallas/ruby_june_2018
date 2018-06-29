require "stringer/version"

module Stringer
  def self.spacify *strings
    string = ""
    strings.each do |s|
        string += " " + s
        string.lstrip!
    end
    string
  end

  def self.minify string, len
    if string.length > len
      return string[0..len-1] + "..."
    else
      return string
    end
  end

  def self.replacify (string, replace, replacement)
    string.sub! replace, replacement
    return string
  end

  def self.tokenize string
    string.split(' ')
  end

  def self.removify string, remove
    string.slice! " " + remove
    return string
  end
end
