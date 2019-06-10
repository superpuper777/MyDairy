class CreateOvulations < ActiveRecord::Migration[5.2]
  def change
    create_table :ovulations do |t|
      t.date :ovulation_start
      t.date :ovulation_end
      t.date :day_of_ovulation

      t.timestamps
    end
  end
end
