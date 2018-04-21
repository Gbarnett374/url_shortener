class CreateUrls < ActiveRecord::Migration[5.1]
  def change
    create_table :urls do |t|
      t.string :href
      t.string :shortened_href

      t.timestamps
    end
  end
end
