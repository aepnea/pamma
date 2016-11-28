# == Schema Information
#
# Table name: users
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
#  minning_society_name   :string(255)
#  minning_society_rut    :string(255)
#  first_name             :string(255)
#  last_name              :string(255)
#  surname                :string(255)
#  rut                    :string(255)
#  birthdate              :date
#  gender_id              :integer
#  civil_status_id        :integer
#  address                :string(255)
#  village                :string(255)
#  mobile                 :string(255)
#  landline               :string(255)
#  region_id              :integer
#  province_id            :integer
#  commune_id             :integer
#

class User < ActiveRecord::Base
#relaciones

  belongs_to :region
  belongs_to :province
  belongs_to :commune
  belongs_to :gender
  belongs_to :civil_status
  has_many :beneficiaries
  # parece que es 1:1
  has_many :characterization_works
  has_many :pamma_participations
  has_many :personal_backgrounds
  has_many :benefit_requesteds
  #
  has_many :family_groups
  has_many :postulations




  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable

### Validando campos al registrarse


  #validates_presence_of :minning_society_name, presence: true, message: "Este campo es requerido para la inscripción"
  #validates_presence_of :minning_society_rut, presence: true, message: "Este campo es requerido para la inscripción"
  validates_presence_of :first_name, presence: true, message: "Tu nombre es requerido para la inscripción"
  validates_presence_of :last_name, presence: true, message: "Tu apellido es requerido para la inscripción"
  validates_presence_of :surname, presence: true, message: "Este campo es requerido para la inscripción"
  validates_presence_of :rut, presence: true, message: "Tu rut es requerido para la inscripción"
  validates_presence_of :birthdate, presence: true, message: "Este campo es requerido para la inscripción"
  validates_presence_of :gender_id, presence: true, message: "Este campo es requerido para la inscripción"
  validates_presence_of :civil_status_id, presence: true, message: "Este campo es requerido para la inscripción"
  validates_presence_of :address, presence: true, message: "Tu dirección es requerida para la inscripción"
  validates_presence_of :village, presence: true, message: "Este campo es requerido para la inscripción"
  validates_presence_of :mobile, presence: true, message: "Este campo es requerido para la inscripción"
  validates_presence_of :landline, presence: true, message: "Este campo es requerido para la inscripción"
  # validates_presence_of :region_id, presence: true, message: "Este campo es requerido para la inscripción"
  # validates_presence_of :province_id, presence: true, message: "Este campo es requerido para la inscripción"
  # validates_presence_of :commune_id, presence: true, message: "Este campo es requerido para la inscripción"
  validates_presence_of :password_confirmation, presence: true, message: "Necesitas confirmar una password"




  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
