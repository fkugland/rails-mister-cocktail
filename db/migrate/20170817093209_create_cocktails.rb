class CreateCocktails < ActiveRecord::Migration[5.1]
  def change
    create_table :cocktails do |t|
      t.string :cocktail_name

      t.timestamps
    end
  end
end
