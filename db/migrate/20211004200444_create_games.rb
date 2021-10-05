class CreateGames < ActiveRecord::Migration[5.2]
  def change
    create_table :games do |t|
      t.date    :start_date
      t.date    :end_date
      t.string  :name
      t.string  :description

      t.timestamps
    end
  end
end
