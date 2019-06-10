class AddUserToOvulations < ActiveRecord::Migration[5.2]
  def change
    add_reference :ovulations, :user, foreign_key: true
  end
end
