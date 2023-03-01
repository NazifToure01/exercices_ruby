def diamond(letter)

    code = letter.upcase.ord
  
    rows = []
    (code - 65).downto(0) do |i|
      if i == code - 65
        rows << " " * i + "A" + " " * i
      else
        outer_spaces = " " * i
        inner_spaces = " " * ((code - 65) - i)
        rows << outer_spaces + (i + 65).chr + inner_spaces + (i + 65).chr + outer_spaces
      end
    end
  
    rows[0...-1].reverse_each { |row| rows << row }
  
    puts rows.join("\n")
  end
  
  
  
  
  puts diamond('E')
  #   A
  #  B B
  # C   C
  #  B B
  #   A
  