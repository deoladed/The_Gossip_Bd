class AddIndexPotinandTag < ActiveRecord::Migration[5.2]
  def change
  	 create_table :potins_tags, id: false do |t|
      t.belongs_to :potin, index: true
      t.belongs_to :tag, index: true
    end
  end
end
