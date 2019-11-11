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
Catalogs::MemberType.create(name_es: 'Líder de grupo', name_en: 'Group leader')
Catalogs::MemberType.create(name_es: 'Investigador adjunto', name_en: 'Deputy researcher')
Catalogs::MemberType.create(name_es: 'Insvestigador asociado', name_en: 'Associate researcher')
Catalogs::MemberType.create(name_es: 'Catedrático CONACYT', name_en: 'CONACYT Professor')
Catalogs::MemberType.create(name_es: 'Insvestigador postdoctoral', name_en: 'Postdoctoral researcher')
Catalogs::MemberType.create(name_es: 'Técnico académico', name_en: 'Academic technician')
Catalogs::MemberType.create(name_es: 'Estudiante', name_en: 'Student')

# LOCATIONS
Catalogs::Location.create(abbr: 'Lab. A-01',
                          name_es: 'Laboratorio A-01, Instituto de Neurobiología de la UNAM',
                          name_en: 'Laboratory A-01, Instituto de Neurobiología de la UNAM')
Catalogs::Location.create(abbr: 'Lab. A-02',
                          name_es: 'Laboratorio A-02, Instituto de Neurobiología de la UNAM',
                          name_en: 'Laboratory A-02, Instituto de Neurobiología de la UNAM')
Catalogs::Location.create(abbr: 'Lab. A-03',
                          name_es: 'Laboratorio A-03, Instituto de Neurobiología de la UNAM',
                          name_en: 'Laboratory A-03, Instituto de Neurobiología de la UNAM')
Catalogs::Location.create(abbr: 'Lab. A-11',
                          name_es: 'Laboratorio A-11, Instituto de Neurobiología de la UNAM',
                          name_en: 'Laboratory A-11, Instituto de Neurobiología de la UNAM')
Catalogs::Location.create(abbr: 'Lab. A-13',
                          name_es: 'Laboratorio A-13, Instituto de Neurobiología de la UNAM',
                          name_en: 'Laboratory A-13, Instituto de Neurobiología de la UNAM')
Catalogs::Location.create(abbr: 'Lab. A-14',
                          name_es: 'Laboratorio A-14, Instituto de Neurobiología de la UNAM',
                          name_en: 'Laboratory A-14, Instituto de Neurobiología de la UNAM')
Catalogs::Location.create(abbr: 'Lab. A-15',
                          name_es: 'Laboratorio A-15, Instituto de Neurobiología de la UNAM',
                          name_en: 'Laboratory A-15, Instituto de Neurobiología de la UNAM')

# STATUS
Catalogs::Status.create(name: 'Active')
Catalogs::Status.create(name: 'Inactive')

# PUBLICATION TYPES
Catalogs::PubType.create(name_es: 'Artículo', name_en: 'Article')
Catalogs::PubType.create(name_es: 'Libro', name_en: 'Book')
