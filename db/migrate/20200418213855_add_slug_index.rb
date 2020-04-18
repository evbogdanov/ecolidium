class AddSlugIndex < ActiveRecord::Migration[6.0]
  def change
    add_index :services, :slug, unique: true
  end
end
