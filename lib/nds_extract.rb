$LOAD_PATH.unshift(File.dirname(__FILE__))
require_relative './directors_database'

def directors_totals(source)
  result = {}
  director_index = 0
  while director_index < source.size do
    director = source[director_index]
    result[director[:name]] = gross_for_director(director)
    director_index += 1
  end
  result
end

def gross_for_director(d)
  total = 0
  index = 0

  while index < d[:movies].length do
    total += d[:movies][index][:worldwide_gross]
    index += 1
  end

  total
end

def list_of_directors(source)
  #stores director names
  name_array = []
  #director iterator
  director_index = 0
  #iterate over directors
  while director_index < source.length do
    name_array << source[director_index][:name]
  end
  #return array of name
  return name_array
end

def total_gross(source)
  index = 0
  grosses = {}
  name_array = list_of_directors(source)
  gross_array = directors_totals(source)
  while index < source.length do
    grosses[names_array[index]] = gross_array[index]
  end
  return grosses
end


