class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string "first_name", :string, :limit =>25
      t.string "last_name", :limit =>50
      t.string "email", :null =>false
      t.datetime "created_at"
      t.datetime "updated_at"
      t.timestamps null: false

      #we dont have id column - rails will automatically add it. if we dont want id we need to specify it.
      #   t.timestamps  includes     t.datetime "created_at" t.datetime "updated_at"
    end
  end
end
