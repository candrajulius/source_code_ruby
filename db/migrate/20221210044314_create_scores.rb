class CreateScores < ActiveRecord::Migration[7.0]
  def change
    create_table :scores do |t|
      t.string :name
      t.integer :score_a
      t.integer :score_b
      t.integer :score_c
      t.string :sorting

      t.timestamps
    end
  end
end
