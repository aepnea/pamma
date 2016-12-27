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

Region.create([{	name: 'Region de ARICA Y PARINACOTA'	}, \
               {	name: 'Region de ANTOFAGASTA'	}, \
               {	name: 'Region de ATACAMA'	}, \
               {	name: 'Region de COQUIMBO'	}, \
               {	name: 'Region de VALPARAÍSO'	}, \
               {	name: "Region de DEL LIBERTADOR GRAL. BERNARDO O'HIGGINS"	}, \
               {	name: 'Region de DEL MAULE'	}, \
               {	name: 'Region de DEL BIOBÍO'	}, \
               {	name: 'Region de DE LA ARAUCANÍA'	}, \
               {	name: 'Region DE LOS RÍOS'	}, \
               {	name: 'Region DE LOS LAGOS'	}, \
               {	name: 'Region de AISÉN DEL GRAL. CARLOS IBAÑEZ DEL CAMPO'	}, \
               {	name: 'Region de MAGALLANES Y DE LA ANTÁRTICA CHILENA'	}, \
               {	name: 'REGIÓN METROPOLITANA DE SANTIAGO'	}])


 Province.create([{	name: 'Arica', region_id: '1'	}, \
                  {	name: 'Parinacota', region_id: '1'	}, \
                  {	name: 'Iquique', region_id: '2'	}, \
                  {	name: 'Tamarugal', region_id: '2'	}, \
                  {	name: 'Antofagasta', region_id: '3'	}, \
                  {	name: 'El Loa', region_id: '3'	}, \
                  {	name: 'Tocopilla', region_id: '3'	}, \
                  {	name: 'Copiapó', region_id: '4'	}, \
                  {	name: 'Chañaral', region_id: '4'	}, \
                  {	name: 'Huasco', region_id: '4'	}, \
                  {	name: ' Elqui', region_id: '5'	}, \
                  {	name: 'Choapa', region_id: '5'	}, \
                  {	name: 'Limarí', region_id: '5'	}, \
                  {	name: 'Valparaíso', region_id: '6'	}, \
                  {	name: 'Isla de Pascua', region_id: '6'	}, \
                  {	name: 'Los Andes', region_id: '6'	}, \
                  {	name: 'Petorca', region_id: '6'	}, \
                  {	name: 'San Antonio', region_id: '6'	}, \
                  {	name: 'San Felipe de Aconcagua', region_id: '6'	}, \
                  {	name: 'Marga Marga', region_id: '6'	}, \
                  {	name: 'Cachapoal', region_id: '7'	}, \
                  {	name: 'Cardenal Caro', region_id: '7'	}, \
                  {	name: 'Colchagua', region_id: '7'	}, \
                  {	name: 'Talca', region_id: '8'	}, \
                  {	name: 'Cauquenes', region_id: '8'	}, \
                  {	name: 'Curicó', region_id: '8'	}, \
                  {	name: 'Linares', region_id: '8'	}, \
                  {	name: 'Concepción', region_id: '9'	}, \
                  {	name: 'Arauco', region_id: '9'	}, \
                  {	name: 'Biobío', region_id: '9'	}, \
                  {	name: 'Ñuble', region_id: '9'	}, \
                  {	name: 'Cautín', region_id: '10'	}, \
                  {	name: 'Malleco', region_id: '10'	}, \
                  {	name: 'Valdivia', region_id: '11'	}, \
                  {	name: 'Ranco', region_id: '11'	}, \
                  {	name: 'Llanquihue', region_id: '12'	}, \
                  {	name: 'Chiloé', region_id: '12'	}, \
                  {	name: 'Osorno', region_id: '12'	}, \
                  {	name: 'Palena', region_id: '12'	}, \
                  {	name: 'Coyhaique', region_id: '13'	}, \
                  {	name: 'Aisén', region_id: '1'	}, \
                  {	name: 'Capitán Prat', region_id: '13'	}, \
                  {	name: 'General Carrera', region_id: '13'	}, \
                  {	name: 'Magallanes', region_id: '14'	}, \
                  {	name: ' Antártica Chilena', region_id: '14'	}, \
                  {	name: 'Tierra del Fuego', region_id: '4'	}, \
                  {	name: 'Ultima Esperanza', region_id: '14'	}, \
                  {	name: 'Santiago', region_id: '15'	}, \
                  {	name: 'Cordillera', region_id: '15'	}, \
                  {	name: 'Chacabuco', region_id: '15'	}, \
                  {	name: 'Maipo', region_id: '15'	}, \
                  {	name: 'Melipilla', region_id: '15'	}, \
                  {	name: 'Talagante', region_id: '15'	}])

 Commune.create([{	name: 'Arica', province_id: '1'	}, \
                 {	name: 'Camarones', province_id: '1'	}, \
                 {	name: 'Putre', province_id: '2'	}, \
                 {	name: 'General Lagos', province_id: '2'	}, \
                 {	name: 'Iquique', province_id: '3'	}, \
                 {	name: 'Alto Hospicio', province_id: '3'	}, \
                 {	name: 'Pozo Almonte', province_id: '4'	}, \
                 {	name: 'Camiña', province_id: '4'	}, \
                 {	name: 'Colchane', province_id: '4'	}, \
                 {	name: 'Huara', province_id: '4'	}, \
                 {	name: 'Pica', province_id: '4'	}, \
                 {	name: 'Antofagasta', province_id: '5'	}, \
                 {	name: 'Mejillones', province_id: '5'	}, \
                 {	name: 'Sierra Gorda', province_id: '5'	}, \
                 {	name: 'Taltal', province_id: '5'	}, \
                 {	name: 'Calama', province_id: '6'	}, \
                 {	name: 'Ollagüe', province_id: '6'	}, \
                 {	name: 'San Pedro de Atacama', province_id: '6'	}, \
                 {	name: 'Tocopilla', province_id: '7'	}, \
                 {	name: 'María Elena', province_id: '7'	}, \
                 {	name: 'Copiapó', province_id: '8'	}, \
                 {	name: 'Caldera', province_id: '8'	}, \
                 {	name: 'Tierra Amarilla', province_id: '8'	}, \
                 {	name: 'Chañaral', province_id: '9'	}, \
                 {	name: 'Diego de Almagro', province_id: '9'	}, \
                 {	name: 'Vallenar', province_id: '10'	}, \
                 {	name: 'Alto del Carmen', province_id: '10'	}, \
                 {	name: 'Freirina', province_id: '10'	}, \
                 {	name: 'Huasco', province_id: '10'	}, \
                 {	name: 'La Serena', province_id: '11'	}, \
                 {	name: 'Coquimbo', province_id: '11'	}, \
                 {	name: 'Andacollo', province_id: '11'	}, \
                 {	name: 'La Higuera', province_id: '11'	}, \
                 {	name: 'Paiguano', province_id: '11'	}, \
                 {	name: 'Vicuña', province_id: '11'	}, \
                 {	name: 'Illapel', province_id: '12'	}, \
                 {	name: 'Canela', province_id: '12'	}, \
                 {	name: 'Los Vilos', province_id: '12'	}, \
                 {	name: 'Salamanca', province_id: '12'	}, \
                 {	name: 'Ovalle', province_id: '13'	}, \
                 {	name: 'Combarbalá', province_id: '13'	}, \
                 {	name: 'Monte Patria', province_id: '13'	}, \
                 {	name: 'Punitaqui', province_id: '13'	}, \
                 {	name: 'Río Hurtado', province_id: '13'	}, \
                 {	name: 'Valparaíso', province_id: '14'	}, \
                 {	name: 'Casablanca', province_id: '14'	}, \
                 {	name: 'Concón', province_id: '14'	}, \
                 {	name: 'Juan Fernández', province_id: '14'	}, \
                 {	name: 'Puchuncaví', province_id: '14'	}, \
                 {	name: 'Quintero', province_id: '14'	}, \
                 {	name: 'Viña del Mar', province_id: '14'	}, \
                 {	name: 'Isla de Pascua', province_id: '15'	}, \
                 {	name: 'Los Andes', province_id: '16'	}, \
                 {	name: 'Calle Larga', province_id: '16'	}, \
                 {	name: 'Rinconada', province_id: '16'	}, \
                 {	name: 'San Esteban', province_id: '16'	}, \
                 {	name: 'Quillota', province_id: '17'	}, \
                 {	name: 'Calera', province_id: '17'	}, \
                 {	name: 'Hijuelas', province_id: '17'	}, \
                 {	name: 'La Cruz', province_id: '17'	}, \
                 {	name: 'Nogales', province_id: '17'	}, \
                 {	name: 'San Antonio', province_id: '18'	}, \
                 {	name: 'Algarrobo', province_id: '18'	}, \
                 {	name: 'Cartagena', province_id: '18'	}, \
                 {	name: 'El Quisco', province_id: '18'	}, \
                 {	name: 'El Tabo', province_id: '18'	}, \
                 {	name: 'Santo Domingo', province_id: '18'	}, \
                 {	name: 'San Felipe', province_id: '19'	}, \
                 {	name: 'Catemu', province_id: '19'	}, \
                 {	name: 'Llaillay', province_id: '19'	}, \
                 {	name: 'Panquehue', province_id: '19'	}, \
                 {	name: 'Putaendo', province_id: '19'	}, \
                 {	name: 'Santa María', province_id: '19'	}, \
                 {	name: 'Limache', province_id: '20'	}, \
                 {	name: 'Quilpué', province_id: '20'	}, \
                 {	name: 'Villa Alemana', province_id: '20'	}, \
                 {	name: 'Olmué', province_id: '20'	}, \
                 {	name: 'Rancagua', province_id: '21'	}, \
                 {	name: 'Codegua', province_id: '21'	}, \
                 {	name: 'Coinco', province_id: '21'	}, \
                 {	name: 'Coltauco', province_id: '21'	}, \
                 {	name: 'Doñihue', province_id: '21'	}, \
                 {	name: 'Graneros', province_id: '21'	}, \
                 {	name: 'Las Cabras', province_id: '21'	}, \
                 {	name: 'Machalí', province_id: '21'	}, \
                 {	name: 'Malloa', province_id: '21'	}, \
                 {	name: 'Mostazal', province_id: '21'	}, \
                 {	name: 'Olivar', province_id: '21'	}, \
                 {	name: 'Peumo', province_id: '21'	}, \
                 {	name: 'Pichidegua', province_id: '21'	}, \
                 {	name: 'Quinta de Tilcoco', province_id: '21'	}, \
                 {	name: 'Rengo', province_id: '21'	}, \
                 {	name: 'Requínoa', province_id: '21'	}, \
                 {	name: 'San Vicente', province_id: '21'	}, \
                 {	name: 'Pichilemu', province_id: '22'	}, \
                 {	name: 'La Estrella', province_id: '22'	}, \
                 {	name: 'Litueche', province_id: '22'	}, \
                 {	name: 'Marchihue', province_id: '22'	}, \
                 {	name: 'Navidad', province_id: '22'	}, \
                 {	name: 'Paredones', province_id: '22'	}, \
                 {	name: 'San Fernando', province_id: '23'	}, \
                 {	name: 'Chépica', province_id: '23'	}, \
                 {	name: 'Chimbarongo', province_id: '23'	}, \
                 {	name: 'Lolol', province_id: '23'	}, \
                 {	name: 'Nancagua', province_id: '23'	}, \
                 {	name: 'Palmilla', province_id: '23'	}, \
                 {	name: 'Peralillo', province_id: '23'	}, \
                 {	name: 'Placilla', province_id: '23'	}, \
                 {	name: 'Pumanque', province_id: '23'	}, \
                 {	name: 'Santa Cruz', province_id: '23'	}, \
                 {	name: 'Talca', province_id: '24'	}, \
                 {	name: 'Constitución', province_id: '24'	}, \
                 {	name: 'Curepto', province_id: '24'	}, \
                 {	name: 'Empedrado', province_id: '24'	}, \
                 {	name: 'Maule', province_id: '24'	}, \
                 {	name: 'Pelarco', province_id: '24'	}, \
                 {	name: 'Pencahue', province_id: '24'	}, \
                 {	name: 'Río Claro', province_id: '24'	}, \
                 {	name: 'San Clemente', province_id: '24'	}, \
                 {	name: 'San Rafael', province_id: '24'	}, \
                 {	name: 'Cauquenes', province_id: '25'	}, \
                 {	name: 'Chanco', province_id: '25'	}, \
                 {	name: 'Pelluhue', province_id: '25'	}, \
                 {	name: 'Curicó', province_id: '26'	}, \
                 {	name: 'Hualañé', province_id: '26'	}, \
                 {	name: 'Licantén', province_id: '26'	}, \
                 {	name: 'Molina', province_id: '26'	}, \
                 {	name: 'Rauco', province_id: '26'	}, \
                 {	name: 'Romeral', province_id: '26'	}, \
                 {	name: 'Sagrada Familia', province_id: '26'	}, \
                 {	name: 'Teno', province_id: '26'	}, \
                 {	name: 'Vichuquén', province_id: '26'	}, \
                 {	name: 'Linares', province_id: '27'	}, \
                 {	name: 'Colbún', province_id: '27'	}, \
                 {	name: 'Longaví', province_id: '27'	}, \
                 {	name: 'Parral', province_id: '27'	}, \
                 {	name: 'Retiro', province_id: '27'	}, \
                 {	name: 'San Javier', province_id: '27'	}, \
                 {	name: 'Villa Alegre', province_id: '27'	}, \
                 {	name: 'Yerbas Buenas', province_id: '27'	}, \
                 {	name: 'Concepción', province_id: '28'	}, \
                 {	name: 'Coronel', province_id: '28'	}, \
                 {	name: 'Chiguayante', province_id: '28'	}, \
                 {	name: 'Florida', province_id: '28'	}, \
                 {	name: 'Hualqui', province_id: '28'	}, \
                 {	name: 'Lota', province_id: '28'	}, \
                 {	name: 'Penco', province_id: '28'	}, \
                 {	name: 'San Pedro de la Paz', province_id: '28'	}, \
                 {	name: 'Santa Juana', province_id: '28'	}, \
                 {	name: 'Talcahuano', province_id: '28'	}, \
                 {	name: 'Tomé', province_id: '28'	}, \
                 {	name: 'Hualpén', province_id: '28'	}, \
                 {	name: 'Lebu', province_id: '29'	}, \
                 {	name: 'Arauco', province_id: '29'	}, \
                 {	name: 'Cañete', province_id: '29'	}, \
                 {	name: 'Contulmo', province_id: '29'	}, \
                 {	name: 'Curanilahue', province_id: '29'	}, \
                 {	name: 'Los Alamos', province_id: '29'	}, \
                 {	name: 'Tirúa', province_id: '29'	}, \
                 {	name: 'Los Angeles', province_id: '30'	}, \
                 {	name: 'Antuco', province_id: '30'	}, \
                 {	name: 'Cabrero', province_id: '30'	}, \
                 {	name: 'Laja', province_id: '30'	}, \
                 {	name: 'Mulchén', province_id: '30'	}, \
                 {	name: 'Nacimiento', province_id: '30'	}, \
                 {	name: 'Negrete', province_id: '30'	}, \
                 {	name: 'Quilaco', province_id: '30'	}, \
                 {	name: 'Quilleco', province_id: '30'	}, \
                 {	name: 'San Rosendo', province_id: '30'	}, \
                 {	name: 'Santa Bárbara', province_id: '30'	}, \
                 {	name: 'Tucapel', province_id: '30'	}, \
                 {	name: 'Yumbel', province_id: '30'	}, \
                 {	name: 'Alto Biobío', province_id: '30'	}, \
                 {	name: 'Chillán', province_id: '31'	}, \
                 {	name: 'Bulnes', province_id: '31'	}, \
                 {	name: 'Cobquecura', province_id: '31'	}, \
                 {	name: 'Coelemu', province_id: '31'	}, \
                 {	name: 'Coihueco', province_id: '31'	}, \
                 {	name: 'Chillán Viejo', province_id: '31'	}, \
                 {	name: 'El Carmen', province_id: '31'	}, \
                 {	name: 'Ninhue', province_id: '31'	}, \
                 {	name: 'Ñiquén', province_id: '31'	}, \
                 {	name: 'Pemuco', province_id: '31'	}, \
                 {	name: 'Pinto', province_id: '31'	}, \
                 {	name: 'Portezuelo', province_id: '31'	}, \
                 {	name: 'Quillón', province_id: '31'	}, \
                 {	name: 'Quirihue', province_id: '31'	}, \
                 {	name: 'Ránquil', province_id: '31'	}, \
                 {	name: 'San Carlos', province_id: '31'	}, \
                 {	name: 'San Fabián', province_id: '31'	}, \
                 {	name: 'San Ignacio', province_id: '31'	}, \
                 {	name: 'San Nicolás', province_id: '31'	}, \
                 {	name: 'Treguaco', province_id: '31'	}, \
                 {	name: 'Yungay', province_id: '31'	}, \
                 {	name: 'Temuco', province_id: '32'	}, \
                 {	name: 'Carahue', province_id: '32'	}, \
                 {	name: 'Cunco', province_id: '32'	}, \
                 {	name: 'Curarrehue', province_id: '32'	}, \
                 {	name: 'Freire', province_id: '32'	}, \
                 {	name: 'Galvarino', province_id: '32'	}, \
                 {	name: 'Gorbea', province_id: '32'	}, \
                 {	name: 'Lautaro', province_id: '32'	}, \
                 {	name: 'Loncoche', province_id: '32'	}, \
                 {	name: 'Melipeuco', province_id: '32'	}, \
                 {	name: 'Nueva Imperial', province_id: '32'	}, \
                 {	name: 'Padre Las Casas', province_id: '32'	}, \
                 {	name: 'Perquenco', province_id: '32'	}, \
                 {	name: 'Pitrufquén', province_id: '32'	}, \
                 {	name: 'Pucón', province_id: '32'	}, \
                 {	name: 'Saavedra', province_id: '32'	}, \
                 {	name: 'Teodoro Schmidt', province_id: '32'	}, \
                 {	name: 'Toltén', province_id: '32'	}, \
                 {	name: 'Vilcún', province_id: '32'	}, \
                 {	name: 'Villarrica', province_id: '32'	}, \
                 {	name: 'Cholchol', province_id: '32'	}, \
                 {	name: 'Angol', province_id: '33'	}, \
                 {	name: 'Collipulli', province_id: '33'	}, \
                 {	name: 'Curacautín', province_id: '33'	}, \
                 {	name: 'Ercilla', province_id: '33'	}, \
                 {	name: 'Lonquimay', province_id: '33'	}, \
                 {	name: 'Los Sauces', province_id: '33'	}, \
                 {	name: 'Lumaco', province_id: '33'	}, \
                 {	name: 'Purén', province_id: '33'	}, \
                 {	name: 'Renaico', province_id: '33'	}, \
                 {	name: 'Traiguén', province_id: '33'	}, \
                 {	name: 'Victoria', province_id: '33'	}, \
                 {	name: 'Valdivia', province_id: '34'	}, \
                 {	name: 'Corral', province_id: '34'	}, \
                 {	name: 'Lanco', province_id: '34'	}, \
                 {	name: 'Los Lagos', province_id: '34'	}, \
                 {	name: 'Máfil', province_id: '34'	}, \
                 {	name: 'Mariquina', province_id: '34'	}, \
                 {	name: 'Paillaco', province_id: '34'	}, \
                 {	name: 'Panguipulli', province_id: '34'	}, \
                 {	name: 'La Unión', province_id: '35'	}, \
                 {	name: 'Futrono', province_id: '35'	}, \
                 {	name: 'Lago Ranco', province_id: '35'	}, \
                 {	name: 'Río Bueno', province_id: '35'	}, \
                 {	name: 'Puerto Montt', province_id: '36'	}, \
                 {	name: 'Calbuco', province_id: '36'	}, \
                 {	name: 'Cochamó', province_id: '36'	}, \
                 {	name: 'Fresia', province_id: '36'	}, \
                 {	name: 'Frutillar', province_id: '36'	}, \
                 {	name: 'Los Muermos', province_id: '36'	}, \
                 {	name: 'Llanquihue', province_id: '36'	}, \
                 {	name: 'Maullín', province_id: '36'	}, \
                 {	name: 'Puerto Varas', province_id: '36'	}, \
                 {	name: 'Castro', province_id: '37'	}, \
                 {	name: 'Ancud', province_id: '37'	}, \
                 {	name: 'Chonchi', province_id: '37'	}, \
                 {	name: 'Curaco de Vélez', province_id: '37'	}, \
                 {	name: 'Dalcahue', province_id: '37'	}, \
                 {	name: 'Puqueldón', province_id: '37'	}, \
                 {	name: 'Queilén', province_id: '37'	}, \
                 {	name: 'Quellón', province_id: '37'	}, \
                 {	name: 'Quemchi', province_id: '37'	}, \
                 {	name: 'Quinchao', province_id: '37'	}, \
                 {	name: 'Osorno', province_id: '38'	}, \
                 {	name: 'Puerto Octay', province_id: '38'	}, \
                 {	name: 'Purranque', province_id: '38'	}, \
                 {	name: 'Puyehue', province_id: '38'	}, \
                 {	name: 'Río Negro', province_id: '38'	}, \
                 {	name: 'San Juan de la Costa', province_id: '38'	}, \
                 {	name: 'San Pablo', province_id: '38'	}, \
                 {	name: 'Chaitén', province_id: '39'	}, \
                 {	name: 'Futaleufú', province_id: '39'	}, \
                 {	name: 'Hualaihué', province_id: '39'	}, \
                 {	name: 'Palena', province_id: '39'	}, \
                 {	name: 'Coyhaique', province_id: '40'	}, \
                 {	name: 'Lago Verde', province_id: '40'	}, \
                 {	name: 'Aisén', province_id: '40'	}, \
                 {	name: 'Cisnes', province_id: '40'	}, \
                 {	name: 'Guaitecas', province_id: '40'	}, \
                 {	name: 'Cochrane', province_id: '41'	}, \
                 {	name: "O'Higgins", province_id: '41'	}, \
                 {	name: 'Tortel', province_id: '41'	}, \
                 {	name: 'Chile Chico', province_id: '42'	}, \
                 {	name: 'Río Ibáñez', province_id: '42'	}, \
                 {	name: 'Punta Arenas', province_id: '43'	}, \
                 {	name: 'Laguna Blanca', province_id: '43'	}, \
                 {	name: 'Río Verde', province_id: '43'	}, \
                 {	name: 'San Gregorio', province_id: '43'	}, \
                 {	name: 'Cabo de Hornos', province_id: '44'	}, \
                 {	name: 'Antártica', province_id: '44'	}, \
                 {	name: 'Porvenir', province_id: '45'	}, \
                 {	name: 'Primavera', province_id: '45'	}, \
                 {	name: 'Timaukel', province_id: '45'	}, \
                 {	name: 'Natales', province_id: '46'	}, \
                 {	name: 'Torres del Paine', province_id: '46'	}, \
                 {	name: 'Santiago', province_id: '47'	}, \
                 {	name: 'Cerrillos', province_id: '47'	}, \
                 {	name: 'Cerro Navia', province_id: '47'	}, \
                 {	name: 'Conchalí', province_id: '47'	}, \
                 {	name: 'El Bosque', province_id: '47'	}, \
                 {	name: 'Estación Central', province_id: '47'	}, \
                 {	name: 'Huechuraba', province_id: '47'	}, \
                 {	name: 'Independencia', province_id: '47'	}, \
                 {	name: 'La Cisterna', province_id: '47'	}, \
                 {	name: 'La Florida', province_id: '47'	}, \
                 {	name: 'La Granja', province_id: '47'	}, \
                 {	name: 'La Pintana', province_id: '47'	}, \
                 {	name: 'La Reina', province_id: '47'	}, \
                 {	name: 'Las Condes', province_id: '47'	}, \
                 {	name: 'Lo Barnechea', province_id: '47'	}, \
                 {	name: 'Lo Espejo', province_id: '47'	}, \
                 {	name: 'Lo Prado', province_id: '47'	}, \
                 {	name: 'Macul', province_id: '47'	}, \
                 {	name: 'Maipú', province_id: '47'	}, \
                 {	name: 'Ñuñoa', province_id: '47'	}, \
                 {	name: 'Pedro Aguirre Cerda', province_id: '47'	}, \
                 {	name: 'Peñalolén', province_id: '47'	}, \
                 {	name: 'Providencia', province_id: '47'	}, \
                 {	name: 'Pudahuel', province_id: '47'	}, \
                 {	name: 'Quilicura', province_id: '47'	}, \
                 {	name: 'Quinta Normal', province_id: '47'	}, \
                 {	name: 'Recoleta', province_id: '47'	}, \
                 {	name: 'Renca', province_id: '47'	}, \
                 {	name: 'San Joaquín', province_id: '47'	}, \
                 {	name: 'San Miguel', province_id: '47'	}, \
                 {	name: 'San Ramón', province_id: '47'	}, \
                 {	name: 'Vitacura', province_id: '47'	}, \
                 {	name: 'Puente Alto', province_id: '48'	}, \
                 {	name: 'Pirque', province_id: '48'	}, \
                 {	name: 'San José de Maipo', province_id: '48'	}, \
                 {	name: 'Colina', province_id: '49'	}, \
                 {	name: 'Lampa', province_id: '49'	}, \
                 {	name: 'Tiltil', province_id: '49'	}, \
                 {	name: 'San Bernardo', province_id: '50'	}, \
                 {	name: 'Buin', province_id: '50'	}, \
                 {	name: 'Calera de Tango', province_id: '50'	}, \
                 {	name: 'Paine', province_id: '50'	}, \
                 {	name: 'Melipilla', province_id: '51'	}, \
                 {	name: 'Alhué', province_id: '51'	}, \
                 {	name: 'Curacaví', province_id: '51'	}, \
                 {	name: 'María Pinto', province_id: '51'	}, \
                 {	name: 'San Pedro', province_id: '51'	}, \
                 {	name: 'Talagante', province_id: '52'	}, \
                 {	name: 'El Monte', province_id: '52'	}, \
                 {	name: 'Isla de Maipo', province_id: '52'	}, \
                 {	name: 'Padre Hurtado', province_id: '52'	}, \
                 {	name: 'Peñaflor', province_id: '52'	}])




