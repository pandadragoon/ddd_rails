class CreateFormBuilderInstructions < ActiveRecord::Migration[6.0]
  def change
    create_table :form_builder_instructions do |t|
      t.uuid :uuid, default: 'gen_random_uuid()', null: false
      t.uuid :family_uuid, default: 'gen_random_uuid()', null: false
      t.integer :parent_id
      t.integer :question_id
      t.string :label
      t.json :meta
      t.timestamps
    end
  end
end
