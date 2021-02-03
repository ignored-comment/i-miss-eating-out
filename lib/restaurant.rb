class Restaurant
  attr_reader :name, :dishes

  def initialize(time, name)
    @open_time = time
    @name = name
    @dishes = []
    @lunch = nil
    @close_time
  end

  def opening_time
    @open_time
  end

  def closing_time(number)
    @close_time = "#{@open_time.to_i + number}:00"
  end

  def add_dish(food)
    @dishes << food
  end

  def open_for_lunch?
    if @open_time.to_i < 12
      @lunch = true
    else
      false
    end
  end

  def menu_dish_names
    menu_array = []
    @dishes.each do |dish|
      menu_array << dish.upcase
    end
    menu_array
  end

  def announce_closing_time(number)

    if closing_time(number).to_i < 12
      "#{@name} will be closing at #{closing_time(number)}AM"
    elsif closing_time(number).to_i >= 12
      "#{@name} will be closing at #{closing_time(number).to_i - 12}:00PM"
    end
  end

end
