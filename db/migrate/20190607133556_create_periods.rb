class CreatePeriods < ActiveRecord::Migration[5.2]
  def change
    create_table :periods do |t|
      t.date :menses_start
      t.date :menses_end
      t.date :day_before
      t.integer :duration

      t.timestamps
    end
  end
end
