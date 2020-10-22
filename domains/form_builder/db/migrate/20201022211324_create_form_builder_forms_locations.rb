class CreateFormBuilderFormsLocations < ActiveRecord::Migration[6.0]
  def change
    create_table :form_builder_forms_locations do |t|
      t.uuid :uuid, default: 'gen_random_uuid()', null: false
      t.json :meta
      t.integer :form_id
      t.uuid :location_uuid
      t.timestamps
    end
  end
end
