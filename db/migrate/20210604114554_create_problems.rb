class CreateProblems < ActiveRecord::Migration[6.1]
  def change
    create_table :problems do |t|
      t.text :title
      t.text :statement
      t.text :answer
      t.integer :contest_id

      t.timestamps
    end
  end
end