######## Super Admin
admin = Admin.new
admin.email = 'admin1@minmineria.cl'
admin.password = '123123'
admin.password_confirmation = '123123'
admin.admin_type_id = '1'
admin.region_id = '1'
admin.province_id = '1'
admin.commune_id = '1'
admin.save!






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
user1.region_id  ='1'
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
user2.region_id  ='2'
user2.province_id =''
user2.commune_id =''
user2.save!


###### Antecedentes




Beneficiary.create ([{name: 'Sara Gonzalez', rut: '10838492-5', address: 'german riesco 430', age: '22', user_id: '1'},\
                     {name: 'Alvaro Valero', rut: '18647934-9', address: 'toro mazote 1010', age: '55', user_id: '1'},\
                     {name: 'Gary Medel', rut: '19837567-9', address: 'Renca 1010', age: '27', user_id: '2'},\
                     {name: 'Felipe Gutierrez', rut: '11111111-1', address: 'banco de sangre 1010', age: '26', user_id: '2'}])

#BenefitRequested.create([{benefit_type_id: '2', user_id: '1', asociative_user_id: '', estimated_investment: '10000000', comments: 'descripcion usuario 1'},\
#                         {benefit_type_id: '1', user_id: '2', asociative_user_id: '', estimated_investment: '10000000', comments: 'descripcion usuario 2'}])

