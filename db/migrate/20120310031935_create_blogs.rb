class CreateBlogs < ActiveRecord::Migration
  def change
    create_table :blogs do |t|
      t.string :title
      t.references :commentable, :polymorphic => true
      t.timestamps
    end
  end
end
