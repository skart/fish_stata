class CreateRecords < ActiveRecord::Migration
  def change
    create_table :records do |t|
      t.date :date
      t.float :ph
      t.float :ammonia
      t.float :nitrite
      t.float :nitrate
      t.float :kh
      t.float :gh
      t.string :notes

      t.timestamps null: false
    end
  end
end
