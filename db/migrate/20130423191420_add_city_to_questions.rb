class AddCityToQuestions < ActiveRecord::Migration
  def change
    add_column :questions, :city, :string
  end
end
