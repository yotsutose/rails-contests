class CreateSubmissions < ActiveRecord::Migration[6.1]
  def change
    create_table :submissions do |t|
      t.integer :uId
      t.integer :pId
      t.text :answer
      t.text :state

      t.timestamps
    end
  end
end
