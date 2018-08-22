class CreateNotes < ActiveRecord::Migration[5.2]
  def change
    create_table :notes do |t|
      t.timestamp :date,     :null => false
      t.string    :title,    :null => false
      t.text      :content
      t.boolean   :favorite, :default => false
      t.integer   :user_id,  :null => false

      t.timestamps
    end
  end
end
