class CreateGusers < ActiveRecord::Migration
  def change
    create_table :gusers do |t|
      t.string :email
      t.string :password

      t.timestamps null: false
    end
  end
end
