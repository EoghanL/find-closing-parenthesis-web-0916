def find_closing_parenthesis(sentence, open_position)
  char_arr = sentence.split('')
  interior_count = 0
  final_idx = nil
  while(final_idx == nil)
    open_position += 1
    current_char = char_arr[open_position]
    final_idx = open_position if current_char == ")" && interior_count == 0
    interior_count -= 1 if current_char == ")"
    interior_count += 1 if current_char == "("
  end
  final_idx
end
