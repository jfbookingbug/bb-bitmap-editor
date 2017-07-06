scribe 'Initialising an image' do
  class BitmapEditor
    def initialize(image)
      @image = image
    end

    def run(command)
      width = command.split(' ')[1].to_i
      height = command.split(' ')[2].to_i
      @image.create(width: width, height: height)
    end
  end

  describe 'I 1 1' do
    it 'initialises a 1px x 1px image' do
      image = double(:bmp_image)
      expect(image).to receive(:create).with(width: 1, height: 1)

      BitmapEditor.new(image).run('I 1 1')
    end
  end

  describe 'I 2 1' do
    it 'initialises a 2px x 1px image' do
      image = double(:bmp_image)
      expect(image).to receive(:create).with(width: 2, height: 1)

      BitmapEditor.new(image).run('I 2 1')
    end
  end


  describe 'I 3 3' do
    it 'initialises a 2px x 1px image' do
      image = double(:bmp_image)
      expect(image).to receive(:create).with(width: 3, height: 3)

      BitmapEditor.new(image).run('I 3 3')
    end
  end

end 
