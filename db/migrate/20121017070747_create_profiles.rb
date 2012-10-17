class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.references :user
      t.text :about_me
      t.string :gender
      t.date :dob
      t.string :present_place
      t.string :native_place
      t.text :hobbies

      t.timestamps
    end
    add_index :profiles, :user_id
  end
end
