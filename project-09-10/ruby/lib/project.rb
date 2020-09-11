class Project
  def add(numbers)
    a = numbers.split(/[\D]/).map(&:to_i)

    a.reduce(0) do |sum, number|
      sum += number
    end
  end
end

