class CreateIncomes < ActiveRecord::Migration
  def change
     create_table :incomes do |t|
      t.string :first_name
      t.string :last_name
      t.date :date_of_birth 
      t.float  :income1
      t.float  :income2
      t.float  :income3
      t.float  :income4
      t.float  :income5
      t.float  :income6
      t.float  :income7
      t.float  :income8
      t.float  :income9
      t.float  :income10
      t.timestamps null: false
     end
  end
end
