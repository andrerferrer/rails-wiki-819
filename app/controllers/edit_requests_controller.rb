class EditRequestsController < ApplicationController
  def index
    @section = Section.find params[:section_id]
    @edit_requests = @section.edit_requests.pending
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

  def update
    @edit_request = EditRequest.find(params[:id])
    @section = @edit_request.section
    if params[:update] == 'approve'
      @edit_request.approved!
      @edit_request.section.update text: @edit_request.new_text
      redirect_to post_path(@section.post)
    elsif params[:update] == 'reject'
      @edit_request.rejected!
      redirect_to section_edit_requests_path(@section)
    else
      @edit_requests = @section.edit_requests
      render 'index', status: :unprocessable_entity
    end

  end

  private

  def strong_params
    params.require(:edit_request)
          .permit(:new_text)
  end
end
