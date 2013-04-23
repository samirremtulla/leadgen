class AddLatitudeAndLongitudeToQuestions < ActiveRecord::Migration
  def change
    add_column :questions, :latitude, :float
    add_column :questions, :longitude, :float
  end
end
