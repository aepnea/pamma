# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


## Tablas Estaticas
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

RelationshipType.create([{ name: 'Jefe de Hogar' }, \
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
