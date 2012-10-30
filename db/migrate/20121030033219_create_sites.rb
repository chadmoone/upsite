class CreateSites < ActiveRecord::Migration
  def change
    create_table :sites do |t|
      t.string :name
      t.text :details
      t.string :host
      t.boolean :up

      t.timestamps
    end
  end
end
