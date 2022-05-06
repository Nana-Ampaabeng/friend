class CreateFriendProfiles < ActiveRecord::Migration[6.1]
  def change
    create_table :friend_profiles do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :contact
      t.string :image

      t.timestamps
    end
  end
end
