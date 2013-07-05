module GalleriesHelper

  def current_gallery
    @gallery || @piece.gallery
  end

end
