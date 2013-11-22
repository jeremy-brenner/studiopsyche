module GalleriesHelper

  def current_gallery
    @gallery || @piece && @piece.gallery
  end

  def prev_piece
    return unless current_gallery
    if current_gallery.pieces.first == @piece
      current_gallery.pieces.last
    else
      current_gallery.pieces.take_while { |piece| piece != @piece}.last
    end
  end

  def next_piece
    return unless current_gallery
    if current_gallery.pieces.last == @piece
      current_gallery.pieces.first
    else
      current_gallery.pieces.reverse.take_while { |piece| piece != @piece}.last
    end
  end

end
