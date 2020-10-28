class TermsController < ApplicationController
  def index
    @terms = Term.all
    render json: @terms
  end

  private

  def term_params
    params.require(:term).permit(:d, :b, :dd)
  end
end