FamilyGroup.create([{name: 'joselito bacca', age: '22', relationship_type_id: '3', activity: 'futbolista', scholarship_type_id: '3', user_id: '1'},\
                    {name: 'Alexis Sanchez', age: '26', relationship_type_id: '5', activity: 'Intelectual', scholarship_type_id: '2', user_id: '1'},\
                    {name: 'Carlos Carmona', age: '30', relationship_type_id: '2', activity: 'ama de casa', scholarship_type_id: '4', user_id: '1'},\
                    {name: 'Cecilia Bolocco', age: '100', relationship_type_id: '2', activity: 'Empresaria', scholarship_type_id: '3', user_id: '1'},\
                    {name: 'Alvaro Sanhueza', age: '55', relationship_type_id: '6', activity: 'Periodista', scholarship_type_id: '1', user_id: '2'},\
                    {name: 'Luis Jara', age: '44', relationship_type_id: '4', activity: 'Cantante', scholarship_type_id: '2', user_id: '2'},\
                    {name: 'Mauricio Salinas', age: '64', relationship_type_id: '5', activity: 'Artista', scholarship_type_id: '5', user_id: '2'},\
                    {name: 'Mauricio Parra', age: '66', relationship_type_id: '4', activity: 'Humorista', scholarship_type_id: '2', user_id: '2'}])


