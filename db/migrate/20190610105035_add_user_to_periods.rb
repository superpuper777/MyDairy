class AddUserToPeriods < ActiveRecord::Migration[5.2]
  def change
    add_reference :periods, :user, foreign_key: true
  end
end
