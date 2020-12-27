class Camera
  def load
    puts 'Winding film.'
  end

  def take_picture
    puts 'Triggering shutter.'
  end
end

class DigitalCamera < Camera
  def load
    puts 'Inserting memory card.'
  end
end

camera = Camera.new
camera.load
camera.take_picture

d_camera = DigitalCamera.new
d_camera.load
d_camera.take_picture
