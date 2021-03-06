module AcceptComments
  def comments
    # @comments = @comments || []
    @comments ||= []
  end

  def add_commment(comment)
    comments << comment
  end
end

class Clip
  include AcceptComments

  def play
    puts "Playing #{object_id}"
  end
end

class Video < Clip
  attr_accessor :resolution
end

class Song < Clip
  attr_accessor :beats_per_minute
end

class Photo
  include AcceptComments

  def initialize
    @format = 'JPEG'
  end
end

photo = Photo.new
photo.add_commment('What a beatiful colors.')
p photo.comments

video = Video.new
video.add_commment('Cool video!')
video.add_commment('Whaddup bro?')
p video.comments
