class ChangeRestaurantForeignKeyToNull < ActiveRecord::Migration[7.0]
  def change
    change_column_null :restaurants, :list_id, true
  end
end
