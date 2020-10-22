class CreateFormBuilderTemplates < ActiveRecord::Migration[6.0]
  def change
    create_table :form_builder_templates do |t|
      t.uuid :uuid, default: 'gen_random_uuid()', null: false
      t.uuid :family_uuid, default: 'gen_random_uuid()', null: false
      t.json :meta
      t.string :name
      t.integer :parent_id
      t.timestamps
    end
  end
end
