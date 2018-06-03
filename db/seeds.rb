# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create([ {email: 'subscriber@test.com', password: '12345678', role: 'subscriber'},
              {email: 'journalist@test.com', password: '12345678', role: 'journalist'},
              {email: 'editor@test.com', password: '12345678', role: 'editor'}
  ]);

I18n.locale = :en
Category.create([ {name: "Sports"},
                  {name: "Entertainment"},
                  {name: "Local News"},
                  {name: "Economy"},
                  {name: "International News"},
                  {name: "Technology"}
  ]);

Article.create(headline: "Lorem ipsum dolor sit amet",
               content: "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit...
Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse nunc diam, consectetur sed neque id, ullamcorper tempor nisl.

Mauris tincidunt faucibus dui non ullamcorper. Proin ornare vitae lorem quis ullamcorper. Integer vitae gravida magna. Aenean ut tellus laoreet, condimentum lacus gravida, consequat risus.

Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nullam suscipit nulla eget nisi volutpat ultricies. Quisque libero nibh, vehicula ac purus eget, commodo suscipit odio.

Sed aliquam neque eget lorem lacinia, vitae condimentum neque pellentesque.",
              category_id: 6,
              user_id: 2,
              published:true)

Article.create(headline: "Donec eu felis feugiat",
               content: "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit...
Donec eu felis feugiat, pellentesque arcu id, faucibus orci. In finibus lacus vel mi consectetur consequat. Maecenas libero eros, eleifend et blandit vel, rutrum elementum est.

Phasellus non turpis blandit sem tincidunt euismod eget in quam. Donec ut aliquet erat. Vivamus finibus, nisi congue vestibulum dapibus, magna eros sodales erat, blandit vulputate enim elit feugiat elit.

Curabitur vitae arcu consequat, faucibus mauris tempus, cursus nunc. Vestibulum in placerat turpis. Etiam feugiat ligula elit, vel elementum libero tempus eget.

Vivamus pulvinar est nulla, eu cursus justo mollis sit amet. Duis sit amet metus consectetur, tempor metus eleifend, viverra nunc. In fermentum nulla vel dolor dictum, eget gravida ipsum consectetur.

Sed congue justo a elementum scelerisque. Sed et consequat justo. Quisque augue odio, aliquet et dignissim vitae, aliquet sed nibh. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae",
              category_id: 3,
              user_id: 2)

Article.create(headline: "Donec eros mi",
                content: "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit...
Donec eros mi, egestas sit amet quam nec, tristique semper sapien. Mauris congue, nisl at fringilla auctor, lacus urna dignissim enim, sed venenatis arcu purus vel augue.

In ac lectus rhoncus, dignissim risus at, convallis lectus. Suspendisse euismod nisi vitae eros rhoncus dignissim. In hac habitasse platea dictumst.

Sed eu dolor urna. Donec eget tellus mollis, feugiat dolor sed, mattis leo. Quisque in erat et neque luctus imperdiet vel non velit. Suspendisse potenti.",
               category_id: 1,
               user_id: 2)

I18n.locale = :sv
Category.create([ {name: "Sport"},
                  {name: "Underhållning"},
                  {name: "Lokala Nyheter"},
                  {name: "Ekonomi"},
                  {name: "Internationella Nyheter"},
                  {name: "Teknik"}]);

Article.create(headline: "Svenska - Phasellus eu eros neque",
               content: "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit...
Phasellus eu eros neque. Duis tristique erat sed velit tristique rutrum. Mauris sit amet erat mi. Nam tristique ut ligula sit amet cursus. Vivamus accumsan ex sapien, quis congue nisi vestibulum a.

Duis gravida erat est, nec blandit lectus sagittis et. Etiam sit amet iaculis odio.

Etiam ultrices eleifend tempor. Nam finibus massa dolor, a lobortis dui pharetra quis. Suspendisse potenti. In eget leo lacinia, bibendum neque vitae, aliquet arcu.

Fusce a pretium lacus. Ut ut mattis turpis. Phasellus suscipit eget libero finibus rhoncus. Cras nec maximus ipsum. Vivamus felis augue, vestibulum ac magna non, imperdiet pulvinar purus.

Pellentesque posuere ultrices tortor, quis tincidunt quam fermentum ac. Duis quis sem nulla. Ut vehicula augue eget leo egestas cursus. Etiam in mauris eu justo lacinia cursus.",
              category_id: 4,
              user_id: 3)

Article.create(headline: "Svenska - Lorem ipsum dolor sit amet",
               content: "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit...
Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc viverra felis ac eros congue, a faucibus libero finibus. Sed iaculis tincidunt diam.

Aenean facilisis cursus ante, ac mollis ex fermentum sit amet. In dapibus enim iaculis rhoncus volutpat. Sed mauris massa, convallis et metus vel, rutrum condimentum leo. Duis non bibendum nisi.

Ut vehicula eros eu vestibulum maximus. In finibus ipsum nec magna vehicula porta. Donec eget turpis augue. Lorem ipsum dolor sit amet, consectetur adipiscing elit.

Donec velit tellus, efficitur sed sodales non, ullamcorper eu mauris.",
              category_id: 5,
              user_id: 3,
              published:true)

Article.create(headline: "Svenska - Proin non elit vestibulum",
               content: "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit...
Proin non elit vestibulum, sollicitudin justo a, interdum arcu. In sed ex quam. Aenean mattis scelerisque sem, ac tincidunt tortor vestibulum a.

Quisque suscipit ultrices accumsan. Fusce id rhoncus elit. Vivamus a massa ex. Ut in sem eu elit tempor sagittis. Integer vitae lectus blandit, ornare erat a, euismod ante.

Praesent molestie sit amet turpis sit amet convallis. Phasellus imperdiet magna sapien, auctor rhoncus est rhoncus at.

Nullam vel neque aliquam ante sollicitudin cursus in luctus lorem. Mauris convallis metus eget justo ultricies, ac lobortis ligula vehicula.

Praesent posuere ullamcorper mauris, et tristique nisi. Vestibulum tempus tortor ut ultrices scelerisque. Donec eleifend auctor tempor.",
               category_id: 4,
               user_id: 3)
