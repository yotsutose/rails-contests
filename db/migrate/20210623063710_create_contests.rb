class CreateContests < ActiveRecord::Migration[6.1]
  def change
    create_table :contests do |t|
      t.text :title

      t.timestamps
    end
  end
end
