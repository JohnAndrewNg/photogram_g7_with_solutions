class PicturesController < ActionController::Base
  # protect_from_forgery with: :exception

#CREATE
  def new_form
    render ("pic_templates/new_form.html.erb")
  end

  def create_row
    render ("pic_templates/create_row.html.erb")
  end

#READ
  def index
    render ("pic_templates/index.html.erb")
  end

  def show
    render ("pic_templates/show.html.erb")
  end

#UPDATE
  def edit_form
    render ("pic_templates/edit_form.html.erb")
  end

  def update_row
    render ("pic_templates/update_row.html.erb")
  end

#DELETE
  def destroy_row
    render ("pic_templates/destroy_row.html.erb")
  end


end
