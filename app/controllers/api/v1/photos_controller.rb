class Api::V1::PhotosController < ApplicationController
def index
 photos = Photo.all.sort 
 render json: photos
end
def update
 photo = Photo.find(params[:id])
 photo.update(photo_params)
 render json: photo

end
def create
 photo = Photo.create!(photo_params)
 render json: photo
end 

def show
        photo=Photo.find_by(id: params[:id])
        if photo
            render json: photo.to_json(:include => {
                :comments => {:except => [:created_at, :updated_at]}
            }, :except => [:created_at,:updated_at])
        else
            render json: { message: 'photo not found' }
        end
    end


def destroy
photo = Photo.find(params[:id])
photo.destroy
render json: { }
end


private
def photo_params
 params.require(:photo).permit(:name, :imageUrl, :likes)
end 




end
