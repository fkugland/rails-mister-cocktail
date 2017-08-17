class ChangeVariableName < ActiveRecord::Migration[5.1]
  def change
    rename_column :cocktails, :cocktail_name, :name
    rename_column :ingredients, :ingredient_name, :name
  end
end
