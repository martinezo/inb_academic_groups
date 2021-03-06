# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#
#

# MEMBER TYPES
Catalogs::MemberType.create(name_es: 'Líder de grupo', name_en: 'Principal Investigator', rank: 1, gm_attrs: '')
Catalogs::MemberType.create(name_es: 'Investigador adjunto', name_en: 'Adjunct Investigator', rank: 2, gm_attrs: '')
Catalogs::MemberType.create(name_es: 'Insvestigador asociado', name_en: 'Assistant Investigator', rank: 3, gm_attrs: '')
Catalogs::MemberType.create(name_es: 'Catedrático CONACYT', name_en: 'CONACYT Investigator', rank: 4, gm_attrs: '')
Catalogs::MemberType.create(name_es: 'Insvestigador postdoctoral', name_en: 'Posdoctoral Fellow', rank: 5, gm_attrs: '')
Catalogs::MemberType.create(name_es: 'Técnico académico', name_en: 'Technician', rank: 6, gm_attrs: '')
Catalogs::MemberType.create(name_es: 'Estudiante', name_en: 'Student', rank: 7, gm_attrs: '')

# LOCATIONS
Catalogs::Location.create(abbr: 'Lab. A-01', name_es: ' Laboratorio A-01', name_en: 'Laboratory A-01')
Catalogs::Location.create(abbr: 'Lab. A-02', name_es: ' Laboratorio A-02', name_en: 'Laboratory A-02')
Catalogs::Location.create(abbr: 'Lab. A-03', name_es: ' Laboratorio A-03', name_en: 'Laboratory A-03')
Catalogs::Location.create(abbr: 'Lab. A-11', name_es: ' Laboratorio A-11', name_en: 'Laboratory A-11')
Catalogs::Location.create(abbr: 'Lab. A-13', name_es: ' Laboratorio A-13', name_en: 'Laboratory A-13')
Catalogs::Location.create(abbr: 'Lab. A-14', name_es: ' Laboratorio A-14', name_en: 'Laboratory A-14')
Catalogs::Location.create(abbr: 'Lab. A-15', name_es: ' Laboratorio A-15', name_en: 'Laboratory A-15')
Catalogs::Location.create(abbr: 'Lab. B-02', name_es: ' Laboratorio B-02', name_en: 'Laboratory B-02')
Catalogs::Location.create(abbr: 'Lab. B-03', name_es: ' Laboratorio B-03', name_en: 'Laboratory B-03')
Catalogs::Location.create(abbr: 'Lab. B-04', name_es: ' Laboratorio B-04', name_en: 'Laboratory B-04')
Catalogs::Location.create(abbr: 'Lab. B-05', name_es: ' Laboratorio B-05', name_en: 'Laboratory B-05')
Catalogs::Location.create(abbr: 'Lab. B-06', name_es: ' Laboratorio B-06', name_en: 'Laboratory B-06')
Catalogs::Location.create(abbr: 'Lab. B-11', name_es: ' Laboratorio B-11', name_en: 'Laboratory B-11')
Catalogs::Location.create(abbr: 'Lab. B-12', name_es: ' Laboratorio B-12', name_en: 'Laboratory B-12')
Catalogs::Location.create(abbr: 'Lab. B-14', name_es: ' Laboratorio B-14', name_en: 'Laboratory B-14')
Catalogs::Location.create(abbr: 'Lab. B-15', name_es: ' Laboratorio B-15', name_en: 'Laboratory B-15')
Catalogs::Location.create(abbr: 'Lab. B-16', name_es: ' Laboratorio B-16', name_en: 'Laboratory B-16')
Catalogs::Location.create(abbr: 'Lab. C-01', name_es: ' Laboratorio C-01', name_en: 'Laboratory C-01')
Catalogs::Location.create(abbr: 'Lab. C-02', name_es: ' Laboratorio C-02', name_en: 'Laboratory C-02')
Catalogs::Location.create(abbr: 'Lab. C-12', name_es: ' Laboratorio C-12', name_en: 'Laboratory C-12')
Catalogs::Location.create(abbr: 'Lab. C-13', name_es: ' Laboratorio C-13', name_en: 'Laboratory C-13')
Catalogs::Location.create(abbr: 'Lab. D-01', name_es: ' Laboratorio D-01', name_en: 'Laboratory D-01')
Catalogs::Location.create(abbr: 'Lab. D-02', name_es: ' Laboratorio D-02', name_en: 'Laboratory D-02')
Catalogs::Location.create(abbr: 'Lab. D-03', name_es: ' Laboratorio D-03', name_en: 'Laboratory D-03')
Catalogs::Location.create(abbr: 'Lab. D-04', name_es: ' Laboratorio D-04', name_en: 'Laboratory D-04')
Catalogs::Location.create(abbr: 'Lab. D-05', name_es: ' Laboratorio D-05', name_en: 'Laboratory D-05')
Catalogs::Location.create(abbr: 'Lab. D-11', name_es: ' Laboratorio D-11', name_en: 'Laboratory D-11')
Catalogs::Location.create(abbr: 'Lab. D-12', name_es: ' Laboratorio D-12', name_en: 'Laboratory D-12')
Catalogs::Location.create(abbr: 'Lab. D-13', name_es: ' Laboratorio D-13', name_en: 'Laboratory D-13')
Catalogs::Location.create(abbr: 'Lab. D-15', name_es: ' Laboratorio D-15', name_en: 'Laboratory D-15')
Catalogs::Location.create(abbr: 'Lab. LANIREM', name_es: 'Laboratorio Nacional De Imagenología Por Resonancia Magnética', name_en: 'National MRI Laboratory')
Catalogs::Location.create(abbr: 'UND', name_es: 'Unidad de Neurodesarrollo', name_en: 'Neurodevelopment Unit')
Catalogs::Location.create(abbr: 'UB', name_es: 'Unidad de Biomecánica', name_en: 'Biomechanics Unit')
Catalogs::Location.create(abbr: 'UAC', name_es: 'Unidad de Análisis Conductual', name_en: 'Behavioral Analysis Unit')
Catalogs::Location.create(abbr: 'UC', name_es: 'Unidad de Cómputo', name_en: 'Computer Unit')
Catalogs::Location.create(abbr: 'UM', name_es: 'Unidad de Microscopía', name_en: 'Microscopy Unit')
Catalogs::Location.create(abbr: 'UP', name_es: 'Unidad de Proteogenómica', name_en: 'Proteogenomic Unit')
Catalogs::Location.create(abbr: 'UVC', name_es: 'Unidad de Videoconferecia', name_en: 'Videoconferencing Unit')
Catalogs::Location.create(abbr: 'URM', name_es: 'Unidad de Resonancia Magnética', name_en: 'Magnetic Resonance Unit')
Catalogs::Location.create(abbr: 'LAVIS', name_es: 'Laboratorio Nacional de Visualización Científica Avanzada', name_en: 'National Laboratory of Advanced Scientific Visualization')
Catalogs::Location.create(abbr: 'POSG', name_es: 'Posgrado', name_en: 'Postgraduate')
Catalogs::Location.create(abbr: 'BIO', name_es: 'Bioterio', name_en: 'Bioterio')

