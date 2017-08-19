class CreateSubjects < ActiveRecord::Migration[5.1]
  def change
    create_table :subjects do |t|
      t.text :sub_num
      t.text :sub_name
      t.text :credit
      t.text :grade
      t.text :term
      t.text :period
      t.text :room
      t.text :teacher
      t.text :summary

      t.timestamps
    end
  end
end
