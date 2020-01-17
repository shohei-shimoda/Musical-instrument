class Tweet < ApplicationRecord
  validates :text, presence: true
  mount_uploader :video, VideoUploader  # mount_uploader :カラム名, carrierwaveの設定ファイルのクラス名
  # belongs_to :instrument
  # has_many :instrument
  belongs_to :user
end