class CreateRemainders < ActiveRecord::Migration[5.2]
  def change
    create_table :remainders do |t|
      t.timestamp :date,     :null => false
      t.string    :title,    :null => false
      t.text      :description
      t.integer   :user_id,  :null => false
      t.integer   :priority, :default => 0

      t.timestamps
    end
  end
end
