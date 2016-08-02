class Bottles
  def verse(num)
    "#{show_num(num)} #{show_bottle(num)} of beer on the wall, " +
    "#{show_num(num).downcase} #{show_bottle(num)} of beer.\n" +
    "#{show_take(num)}" +
    "#{show_num(num - 1).downcase} #{show_bottle(num - 1)} of beer on the wall.\n"
  end

  def show_take(num)
    case num
    when 0
      "Go to the store and buy some more, "
    when 1
      "Take it down and pass it around, "
    else
      "Take one down and pass it around, "
    end
  end

  def show_num(num)
    case num
    when 0
      'No more'
    when -1
      '99'
    else
      num.to_s
    end
  end

  def show_bottle(num)
    if num == 1
      'bottle'
    else
      'bottles'
    end
  end

  def verses(num_end, num_start)
    (num_start..num_end).to_a.reverse
      .collect { |num| verse(num) }
      .join("\n")
  end

  def song
    verses(99, 0)
  end
end
