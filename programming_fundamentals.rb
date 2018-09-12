emotions = {
  :grumpy => 1,
  :happy => 3,
  :sleepy => 2,
  :dopey => 2,
  :bashful => 3,
  :sneezy => 1
}

class Person

  def initialize(name, emotions)
    @name = name
    @emotions = emotions
  end

  def feelings
    @emotions.each do |emotion,value|
      if (value == 1)
         syn = 'not very'
      elsif (value == 2)
         syn = 'somewhat'
      elsif (value == 3)
         syn = 'very'
      end

      puts "I am feeling #{syn} #{emotion}"
    end
  end

end

my_person = Person.new('Stephen', emotions)
my_person.feelings
