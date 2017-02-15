# frozen_string_literal: true
class CreateLists < ActiveRecord::Migration[5.0]
  def change
    create_table :lists do |t|
      t.text :note, null: false

      t.timestamps null: false
    end
  end
end
