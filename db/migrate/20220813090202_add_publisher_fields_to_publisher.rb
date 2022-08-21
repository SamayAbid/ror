class AddPublisherFieldsToPublisher < ActiveRecord::Migration[6.1]
  def change
    add_column :publishers, :phone_no, :integer
    add_column :publishers, :address, :string
  end
end
