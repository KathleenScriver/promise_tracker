class CreatePromises < ActiveRecord::Migration[5.2]
  def change
    create_table :promises do |t|
      t.string :title
      t.string :promiser
      t.string :status, default: 'in progress'

      t.timestamps
    end
  end
end
