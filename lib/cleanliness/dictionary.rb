module Cleanliness
  class Dictionary
    
    def self.initialize
      @dictionary ||= YAML.load_file(File.join(File.dirname(__FILE__), '', 'dictionary.yml'))
      return @dictionary
    end
    
    def self.translate(string)
      @dictionary = initialize
      replace ={}
      rgx = Regexp.new "#{@dictionary.keys.map{|k| "(#{k})"}.join("|")}", Regexp::IGNORECASE
      scan_matches = string.scan(rgx).flatten.reject!(&:blank?)
      scan_matches.each{|k|
        replace[k] = (k =~ /^[A-Z]{1}/).nil? ? @dictionary[k.downcase] : @dictionary[k.downcase].capitalize
      }
      match = Regexp.new scan_matches.map{|k| "(#{k})"}.join("|")
      return string.gsub(match, replace)
    end
  end
end