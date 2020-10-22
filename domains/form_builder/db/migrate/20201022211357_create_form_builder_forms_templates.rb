class CreateFormBuilderFormsTemplates < ActiveRecord::Migration[6.0]
  def change
    create_table :form_builder_forms_templates do |t|
      t.uuid :uuid, default: 'gen_random_uuid()', null: false
      t.json :meta
      t.integer :form_id
      t.integer :template_id
      t.timestamps
    end
  end
end
