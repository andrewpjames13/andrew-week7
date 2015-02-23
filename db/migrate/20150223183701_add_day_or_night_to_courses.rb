class AddDayOrNightToCourses < ActiveRecord::Migration
  def change
    add_column :courses, :day_or_night, :boolean
  end
end
