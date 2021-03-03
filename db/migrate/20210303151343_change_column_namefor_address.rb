class ChangeColumnNameforAddress < ActiveRecord::Migration[6.0]
  def change
    rename_column :flats, :addess, :address
  end
end
