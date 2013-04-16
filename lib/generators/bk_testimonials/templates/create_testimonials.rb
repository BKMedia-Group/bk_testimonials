class CreateTestimonials < ActiveRecord::Migration
  def change
    create_table :testimonials do |t|
      t.text :body
      t.string :name
      t.string :position
      t.string :company
      t.boolean :published

      t.timestamps
    end
  end
end
