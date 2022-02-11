def caesar_cipher(string, shift)
    ascii = string.chars.map { |c| (c.ord > 64 && c.ord < 91) || (c.ord > 96 && c.ord < 123) ? c.ord : c}
    shifted_ascii = ascii.map { |c| c.is_a?(Numeric) ? c + shift : c}
    rotated_ascii = shifted_ascii.map { |c| (c.is_a?(Numeric) && c > 122) || (c.is_a?(Numeric) && c > 90 && c < 97) ? c - 26 : c}
    p converted_ascii = rotated_ascii.map { |c| c.chr}.join('')
end

caesar_cipher("What a string!", 5)