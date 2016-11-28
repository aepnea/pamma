# == Schema Information
#
# Table name: asociative_users
#
#  id                     :integer          not null, primary key
#  email                  :string(255)      default(""), not null
#  encrypted_password     :string(255)      default(""), not null
#  reset_password_token   :string(255)
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default(0), not null
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :string(255)
#  last_sign_in_ip        :string(255)
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  name                   :string(255)
#  rut                    :string(255)
#  address                :string(255)
#  village                :string(255)
#  mobile                 :string(255)
#  landline               :string(255)
#  region_id              :integer
#  province_id            :integer
#  commune_id             :integer
#  date_foundation        :date
#  partners_number        :integer
#

class AsociativeUser < ActiveRecord::Base
#relaciones

  belongs_to :region
  belongs_to :province
  belongs_to :commune
  has_many :characterization_works
# parece que es 1:1
  has_many :pamma_participations
  has_many :benefit_requesteds
  has_one :representative

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable




         validates_presence_of :name, presence: true, message: "Tu nombre es requerido para la inscripción"
         validates_presence_of :date_foundation, presence: true, message: "Tu apellido es requerido para la inscripción"
         validates_presence_of :rut, presence: true, message: "Tu rut es requerido para la inscripción"
         validates_presence_of :address, presence: true, message: "Tu dirección es requerida para la inscripción"
         validates_presence_of :village, presence: true, message: "Este campo es requerido para la inscripción"
         validates_presence_of :mobile, presence: true, message: "Este campo es requerido para la inscripción"
         validates_presence_of :landline, presence: true, message: "Este campo es requerido para la inscripción"
         validates_presence_of :partners_number, presence: true, message: "Este campo es requerido para la inscripción"
         # validates_presence_of :region_id, presence: true, message: "Este campo es requerido para la inscripción"
         # validates_presence_of :province_id, presence: true, message: "Este campo es requerido para la inscripción"
         # validates_presence_of :commune_id, presence: true, message: "Este campo es requerido para la inscripción"
         validates_presence_of :password_confirmation, presence: true, message: "Necesitas confirmar una password"

end
