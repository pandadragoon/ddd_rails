class CreateFormBuilderFormModifierCriteria < ActiveRecord::Migration[6.0]
  def change
    create_table :form_builder_form_modifier_criteria do |t|
      t.uuid :uuid, default: 'gen_random_uuid()', null: false
      t.json :meta
      t.integer :form_modifier_id
      t.integer :modifier_attr
      t.json :modifier_attr_set
      t.timestamps
    end
  end
end
