class CreateFormBuilderFormModifierReferences < ActiveRecord::Migration[6.0]
  def change
    create_table :form_builder_form_modifier_references do |t|
      t.uuid :uuid, default: 'gen_random_uuid()', null: false
      t.json :meta
      t.integer :form_modifier_id
      t.string :key
      t.json :values
      t.timestamps
    end
  end
end
