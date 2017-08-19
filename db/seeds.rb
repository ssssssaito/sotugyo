require "csv"

CSV.foreach('db/subject.csv') do |row|
  Subject.create(:sub_num => row[0], :sub_name => row[1], :credit => row[3], :grade => row[4], :term => row[5], :period => row[6], :room => row[7], :teacher => row[8], :summary => row[9])
end
