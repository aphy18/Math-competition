class Generated_Numbers
  attr_accessor :num1, :num2, :solution, :name
    def initialize
      @num1 = rand 1..20
      @num2 = rand 1..20
      @solution = @num1 + @num2
    end
    def question(name)
      puts "#{name}, What's #{@num1} + #{@num2}"
    end
end
  
  