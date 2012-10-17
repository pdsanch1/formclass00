class PicturesController < ApplicationController
  
  # Challenge:
  # 1. Support this url: /pictures/1
  # and show the first photo from the array 
  # 2. Support this url: /pictures/2
  # and show the second photo from the array 
  # 
  def create
    new_url=params["sample_text_field"]
    p=Picture.new
    p.url=new_url
    p.save
    redirect_to '/pictures'
  end
  
  def add_picture

  end
  
  def image_library
    return Picture.all
  end
  
  def show
    id_number = params["id"].to_i
    @url = image_library[id_number - 1]
  end
  
  def index
    @picture_urls = Picture.all 
    @width = params["width"]
    @color = params["color"]
  end
  
end