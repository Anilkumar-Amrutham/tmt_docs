json.extract! analysis_doc, :id, :us_number, :us_description, :us_analysis, :created_at, :updated_at
json.url analysis_doc_url(analysis_doc, format: :json)
