class ChangePhoneNoToBeStringInPublishers < ActiveRecord::Migration[6.1]
  def change
    change_column :publishers, :phone_no , :string
  end
end
