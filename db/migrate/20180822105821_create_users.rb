class CreateUsers < ActiveRecord::Migration[5.2]
  def change
		create_table :users do |t|
			t.string   :first_name,      :null => false
			t.string   :last_name,       :null => false
			t.string   :email,           :null => false
    	t.string   :password_digest, :null => false
	    t.string   :reset_token
			t.string   :phone_number,	   :null => false, :limit => 10
			t.boolean  :email_confirmed, :default => false
			t.string   :confirm_token

      t.timestamps
		end
		add_index   :users, :email, unique: true
  end
end
