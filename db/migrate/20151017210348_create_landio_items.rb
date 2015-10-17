class CreateLandioItems < ActiveRecord::Migration
  def change
    create_table :landio_items do |t|
      t.string :description

      t.timestamps null: false
    end
  end
end
