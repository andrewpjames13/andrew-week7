class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :title
      t.boolean :day
      t.boolean :night

      t.timestamps null: false
    end
  end
end
