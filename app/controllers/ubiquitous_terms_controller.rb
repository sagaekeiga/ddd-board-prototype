class UbiquitousTermsController < ApplicationController

  # GET /ubiquitous_terms
  def index
    @ubiquitous_terms = UbiquitousTerm.all
  end

  # GET /ubiquitous_terms/new
  def new
    @ubiquitous_term = UbiquitousTerm.new
  end

  # POST /ubiquitous_terms
  # POST /ubiquitous_terms.json
  def create
    @ubiquitous_term = UbiquitousTerm.new(ubiquitous_term_params)
    respond_to do |format|
      if @ubiquitous_term.save
        format.html { redirect_to ubiquitous_terms_url, notice: 'registered' }
        format.json { render :show, status: :created, location: @ubiquitous_term }
      else
        format.html { render :new }
        format.json { render json: @ubiquitous_term.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  def ubiquitous_term_params
    params.require(:ubiquitous_term).permit(
      :domain_name,
      :program_singularized_name,
      :program_pluralized_name,
      :note
    )
  end
end
