class SpecifyIngredientsName < ActiveRecord::Migration[5.1]
  def change
    rename_column :ingredients, :name, :ingredient_name
  end
end
