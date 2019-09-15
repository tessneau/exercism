class Acronym
  def self.abbreviate(name)
    name.split(/\W+/).map{|word| word[0].upcase }.join
  end
end
