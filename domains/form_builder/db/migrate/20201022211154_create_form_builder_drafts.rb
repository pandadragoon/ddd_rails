class CreateFormBuilderDrafts < ActiveRecord::Migration[6.0]
  def change
    create_table :form_builder_drafts do |t|
      t.uuid :uuid, default: 'gen_random_uuid()', null: false
      t.uuid :family_uuid, default: 'gen_random_uuid()', null: false
      t.json :meta
      t.integer :form_id
      t.integer :draft_form_id
      t.uuid :created_by_uuid
      t.uuid :updated_by_uuid
      t.boolean :locked
      t.uuid :locked_by_uuid
      t.string :review_status
      t.timestamps
    end
  end
end
