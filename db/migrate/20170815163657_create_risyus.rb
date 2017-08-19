class CreateRisyus < ActiveRecord::Migration[5.1]
  def change
    create_table :risyus do |t|
      t.text :student_num
      t.text :sub_num
      t.text :result

      t.timestamps
    end
  end
end
