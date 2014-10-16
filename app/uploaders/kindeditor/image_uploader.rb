# encoding: utf-8
class Kindeditor::ImageUploader < Kindeditor::AssetUploader
  def extension_white_list
    EXT_NAMES[:image]
  end

  def filename
    if original_filename+
      @name ||= "#{image_ratio(file)}" + Digest::MD5.hexdigest(File.dirname(current_path)).slice(0, 12)
      "#{@name}.#{file.extension}"
    end
  end

  def image_ratio(file)
    if file
      image = MiniMagick::Image.open(file.path)
      "ratio#{(image['width'].to_f/image['height'].to_f).round(3)}_"
    end
  end

end

