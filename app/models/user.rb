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


  #validates :minning_society_name, presence: {message: "Este campo es requerido para la inscripción"}
  #validates :minning_society_rut, presence: {message: "Este campo es requerido para la inscripción"}
  validates :first_name, presence: {message: "Tu nombre es requerido para la inscripción"}
  validates :last_name, presence: {message: "Tu apellido es requerido para la inscripción"}
  validates :surname, presence: {message: "Este campo es requerido para la inscripción"}
  validates :rut, presence: {message: "Tu rut es requerido para la inscripción"}
  validates :birthdate, presence: {message: "Este campo es requerido para la inscripción"}
  validates :gender_id, presence: {message: "Este campo es requerido para la inscripción"}
  validates :civil_status_id, presence: {message: "Este campo es requerido para la inscripción"}
  validates :address, presence: {message: "Tu dirección es requerida para la inscripción"}
  validates :village, presence: {message: "Este campo es requerido para la inscripción"}
  validates :mobile, presence: {message: "Este campo es requerido para la inscripción"}
  validates :landline, presence: {message: "Este campo es requerido para la inscripción"}
  # validates :region_id, presence: {message: "Este campo es requerido para la inscripción"}
  # validates :province_id, presence: {message: "Este campo es requerido para la inscripción"}
  # validates :commune_id, presence: {message: "Este campo es requerido para la inscripción"}
  validates :password_confirmation, presence: {message: "Necesitas confirmar una password"}




  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
