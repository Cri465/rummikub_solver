module ValidityChecker
  def valid_group?
    return false unless valid_number_of_tiles?
    return false unless tiles.pluck(:colour).uniq.size == tiles.count
    return false unless tiles.pluck(:number).uniq.size == 1

    true
  end

  def valid_run?
    return false unless valid_number_of_tiles?
    return false unless tiles.pluck(:colour).uniq.size == 1
    return false unless tiles.pluck(:number).sort.each_cons(2).all? { |x, y| y == x + 1 }

    true
  end

  def valid_number_of_tiles? = tiles.count >= 2
end
