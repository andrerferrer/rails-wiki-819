class EditRequestsController < ApplicationController
  def new
    @section = Section.find params[:section_id]
    @edit_request = EditRequest.new
  end

  def create
    @edit_request = EditRequest.new(strong_params)
    @section = Section.find params[:section_id]
    @edit_request.section = @section

    if @section.save
      redirect_to 'Something_path'
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
