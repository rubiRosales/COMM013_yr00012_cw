class NewslettersController < ApplicationController
  def index
    @newsletters = NewsLetter.all
    @title = "Newsletters"
  end
  def show
  end
    private
    # Use callbacks to share common setup or constraints between actions.
    def set_event
      @newsletter = NewsLetter.find(params[:id])
    end

end
