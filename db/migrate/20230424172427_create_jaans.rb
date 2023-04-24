class CreateJaans < ActiveRecord::Migration[7.0]
  def change
    create_table :jaans do |t|
      t.string :love

      t.timestamps
    end
  end
end
