class CreateLls < ActiveRecord::Migration[7.0]
  def change
    create_table :lls do |t|
      t.string :ll

      t.timestamps
    end
  end
end
