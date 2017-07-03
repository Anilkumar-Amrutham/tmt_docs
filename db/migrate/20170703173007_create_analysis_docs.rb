class CreateAnalysisDocs < ActiveRecord::Migration[5.0]
  def change
    create_table :analysis_docs do |t|
      t.string :us_number
      t.text :us_description
      t.text :us_analysis
      t.belongs_to :user, index: true

      t.timestamps
    end
  end
end
