class CreateDwls < ActiveRecord::Migration[7.0]
  def change
    create_table :dwls do |t|
      t.string :ffddll

      t.timestamps
    end
  end
end
