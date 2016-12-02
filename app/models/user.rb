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
#

class User < ActiveRecord::Base
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
