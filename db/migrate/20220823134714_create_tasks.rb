class CreateTasks < ActiveRecord::Migration[7.0]
  def change
    create_table :tasks do |t|
      t.string :name
      t.integer :status, default: 0
      t.date :date, default: Time.now.strftime('%d/%m/%Y')
      t.time :time, default: Time.now.strftime('%H:00')

      t.timestamps
    end
  end
end
