class ImageUploader < CarrierWave::Uploader::Base
  #carrierwaveのminimagickを読み込む
  include CarrierWave::MiniMagick
  #ストレージはfogを指定
  storage :fog
  #process resize_to_fit: でアップロードされた後の画像のサイズを縦横で設定。
  process resize_to_fit: [400, 400]

  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end
end
