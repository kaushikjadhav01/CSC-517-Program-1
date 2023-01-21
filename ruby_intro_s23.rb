# Part 1
def two_sum?(a, n)
  # ADD YOUR CODE HERE
end

def max_sub_array(a)
  # ADD YOUR CODE HERE
end

def group_anagrams(a)
  # ADD YOUR CODE HERE
end

# Part 2
def brackets_match?(s)
  # ADD YOUR CODE HERE
  open_brackets = ['(', '{', '[']
  close_brackets = [')', '}', ']']
  stack = []
  
  s.chars do |char|
    if open_brackets.include? char
      stack.append(char)
    elsif close_brackets.include? char
      if close_brackets.length > 0 && open_brackets[close_brackets.find_index(char)] == stack[stack.length-1]
        stack.pop
      else
        return false
      end
    end
  end

  if stack.length == 0
    return true
  else
    return false
  end
end

def remove_and_append_vowels(s)
  # ADD YOUR CODE HERE
  vowels = ['a', 'e', 'i', 'o', 'u']
  s_vowels = []
  
  s.chars do |char|
    if vowels.include? char.downcase
      s = s.gsub(char, '')
      s_vowels.append(char)
    end
  end

  s_vowels.each do |char|
    s = s + char
  end
  s
end

def highest_frequency_word(s)
  # ADD YOUR CODE HERE
  d = {}
  s.downcase.split().each do |word|
    if d.include? word
      d[word] += 1
    else
      d[word] = 1
    end
  end
  d.max_by{|k,v| v}[0]
end

# Part 3
class Book
  # ADD YOUR CODE HERE
  attr_accessor :title, :price

  def initialize(title = nil, price = nil)
    if title.nil? || title.empty? || price.nil? || price < 0
      raise ArgumentError, 'Title or price is nil or empty or 0'
    end
    @title = title
    @price = price
  end

  def formatted_price
    dollars, cents = @price.to_s.split('.')
    cents = '' unless cents
    dollars = dollars.to_i
    cents = cents.length == 1 ? (cents + '0').to_i : cents.to_i
    if dollars > 0 && cents > 0
      dollars = dollars > 1 ? dollars.to_s + ' dollars' : dollars.to_s + ' dollar'
      cents = cents > 1 ? ' and ' + cents.to_s + ' cents' : ' and ' + cents.to_s + ' cent'
    elsif dollars > 0
      dollars = dollars > 1 ? dollars.to_s + ' dollars' : dollars.to_s + ' dollar'
      cents = ''
    else
      dollars = ''
      cents = cents > 1 ? cents.to_s + ' cents' : cents.to_s + ' cent'
    end
    dollars + cents
  end
end