# STATUS
Catalogs::Status.create(name: 'Active')
Catalogs::Status.create(name: 'Inactive')

# PUBLICATION TYPES
Catalogs::PubType.create(name_es: 'Artículo', name_en: 'Article')
Catalogs::PubType.create(name_es: 'Capítulo en libro', name_en: 'Chapter in book')
Catalogs::PubType.create(name_es: 'Libro', name_en: 'Book')

# DEPARTMENTS
Catalogs::Department.create(name_es: 'Neurobiología Celular y Molecular', name_en: 'Cellular and Molecular Neurobiology')
Catalogs::Department.create(name_es: 'Neurobiología Conductual y Cognitiva', name_en: 'Behavioral and Cognitive Neurobiology')
Catalogs::Department.create(name_es: 'Neurobiología del Desarrollo y Neurofisiología', name_en: 'Developmental Neurobiology and Neurophysiology')

# GROUPS
Group.create(name_es: 'Metabolismo Energético' , name_en: 'Energy Metabolism', catalogs_department_id: 1, catalogs_location_id: 23)
Group.create(name_es: 'Bioquímica de Hormonas' , name_en: 'Biochemistry of Hormones', catalogs_department_id: 1, catalogs_location_id: 22)
Group.create(name_es: 'Neurofisiología Celular', name_en: 'Cell Neurophysiology', catalogs_department_id: 1, catalogs_location_id: 29)
Group.create(name_es: 'Endocrinología Molecular', name_en: 'Molecular Endocrinology', catalogs_department_id: 1, catalogs_location_id: 6)
Group.create(name_es: 'Fisiología Celular', name_en: 'Cell Physiology', catalogs_department_id: 1, catalogs_location_id: 13)
Group.create(name_es: 'Comunicación Intercelular Y Neurotransmisión', name_en: 'Intercellular Communication and Neurotransmission', catalogs_department_id: 1, catalogs_location_id: 14)
Group.create(name_es: 'Farmacología Marina', name_en: 'Marine Pharmacology', catalogs_department_id: 1, catalogs_location_id: 8)
Group.create(name_es: 'Neuroendocrinología de la Reproducción', name_en: 'Neuroendocrinology of Reproduction', catalogs_department_id: 1, catalogs_location_id: 7)
Group.create(name_es: 'Neurobiología Molecular y Celular', name_en: 'Molecular and Cellular Neurobiology', catalogs_department_id: 1, catalogs_location_id: 30)
Group.create(name_es: 'Neuroanatomía Funcional y Neuroendocrinología', name_en: 'Functional Neuroanatomy and Neuroendocrinology', catalogs_department_id: 1, catalogs_location_id: 26)
Group.create(name_es: 'Receptores Nucleares y Neurobiología', name_en: 'Nuclear Receptors and Neurobiology', catalogs_department_id: 1, catalogs_location_id: 24)
Group.create(name_es: 'Mapeo de Función Cerebral', name_en: 'Brain Function Mapping', catalogs_department_id: 2, catalogs_location_id: 20)
Group.create(name_es: 'Conectividad Cerebral', name_en: 'Brain Connectivity', catalogs_department_id: 2, catalogs_location_id: 21)
Group.create(name_es: 'Psicofisiología', name_en: 'Psychophysiology', catalogs_department_id: 2, catalogs_location_id: 32)
Group.create(name_es: 'Plasticidad Cerebral', name_en: 'Brain Plasticity', catalogs_department_id: 2, catalogs_location_id: 28)
Group.create(name_es: 'Psicofisiología', name_en: 'Psychophysiology', catalogs_department_id: 2, catalogs_location_id: 32)
Group.create(name_es: 'Neurofisiología de Sistemas en Primates', name_en: 'Systems Neurophysiology in Primates', catalogs_department_id: 2, catalogs_location_id: 16)
Group.create(name_es: 'Neuroquímica de la Memoria', name_en: 'Neurochemistry of Memory', catalogs_department_id: 2, catalogs_location_id: 15)
Group.create(name_es: 'Conducta Sexual', name_en: 'Sexual Behavior', catalogs_department_id: 2, catalogs_location_id: 27)
Group.create(name_es: 'Neurobiología de la Memoria', name_en: 'Neurobiology of Memory', catalogs_department_id: 2, catalogs_location_id: 10)
Group.create(name_es: 'Neurobiología del Aprendizaje', name_en: 'Neurobiology of Learning', catalogs_department_id: 2, catalogs_location_id: 10)
Group.create(name_es: 'Neurobiología de la Conducta Motivada', name_en: 'Neurobiology of Motivated Behavior', catalogs_department_id: 2, catalogs_location_id: 4)
Group.create(name_es: 'Reprogramación de Circuitos Funcionales', name_en: 'Reprogramming of Functional Circuits', catalogs_department_id: 3, catalogs_location_id: 12)
Group.create(name_es: 'Dolor y Epilepsia', name_en: 'Pain and Epilepsy', catalogs_department_id: 3, catalogs_location_id: 17)
Group.create(name_es: 'Sistemas Sensoriales y Planeación Motora', name_en: 'Sensory Systems and Motor Planning', catalogs_department_id: 3, catalogs_location_id: 11)
Group.create(name_es: 'Neuromorfometría y Desarrollo', name_en: 'Neuromorphometry and Development', catalogs_department_id: 3, catalogs_location_id: 19)
Group.create(name_es: 'Neuromorfología', name_en: 'Neuromorphology', catalogs_department_id: 3, catalogs_location_id: 1)
Group.create(name_es: 'Circuitos Neuronales', name_en: 'Neuronal Circuits', catalogs_department_id: 3, catalogs_location_id: 18)
Group.create(name_es: 'Genética de Transducción de Señales', name_en: 'Signal Transduction Genetics', catalogs_department_id: 3, catalogs_location_id: 25)
Group.create(name_es: 'Integración Sensoriomotora', name_en: 'Sensorimotor Integration', catalogs_department_id: 3, catalogs_location_id: 5)
Group.create(name_es: 'Neurofisiología de los Hábitos', name_en: 'Neurophysiology of Habits', catalogs_department_id: 3, catalogs_location_id: 2)
Group.create(name_es: 'Desarrollo Neural', name_en: 'Neural Development', catalogs_department_id: 3, catalogs_location_id: 3)

# LEVELS
Catalogs::Level.create(name_es: 'Titular A', name_en: 'Titular A')
Catalogs::Level.create(name_es: 'Titular B', name_en: 'Titular B')
Catalogs::Level.create(name_es: 'Titular C', name_en: 'Titular C')
