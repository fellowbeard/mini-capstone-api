class ChangePhoneToDowncase < ActiveRecord::Migration[7.0]
  def change
    rename_column :suppliers, :Phone_number, :phone_number
  end
end
