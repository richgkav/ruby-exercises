# check that val is in uppercase range of ascii chr set

def is_upper?(val)
  val >= 65 && val <= 90
end

# check that val is in lowercase range of ascii chr set

def is_lower?(val)
  val >= 97 && val <= 122
end

# check for cipher shift going outside of alphabet bounds

def roll(value, low, high)

  if value < low
    value = high + 1 + (value - low)

  elsif value > high
    value = low - 1 + (value - high)
  end

  value   # return input value if it is not within an ascii letter range
  
end

def caesar_cypher(str, shift)
 
  encoded = ''

  # each_codepoint gets the ascii value of each character

  str.each_codepoint do |ch|

    if is_upper?(ch)
      calc = roll(ch + shift, 65, 90)

    elsif is_lower?(ch)
      calc = roll(ch + shift, 97, 122)

    # everything else just output it
    else
      calc = ch

    end

    # convert integer to character
    encoded += calc.chr
  end

  puts encoded
end

# need to fix for non letters

caesar_cypher('What a string!', 5)
caesar_cypher('ABCDEF UVWXYZ', 1)
