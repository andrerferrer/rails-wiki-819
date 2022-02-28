class EditRequestsController < ApplicationController
  def index
    @section = Section.find params[:section_id]
    @edit_requests = @section.edit_requests
  end
  
  def new
    @section = Section.find params[:section_id]
    @edit_request = EditRequest.new
  end

  def create
    @edit_request = EditRequest.new(strong_params)
    @section = Section.find params[:section_id]
    @edit_request.section = @section

    if @edit_request.save
      redirect_to section_edit_requests_path(@section)
    else
      render 'new'
    end
  end

  private

  def strong_params
    params.require(:edit_request)
          .permit(:new_text)
  end
end