CharacterizationWork.create([{work_name: 'Mina la caucásica', localization: 'Atacama', sector: ' Antofagasta', mountain_range: '30', region_id: '3', province_id: '1', commune_id: '1', utm_north_coordinate: '2342', utm_east_coordinate: '234', buyer_power: '342342', distance: '234', mining_district: '4', number_workers: '44', owner_type_id: '2', mining_properties_constitution_type_id: '2', operation_type_id: '2', extracted_mineral_type_id: '2', mining_information_available_type_id: '2', user_id: '1', asociative_user_id:''},\
                             {work_name: 'Mina la jurasica', localization: 'Atacama', sector: ' Antofagasta', mountain_range: '30', region_id: '3', province_id: '1', commune_id: '1', utm_north_coordinate: '2342', utm_east_coordinate: '234', buyer_power: '342342', distance: '234', mining_district: '4', number_workers: '44', owner_type_id: '2', mining_properties_constitution_type_id: '2', operation_type_id: '2', extracted_mineral_type_id: '2', mining_information_available_type_id: '2', user_id: '2', asociative_user_id:''}])

PammaParticipation.create([{previous_beneficiary: '', number_times: '', benefit_type_id: '', project_state_type_id: '', support_type_id: '', user_id: '', asociative_user_id: ''},\
                           {previous_beneficiary: '', number_times: '', benefit_type_id: '', project_state_type_id: '', support_type_id: '', user_id: '', asociative_user_id: ''}])

