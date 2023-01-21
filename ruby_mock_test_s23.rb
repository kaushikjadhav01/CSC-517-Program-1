load 'ruby_intro_s23.rb'

def scores
  correct = 0
  wrong = 0
  full = 80

  # Q1
  begin
    two_sum?([-1,-2,4,4], 2) == true ? correct+=1 : wrong+=1
  rescue
    wrong+=1
  end

  # Q2
  begin
    max_sub_array([-2,1,-3,4,-1,2,1,-5,4]) == 6 ? correct+=1 : wrong+=1
  rescue
    wrong+=1
  end

  # Q3
  begin
    group_anagrams(['elbow','cried','below','cider']) == [['elbow','below'],['cried','cider']] ? correct+=1 : wrong+=1
  rescue
    wrong+=1
  end

  # Q4
  begin
    brackets_match?("([)]") == false ? correct+=1 : wrong+=1
  rescue
    wrong+=1
  end

  # Q5
  begin
    remove_and_append_vowels("prayer") == 'pryrae' ? correct+=1 : wrong+=1
  rescue
    wrong+=1
  end

  # Q6
  begin
    highest_frequency_word("She says she got married.") == 'she' ? correct+=1 : wrong+=1
  rescue
    wrong+=1
  end

  # Q7
  begin
    b = Book.new("Da Vinci Code", 11.99)
  rescue
    b = nil
  end

  begin
    b.formatted_price == "11 dollars and 99 cents" ? correct+=1 : wrong+=1
  rescue
    wrong+=1
  end

  # puts correct+wrong
  puts correct, wrong, correct+wrong
  return ( (correct * full).to_f / (wrong + correct) ).round(2)
end

puts scores

