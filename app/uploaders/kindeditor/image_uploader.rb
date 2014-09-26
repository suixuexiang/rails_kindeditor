# encoding: utf-8
gem 'piet'
class Kindeditor::ImageUploader < Kindeditor::AssetUploader
  include Piet::CarrierWaveExtension
  process :optimize
  def extension_white_list
    EXT_NAMES[:image]
  end

end

