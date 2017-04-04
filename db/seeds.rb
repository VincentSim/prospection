# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'csv'
class RemoveNoEmail

  def initialize(input)
    @input = input
    parse_csv
  end

  def parse_csv
    csv_text = Rails.root.join('db', 'result.csv')
    csv_options = { col_sep: ',', quote_char: '"', headers: :first_row }
    input  = csv_text

    CSV.foreach(input, csv_options) do |row|
      first_name = row["name"].split(' ')[0]
      name = (row["name"].split(' ') - [row["name"].split(' ')[0]]).join(" ")
      User.create!(first_name:first_name, name:name, email:row['email'])
    end
  end
end

RemoveNoEmail.new('result.csv')