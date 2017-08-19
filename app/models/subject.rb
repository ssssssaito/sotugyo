class Subject < ApplicationRecord
  self.primary_key = :sub_num
  has_many :risyus, :foreign_key => "sub_num"
end
