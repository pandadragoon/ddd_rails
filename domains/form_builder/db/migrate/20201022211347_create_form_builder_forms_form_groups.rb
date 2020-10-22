class CreateFormBuilderFormsFormGroups < ActiveRecord::Migration[6.0]
  def change
    create_table :form_builder_forms_form_groups do |t|
      t.uuid :uuid, default: 'gen_random_uuid()', null: false
      t.json :meta
      t.integer :form_id
      t.uuid :form_group_uuid
      t.timestamps
    end
  end
end
