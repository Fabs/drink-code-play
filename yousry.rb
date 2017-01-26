class Yousry
  def initialize(drinks = 1)
    @brain = {}
    @thirsty = drinks
    @drinks = 0
    puts "Yousry: Hello Clarkees. Ich bin Yousry."
    puts "Yousry: I am up for #{drinks} drink"
  end

  def thirsty?
    is_done = @thirsty <= @drinks
    puts "Yousry is thirsty" if !is_done
    puts "Yousry do not want more!" if is_done
    !is_done
  end

  def drink_from_bottle(bottle)
    @drinks += 1
    puts "Yousry drinks nice Clube Mate #{@drinks} time(s)"
  end

  def open(something)
    if something.closed?
      something.open = true
    else
      raise "Yousry: Don't make me open it again!!"
    end
  end

  def learn(action, &block)
    @brain[action] = block
    puts "Yousry learns #{action}"
  end

  def method_missing(m, *args, &block)
    puts "Yousry does #{m}"
    @brain[m].call(args)
  end
end
