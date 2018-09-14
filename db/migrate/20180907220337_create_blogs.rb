class CreateBlogs < ActiveRecord::Migration[5.2]
  def change
    create_table :blogs do |t|
      t.time :time
      t.string :title
      t.text :text

      t.timestamps
    end
  end
end
