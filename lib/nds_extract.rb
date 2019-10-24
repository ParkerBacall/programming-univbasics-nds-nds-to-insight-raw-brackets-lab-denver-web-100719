
$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def directors_totals(nds)

result = {

}

row_index = 0

while row_index < nds.length do
  column_index = 0
  total_gross = 0
  while column_index < nds[row_index].length do
    total_gross += nds[row_index][:movies][column_index][:worldwide_gross]
    column_index += 1
  end
  #add values to hash
  result["#{nds[row_index]}"] = total_gros
  row_index += 1
end
  result
end
