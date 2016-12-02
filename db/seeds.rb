# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


## Tablas Estaticas
PostulationState.create ([{ name: 'Aprobado' }, \
               { name: 'Rechazado' },\
               { name: 'En Revisión'}])

UserType.create([{ name: 'Individual' }, \
               { name: 'Asociativo' }])

AdminType.create([{ name: 'PAMMA' }, \
                  { name: 'Sernageomin' }, \
                  { name: 'Enami' }])

GenderType.create([{ name: 'Masculino' }, \
               { name: 'Femenino' }])

CivilStatusType.create([{ name: 'Soltero/a' }, \
                        { name: 'Casado/a' }, \
                        { name: 'Divorciado/a' }, \
                        { name: 'Viudo/a' }])

ScholarshipType.create([{ name: 'Básica Completa' }, \
                        { name: 'Básica incompleta' }, \
                        { name: 'Media Completa' }, \
                        { name: 'Media Incompleta' }, \
                        { name: 'Técnica Completa' }, \
                        { name: 'Técnica Incompleta' }, \
                        { name: 'Universitaria Completa' }, \
                        { name: 'Universitaria Incompleta' }, \
                        { name: 'Ninguna' }])

RetirementSystemType.create([{ name: 'No Cotiza' }, \
                        { name: 'AFP' }, \
                        { name: 'INP' }, \
                        { name: 'Jubilación' }])

ActivityType.create([{ name: 'Comercio' }, \
                        { name: 'Servicio' }, \
                        { name: 'No tiene otra actividad' }, \
                        { name: 'Otra' }])

TrainingType.create([{ name: 'Minería' }, \
                        { name: 'Agricultura' }, \
                        { name: 'Pesca' }, \
                        { name: 'Industrial' }, \
                        { name: 'Otra' }])

SocialRecordStatusType.create([{ name: 'Registro Social de Hogares (RSH)' }, \
                               { name: 'No posee Ficha' }, \
                               { name: 'Ficha en trámite' }])

RelationshipType.create([{ name: 'Jefe/a de Hogar' }, \
                        { name: 'Cónyuge' }, \
                        { name: 'Hijo/a' }, \
                        { name: 'Tío/a' }, \
                        { name: 'Hermano/a' }, \
                        { name: 'Cuñado/a' }, \
                        { name: 'Sobrino/a' }, \
                        { name: 'Nieto/a' }, \
                        { name: 'Yerno/Nuera' }, \
                        { name: 'Madre'}, \
                        { name: 'Padre'}, \
                        { name: 'Allegado'}, \
                        { name: 'Coviviente'}, \
                        { name: 'Otro'}])

BenefitType.create([{ name: 'Desarrollo de Labores' }, \
                        { name: 'Compra de equipos' }, \
                        { name: 'Capacitación' }, \
                        { name: 'Asistencia Técnica' }, \
                        { name: 'Otra' }])

ProjectStateType.create([{ name: 'En Gestación' }, \
                        { name: 'En Desarrollo' }, \
                        { name: 'Rechazado' }, \
                        { name: 'Finalizado' }])

SupportType.create([{ name: 'Municipalidad' }, \
                        { name: 'ONG' }, \
                        { name: 'Fosis' }, \
                        { name: 'Prodesal' }, \
                        { name: 'SAG' }, \
                        { name: 'Sernam' }, \
                        { name: 'Proempleo' }, \
                        { name: 'ChileBarrio' }, \
                        { name: 'Sence' }, \
                        { name: 'Sercotec' }, \
                        { name: 'Corfo' }, \
                        { name: 'Otros' }, \
                        { name: 'Ninguno' }])

OwnerType.create([{ name: 'Propia' }, \
                  { name: 'Arrendada' }])

MiningPropertiesConstitutionType.create([{ name: 'Manifestación' }, \
                                         { name: 'Mensura' }, \
                                         { name: 'Sentencia Constitutiva' }])

OperationType.create([{ name: 'Desmonte' }, \
                      { name: 'Pique' }, \
                      { name: 'Socavón' }, \
                      { name: 'Rajo Abierto' }, \
                      { name: 'Minerales Extraídos' }])

