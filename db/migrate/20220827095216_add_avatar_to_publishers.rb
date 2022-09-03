class AddAvatarToPublishers < ActiveRecord::Migration[6.1]
  def change
    add_column :publishers, :avatar, :string
  end
end
