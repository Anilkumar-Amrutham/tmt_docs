class AnalysisDocsController < ApplicationController
  before_action :set_analysis_doc, only: [:show, :edit, :update, :destroy]

  # GET /analysis_docs
  # GET /analysis_docs.json
  def index
    @analysis_docs = AnalysisDoc.all
  end

  # GET /analysis_docs/1
  # GET /analysis_docs/1.json
  def show
  end

  # GET /analysis_docs/new
  def new
    @analysis_doc = AnalysisDoc.new
    @analysis_doc.user_id = params[:user_id].to_i if params[:user_id].present?
  end

  # GET /analysis_docs/1/edit
  def edit
  end

  # POST /analysis_docs
  # POST /analysis_docs.json
  def create
    @analysis_doc = AnalysisDoc.new(analysis_doc_params)

    respond_to do |format|
      if @analysis_doc.save
        format.html { redirect_to @analysis_doc, notice: 'Analysis doc was successfully created.' }
        format.json { render :show, status: :created, location: @analysis_doc }
      else
        format.html { render :new }
        format.json { render json: @analysis_doc.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /analysis_docs/1
  # PATCH/PUT /analysis_docs/1.json
  def update
    respond_to do |format|
      if @analysis_doc.update(analysis_doc_params)
        format.html { redirect_to @analysis_doc, notice: 'Analysis doc was successfully updated.' }
        format.json { render :show, status: :ok, location: @analysis_doc }
      else
        format.html { render :edit }
        format.json { render json: @analysis_doc.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /analysis_docs/1
  # DELETE /analysis_docs/1.json
  def destroy
    @analysis_doc.destroy
    respond_to do |format|
      format.html { redirect_to analysis_docs_url, notice: 'Analysis doc was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_analysis_doc
      @analysis_doc = AnalysisDoc.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def analysis_doc_params
      params.require(:analysis_doc).permit(:us_number, :us_description, :us_analysis, :user_id)
    end
end