ExtractedMineralType.create([{ name: 'Óxido de Cobre' }, \
                      { name: 'Sulfuro de Cobre' }, \
                      { name: 'Otros Minerales Extraídos' }])

MiningInformationAvailableType.create([{ name: 'Topografía' }, \
                      { name: 'Geología' }, \
                      { name: 'Sondaje' }, \
                      { name: 'Plan de Explotación' }, \
                      { name: 'No Tiene' }])



####### DATOS DE PRUEBA

#### Creando usuarios individuales

user1 = User.new
user1.email = 'user1@example.com'
user1.password = '123123'
user1.password_confirmation = '123123'
user1.minning_society_name =''
user1.minning_society_rut =''
user1.first_name ='joselito'
user1.last_name ='bacca'
user1.surname ='bacca'
user1.rut        ='172993003-5'
#user1.birthdate  =''
#user1.gender_id  =''
#user1.civil_status_id =''
user1.address    = 'osvaldo castillo 1359'
user1.village    ='cona'
#user1.mobile     =''
#user1.landline   =''
user1.region_id  =''
user1.province_id =''
user1.commune_id =''
user1.save!

user2 = User.new
user2.email = 'user2@example.com'
user2.password = '123123'
user2.password_confirmation = '123123'
user2.minning_society_name =''
user2.minning_society_rut =''
user2.first_name ='platon'
user2.last_name ='bacca'
user2.surname ='bacca'
user2.rut        ='172993003-5'
#user2.birthdate  =''
#user2.gender_id  =''
#user2.civil_status_id =''
user2.address    = 'osvaldo castillo 1359'
user2.village    ='cona'
#user2.mobile     =''
#user2.landline   =''
user2.region_id  =''
user2.province_id =''
user2.commune_id =''
user2.save!

##### Postulaciones

PostulationDate.create ([{name: 'Super Postulacion', date_begin: '2016-11-29',  date_end: '2017-11-29', user_type: '',postulation_standard_id:'', state: 'true' },\
                         {name: 'Super Postulacion2', date_begin: '2016-11-29',  date_end: '2017-11-29', user_type: '',postulation_standard_id:'', state: 'true'}])

Postulation.create([{postulation_date_id:'1', user_id: '1', personal_backgrounds_id: '', family_group_id: '', pamma_participation_id: '', beneficiary_id: '', characterization_work_id: '', benefit_requested_id: '', representative_id: '',  milestone_name:'nombre del hito', milestone_description: 'descripción del hito', milestone_date_begin: '2016-11-29', milestone_date_end: '2017-11-29', postulation_state_id: '1'}, \
                    {postulation_date_id:'2',user_id: '2', personal_backgrounds_id: '', family_group_id: '', pamma_participation_id: '', beneficiary_id: '', characterization_work_id: '', benefit_requested_id: '', representative_id: '',  milestone_name:'nombre del hito', milestone_description: 'descripción del hito', milestone_date_begin: '2016-11-29', milestone_date_end: '2017-11-29', postulation_state_id: '1'}])

#### Usuario Asociativo
user3                       = AsociativeUser.new
user3.email                 = 'user3@example.com'
user3.password              = '123123'
user3.password_confirmation = '123123'
user3.name                  ='user3'
user3.rut                   ='15119027-8'
user3.address               ='osvaldo castillo 1359'
user3.village               ='cona'
#user3.mobile               =''
#user3.landline             =''
user3.region_id             =''
user3.province_id           =''
user3.commune_id            =''
#user3.date_foundation      =''
user3.partners_number       ='10'
user3.save!

user4                       = AsociativeUser.new
user4.email                 = 'user4@example.com'
user4.password              = '123123'
user4.password_confirmation = '123123'
user4.name                  ='user4'
user4.rut                   ='15119027-8'
user4.address               ='osvaldo castillo 1359'
user4.village               ='cona'
#user3.mobile               =''
#user3.landline             =''
user4.region_id             =''
user4.province_id           =''
user4.commune_id            =''
#user4.date_foundation      =''
user4.partners_number       ='10'
user4.save!
