class MusicPlayerController < ApplicationController
  def music_player
     @musics = Dir.glob("public/data/*.mp3")
  end


  def upload
  	DataFile.save(params[:upload]) if !params[:upload].blank?
  	
    redirect_to root_path
  end 


  def delete
  	DataFile.delete(params[:delete_file_name])

    redirect_to root_path
  end
end