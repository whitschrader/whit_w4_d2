class CreateConnections < ActiveRecord::Migration
  def change
    create_table :connections do |t|
      t.belongs_to :category, index: true
      t.belongs_to :product, index: true

      t.timestamps
    end
  end
end
