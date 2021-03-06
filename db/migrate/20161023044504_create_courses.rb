class CreateCourses < ActiveRecord::Migration[5.0]
  def change
    create_table :courses do |t|
      t.string :name, :subtitle
      t.text :description
      t.decimal :price, :precision => 8, :scale => 2
      t.decimal :duration, :precision => 5, :scale => 1
    end
  end
end
