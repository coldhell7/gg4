class CreateResumes < ActiveRecord::Migration
  def change
    create_table :resumes do |t|
      t.string :full_name
      t.text :skill
      t.text :exp
      t.text :edu

      t.timestamps null: false
    end
  end
end
