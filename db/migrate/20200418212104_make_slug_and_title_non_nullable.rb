class MakeSlugAndTitleNonNullable < ActiveRecord::Migration[6.0]
  def change
    change_column :services, :slug, :text, null: false
    change_column :services, :title, :text, null: false
  end
end
