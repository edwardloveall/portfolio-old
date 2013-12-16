Category.create(title: 'Design', position: 1) if Category.where(title: 'Design').empty?
Category.create(title: 'Code',   position: 2) if Category.where(title: 'Code').empty?
Category.create(title: 'Music',  position: 3) if Category.where(title: 'Music').empty?
Category.create(title: 'Sound',  position: 4) if Category.where(title: 'Sound').empty?
Category.create(title: 'Other',  position: 5) if Category.where(title: 'Other').empty?
