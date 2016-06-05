class CreateCurls < ActiveRecord::Migration[5.0]
  def change
    create_table :curls do |t|

      t.timestamps
    end
  end
end
