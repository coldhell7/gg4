class CreateVideos < ActiveRecord::Migration
  def change
    create_table :videos do |t|
      t.text :skill_video
      t.text :exp_video
      t.text :edu_video

      t.timestamps null: false
    end
  end
end
