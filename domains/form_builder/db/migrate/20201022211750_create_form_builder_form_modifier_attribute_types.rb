class CreateFormBuilderFormModifierAttributeTypes < ActiveRecord::Migration[6.0]
  def change
    create_table :form_builder_form_modifier_attribute_types do |t|
      t.uuid :uuid, default: 'gen_random_uuid()', null: false
      t.json :meta
      t.string :name
      t.timestamps
    end
  end
end
