# == Schema Information
#
# Table name: categories
#
#  id                 :integer          not null, primary key
#  name               :string
#  description        :string
#  c_img_file_name    :string
#  c_img_content_type :string
#  c_img_file_size    :bigint
#  c_img_updated_at   :datetime
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#

class Category < ApplicationRecord
  has_attached_file :c_img,
        styles: {
            thumb:   { geometry: '500x500>' ,     format: :png, convert_options: " -background white -gravity center -extent 500x500"},
            medium:  { geometry: '630x315>' ,    format: :png, convert_options: " -background white -gravity center -extent 630x315"},
            big:     { geometry: '920x560>' ,    format: :png, convert_options: " -background white -gravity center -extent 920x560"},
            }, 
            default_url: "/images/:style/missing.png"
            validates_attachment_content_type :c_img, content_type: /\Aimage\/.*\z/
            validates :name, presence: true, length: {minimum: 3, too_short: "Enter minimum are %{count} characters." }
            validates :description, presence: true, length: {minimum: 10, too_short: "Enter minimum are %{count} caracteres." }
  has_many :has_categories, :dependent => :destroy
  has_many :products, through: :has_categories, :dependent => :destroy
end
