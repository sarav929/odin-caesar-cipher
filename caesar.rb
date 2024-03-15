puts "Enter a sentence: "
sentence = gets.chomp

def caesar_cipher(sentence, number)
  array = sentence.split('')
  ascii = Array.new

  array.each do |el|
    if el.ord >= 97 and el.ord <= 122 #lowercase
      ascii.push((el.ord - 97 + number) % 26 + 97)
    elsif el.ord >= 65 and el.ord <= 90 #uppercase
      ascii.push((el.ord - 65 + number) % 26 + 65)
    else #not alpha
      ascii.push(el.ord)
    end
  end
  
  ascii.map! { |el| el.chr }
  puts ascii.join
end

caesar_cipher(sentence, 2)
