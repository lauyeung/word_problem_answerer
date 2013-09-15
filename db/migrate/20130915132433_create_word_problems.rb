class CreateWordProblems < ActiveRecord::Migration
  def change
    create_table :word_problems do |t|
      t.text :problem, null: false
      t.integer :solution, null: false

      t.timestamps
    end
  end
end
