class CreateFormBuilderFormPublishedVersions < ActiveRecord::Migration[6.0]
  def change
    create_table :form_builder_form_published_versions do |t|
      t.uuid :uuid, default: 'gen_random_uuid()', null: false
      t.json :meta
      t.integer :form_id
      t.integer :published_form_id
      t.uuid :created_by_uuid
      t.uuid :published_by_uuid
      t.timestamps
    end
  end
end
