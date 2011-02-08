require 'rubygems'
require 'treetop'

Treetop.load 'my_grammar'
parser = MyGrammarParser.new

puts parser.parse("hello chomsky")
result = parser.parse("ahoy bob")
puts result.inspect


my_address = "102 Paddock Ave.\nApt. #1\nGrand Rapids, MI 49506"
my_address = "1789 Jason Court\nJenison, MI 49428"

Treetop.load 'us_address'
parser = USAddressParser.new

result =  parser.parse(my_address)
puts result.inspect
# 
# 
# 
# 
# 
# 401 hall street
# 401. HALL ST SW
# Four oh one hall street southwest
# ldkfjlasdjlaljdfl 
# 
# 
# 7687 Riverview Drive APT. 203

