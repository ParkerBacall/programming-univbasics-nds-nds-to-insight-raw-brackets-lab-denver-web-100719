
$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def directors_totals(nds)

result = {

}

row_index = 0

while row_index < nds.length do
  column_index = 0
  pp nds[row_index][:name]
  while column_index < nds[row_index].length do
    total_gross += nds[row_index][:movies][column_index][:worldwide_gross]
    pp total_gross
    column_index += 1
  end
  result["#{nds[row_index][:name]}"] = total_gross
  row_index += 1
  total_gross = 0
end
  result
end
