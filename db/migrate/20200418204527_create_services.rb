class CreateServices < ActiveRecord::Migration[6.0]
  def change
    create_table :services do |t|
      t.text :title
      t.text :slug

      t.timestamps
    end
  end
end
