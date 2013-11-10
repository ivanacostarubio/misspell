require 'levenshtein'

module Misspell
  def method_missing(name, *args, &block)
    methods.each do |m|
      return self.send(m) if
      Levenshtein.distance(m.to_s, name.to_s) == 1
    end
    super
  end
end
