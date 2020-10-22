class CreateFormBuilderFormModifiers < ActiveRecord::Migration[6.0]
  def change
    create_table :form_builder_form_modifiers do |t|
      t.uuid :uuid, default: 'gen_random_uuid()', null: false
      t.json :meta
      t.integer :target_type
      t.integer :target_id
      t.timestamps
    end
  end
end
