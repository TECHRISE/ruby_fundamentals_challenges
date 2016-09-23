def string_compressor(string)
  character_count_array = Array.new

  character_count_array[0] = [string[0], 0]

  string.length.times do |i|
    if character_count_array.last[0] == string[i]
      character_count_array.last[1] += 1
    else
      character_count_array.push([string[i], 1])
    end
  end 

  compressed = character_count_array.join("")

  return compressed.length < string.length ? compressed : string
end