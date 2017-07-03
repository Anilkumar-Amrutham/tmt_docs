require 'test_helper'

class AnalysisDocsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @analysis_doc = analysis_docs(:one)
  end

  test "should get index" do
    get analysis_docs_url
    assert_response :success
  end

  test "should get new" do
    get new_analysis_doc_url
    assert_response :success
  end

  test "should create analysis_doc" do
    assert_difference('AnalysisDoc.count') do
      post analysis_docs_url, params: { analysis_doc: { us_analysis: @analysis_doc.us_analysis, us_description: @analysis_doc.us_description, us_number: @analysis_doc.us_number } }
    end

    assert_redirected_to analysis_doc_url(AnalysisDoc.last)
  end

  test "should show analysis_doc" do
    get analysis_doc_url(@analysis_doc)
    assert_response :success
  end

  test "should get edit" do
    get edit_analysis_doc_url(@analysis_doc)
    assert_response :success
  end

  test "should update analysis_doc" do
    patch analysis_doc_url(@analysis_doc), params: { analysis_doc: { us_analysis: @analysis_doc.us_analysis, us_description: @analysis_doc.us_description, us_number: @analysis_doc.us_number } }
    assert_redirected_to analysis_doc_url(@analysis_doc)
  end

  test "should destroy analysis_doc" do
    assert_difference('AnalysisDoc.count', -1) do
      delete analysis_doc_url(@analysis_doc)
    end

    assert_redirected_to analysis_docs_url
  end
end
