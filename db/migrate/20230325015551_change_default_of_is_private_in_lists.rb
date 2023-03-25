class ChangeDefaultOfIsPrivateInLists < ActiveRecord::Migration[7.0]
  def change
    change_column_default :lists, :is_private, true
  end
end
