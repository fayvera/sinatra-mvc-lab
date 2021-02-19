class PigLatinizer 

    def piglatinize(input)
        input.split(" ").map {|word| piglatinize_word(word)}.join(" ")
    end

    def vowel?(text)
        text.match(/[aAeEiIoOuU]/)
    end

    def piglatinize_word(word)  
        # if word starts with vowel
        if vowel?(word[0])
            word + "way"
        else   
        # if word starts with consonant
            vowel_index = word.index(/[aAeEiIoOuU]/)
            consonants = word.slice(0..vowel_index-1) 
            rest_word = word.slice(vowel_index..word.length)
            rest_word + consonants + "ay"
        end
    end
end 