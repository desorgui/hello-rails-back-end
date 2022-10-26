class CreateGrettings < ActiveRecord::Migration[7.0]
  def change
    create_table :grettings do |t|
      t.string :message
      t.string :author

      t.timestamps
    end
  end
end
