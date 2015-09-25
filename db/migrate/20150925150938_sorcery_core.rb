class SorceryCore < ActiveRecord::Migration
  def change
    create_table :users do |t|
    	t.string :email,            :null => false
    	t.string :crypted_password
    		# Don't forget to write code for the application layer talking about how to prompt the user to login
    	t.string :salt

		# jobbed_out specific fields; not from Sorcery 
		t.string :first_name, :null => false
		t.string :last_name, :null => false

		# WHAT OTHER INFO DO WE WANT TO ADD HERE TO TRACK?

    	t.timestamps
    end

    add_index :users, :email, unique: true
  end
end