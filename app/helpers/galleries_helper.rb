module GalleriesHelper

  def current_gallery
    @gallery || @piece && @piece.gallery
  end

end
