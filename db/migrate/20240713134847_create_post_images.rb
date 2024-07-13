class CreatePostImages < ActiveRecord::Migration[6.1]
  def change
    create_table :post_images do |t|
      # t.integer  :id
      # ↑は`create_table`メソッドではデフォルトで`id`カラムが作成されるため、再度定義する必要なし
      t.string   :shop_name
      t.text     :caption
      t.integer  :user_id
      t.timestamps
    end
  end
end