PersonalBackground.create([{scholarship_type_id: '3', retirement_system_type_id: '2', activity_type_id: '3', training_type_id: '1', social_record_status_type_id: '2', score: '20', last_poll: '', user_id: '1'},\
                           {scholarship_type_id: '3', retirement_system_type_id: '2', activity_type_id: '3', training_type_id: '1', social_record_status_type_id: '2', score: '20', last_poll: '', user_id: '2'}])



##### Postulaciones

PostulationDate.create ([{name: 'Super Postulacion', date_begin: '2016-11-29',  date_end: '2017-11-29', user_type: '',postulation_standard_id:'', state: 'true', region_id: '6' },\
                         {name: 'Super Postulacion2', date_begin: '2016-11-29',  date_end: '2017-11-29', user_type: '',postulation_standard_id:'', state: 'true', region_id:'10'}])

Postulation.create([{postulation_date_id:'1', user_id: '1', personal_backgrounds_id: '', family_group_id: '', pamma_participation_id: '', beneficiary_id: '', characterization_work_id: '', benefit_requested_id: '', representative_id: '', postulation_state_id: '1'}, \
                    {postulation_date_id:'2',user_id: '2', personal_backgrounds_id: '', family_group_id: '', pamma_participation_id: '', beneficiary_id: '', characterization_work_id: '', benefit_requested_id: '', representative_id: '',  postulation_state_id: '1'}])

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
