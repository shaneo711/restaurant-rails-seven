class RenamePrivateToListIsPrivate < ActiveRecord::Migration[7.0]
  def change
    rename_column :lists, :private, :is_private
  end
end
