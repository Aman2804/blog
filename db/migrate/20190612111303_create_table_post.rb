class CreateTablePost < ActiveRecord::Migration[5.2]
  def change
    # create_table :table_posts do |t|
    # 	t.text :price
    # end
  #   reversible do |dir|
  #     change_table :table_posts do |t|
  #       dir.up   do
  #         create_table :table_posts
  #         t.column :price, :text 
  #         t.change :price, :string 
  #       end
  #       dir.down do  t.change :price, :integer 
  #         remove_column :table_posts, :price
  #         drop_table :table_posts 
  #       end
  #     end
  # end
   # revert TablePosts
  end
end
