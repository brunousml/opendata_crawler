require_relative '../../../lib/brazil/councilman/sp/extract/extractor'
require "csv"

# This file is used to import councilman though command line
# Dependencies:
#   /lib/councilman/extract/extractor
#
# Execute command to use:
#   ruby bin/import_councilman_debits.rb

puts 'Importing councilman debits....'

extractor = SPCouncilman::Extractor.new
data = extractor.get_data

File.write("councilman.csv", data.map(&:to_csv).join)
puts data if ENV == 'development'


puts 'It\'s finished.'