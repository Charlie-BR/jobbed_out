class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :user
      t.string :title
      t.string :post_url

      t.timestamps null: false
    end
  end
end
