class PicturesController < ApplicationController
  # protect_from_forgery with: :exception

#CREATE
  def new_form
    render ("pic_templates/new_form.html.erb")
  end

  def create_row

    p = Photo.new
    p.source = params["the_source"]
    p.caption = params["the_caption"]
    p.save

    @current_count = Photo.count

#    render ("pic_templates/create_row.html.erb")
    redirect_to("/photos")
  end

#READ
  def index
    @list_of_photos = Photo.all.order(:created_at => :desc)
    render ("pic_templates/index.html.erb")
  end

  def show
    # The parameters look like: {"the_id" => "4"}

    id_number = params["the_id"]

    @my_photo = Photo.find(id_number)

    render ("pic_templates/show.html.erb")
  end

#UPDATE
  def edit_form
    @my_photo = Photo.find(params["la_id"])
    render ("pic_templates/edit_form.html.erb")
  end

  def update_row
    p = Photo.find(params["le_id"])
    p.source = params["the_source"]
    p.caption = params["the_caption"]
    p.save
    @my_photo = p
#    render ("pic_templates/update_row.html.erb")
    redirect_to("/photos/#{@my_photo.id}")
  end

#DELETE
  def destroy_row
    p = Photo.find(params["da_id"])
    p.destroy
    @current_count = Photo.count
#    render ("pic_templates/destroy_row.html.erb")
    redirect_to("/photos")
  end


end
