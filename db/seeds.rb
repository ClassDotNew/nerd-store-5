Category.create!([
  {name: "Weapon"},
  {name: "Random"},
  {name: "Kids"}
])

Supplier.create!([
  {name: "Amazon", email: "am@zon.com", phone_number: "8675309"},
  {name: "Costco", email: "coos@co.co", phone_number: "234567890"}
])

User.create!([
  {username: "billy", password_digest: "$2a$10$yivcabGce/aikpCHtWGgOe6cly7epK8LiE51je02oF2/KXJE00PCS", email: "bob", admin: false},
  {username: "bobby", password_digest: "$2a$10$chtrml90x/CqRViXNiV5qOFcXgjpMcHVe2qSyqolzCNYtj6De/ykS", email: "joe", admin: false},
  {username: "asdf", password_digest: "$2a$10$s.C32Sl/TY0m36J8zx.oIeYUdSnRTYKctnROYjn.OBEwlK4KPMhmq", email: "asdf", admin: false},
  {username: "classDotNew", password_digest: "$2a$10$.gKp212k36gOQ0qiggSive7MnxgggVENVU4RNJRYA4vGG1.nPjuBi", email: "best@actualize.co", admin: false},
  {username: "joe", password_digest: "$2a$10$T7.MT.Olv0JXS3vYRTx.iOn6vW2ST4U02oubX3ydbDXHx7ScFwK.K", email: "joe", admin: false},
  {username: "password", password_digest: "$2a$10$uMybS5JpoYBbnmhwI0r/m.wc9GTZA61JQyxsohqXrF2tfFJ0O287i", email: "password", admin: true}
])


Product.create!([
  {name: "Brian Rice", price: "4.0", description: "Food is healthy! I love going to McDonald's!", image: "image", supplier_id: 1},
  {name: "Brian Rice", price: "4.0", description: "desc", image: "image", supplier_id: 1},
  {name: "Hitchhiker's Guide to the Galexy", price: "42.0", description: "In many of the more relaxed civilizations on the Outer Eastern Rim of the Galaxy, the Hitch-Hiker's Guide has already supplanted the great Encyclopaedia Galactica as the standard repository of all knowledge and wisdom, for though it has many omissions and contains much that is apocryphal, or at least wildly inaccurate, it scores over the older, more pedestrian work in two important respects. First, it is slightly cheaper; and secondly it has the words DON'T PANIC inscribed in large friendly letters on its cover.", image: "http://www.notcot.com/images/guide.gif", supplier_id: 6},
  {name: "DnD Dice set", price: "57.0", description: "Take down mighty dragons with this timeless set of 20 sided wonders", image: "https://s-media-cache-ak0.pinimg.com/736x/9c/15/7b/9c157bea5331463f9c539cbce739a4b8.jpg", supplier_id: 6},
  {name: "Sonic Screwdriver", price: "9.0", description: "Yet another thing", image: "http://i120.photobucket.com/albums/o176/d_jedi1/Who/qmx-10thdoctorsonic-1.jpg", supplier_id: 6},
  {name: "Space Cowboy Laser Gun", price: "170.0", description: "This weapon has no other description than, Shiney!", image: "http://cdn.shopify.com/s/files/1/0289/1534/products/MalPistol_MP-1_1756x988_e53f9448-81ec-41de-9369-4cbad64f18f5_1024x1024.jpg?v=1401915776", supplier_id: 6},
  {name: "Brian Rice", price: "4.0", description: "Food is healthy! I love going to McDonald's!", image: "image", supplier_id: 6},
  {name: "name", price: "4.0", description: "desc", image: "image", supplier_id: 2},
  {name: "name", price: "4.0", description: "desc", image: "image", supplier_id: 1},
  {name: nil, price: "4.0", description: nil, image: nil, supplier_id: 6},
  {name: "Lightsaber", price: "270.0", description: "Part laser, part samuri sword, all awesome. The lightsaber is an elogant weapon for a more civilized age, not nearly as clumsy as a blaster", image: "http://25.media.tumblr.com/d2456964024018fd930338c099371104/tumblr_n2m73lTx2Q1svn82uo1_400.gif", supplier_id: 2},
  {name: "WNYX Mu", price: "2.0", description: "Get your morning news once you wake up with a cup of joe from... well Joe. He made it with his homemade duct tape", image: "http://s32.postimg.org/6mceui22t/wnyx_mug.png", supplier_id: 6},
  {name: "name", price: "4.0", description: "desc", image: "image", supplier_id: 2},
  {name: "namename", price: "5.0", description: "desc", image: "image", supplier_id: 2},
  {name: nil, price: nil, description: nil, image: nil, supplier_id: nil},
  {name: "jim", price: nil, description: nil, image: nil, supplier_id: nil},
  {name: "neame", price: "4.0", description: "", image: "", supplier_id: 1},
  {name: "updated", price: "12.0", description: "klas;dfjklsad", image: "sadfjaslk.", supplier_id: 1}
])
CartedProduct.create!([
  {status: "carted", user_id: 3, product_id: 2, quantity: 3, order_id: 14},
  {status: "purchased", user_id: 6, product_id: 4, quantity: 3, order_id: nil},
  {status: "purchased", user_id: 6, product_id: 3, quantity: 2, order_id: 19},
  {status: "purchased", user_id: 6, product_id: 3, quantity: 4, order_id: 19},
  {status: "purchased", user_id: 6, product_id: 2, quantity: 3, order_id: 19},
  {status: "purchased", user_id: 6, product_id: 5, quantity: 2, order_id: 19},
  {status: "purchased", user_id: 6, product_id: 3, quantity: 3, order_id: 20},
  {status: "removed", user_id: 6, product_id: 5, quantity: 123, order_id: nil},
  {status: "removed", user_id: 6, product_id: 5, quantity: 3, order_id: nil},
  {status: "purchased", user_id: 6, product_id: 1, quantity: 2, order_id: 23},
  {status: "purchased", user_id: 6, product_id: 5, quantity: 1, order_id: 24},
  {status: "purchased", user_id: 6, product_id: 1, quantity: 3, order_id: 25}
])
CategorizedProduct.create!([
  {product_id: 1, category_id: 1},
  {product_id: 2, category_id: 2},
  {product_id: 3, category_id: 3},
  {product_id: 3, category_id: 1},
  {product_id: 4, category_id: 1},
  {product_id: 5, category_id: 1},
  {product_id: 6, category_id: 1},
  {product_id: 7, category_id: 1},
  {product_id: 8, category_id: 2},
  {product_id: 9, category_id: 2},
  {product_id: 10, category_id: 2},
  {product_id: 11, category_id: 2},
  {product_id: 12, category_id: 3}
])

Order.create!([
  {user_id: 1, subtotal: nil, tax: nil, total: nil},
  {user_id: 5, subtotal: nil, tax: nil, total: nil},
  {user_id: 5, subtotal: nil, tax: nil, total: nil},
  {user_id: 5, subtotal: nil, tax: nil, total: nil},
  {user_id: 5, subtotal: nil, tax: nil, total: nil},
  {user_id: 5, subtotal: nil, tax: nil, total: nil},
  {user_id: 5, subtotal: nil, tax: nil, total: nil},
  {user_id: 5, subtotal: nil, tax: nil, total: nil},
  {user_id: 5, subtotal: nil, tax: nil, total: nil},
  {user_id: 5, subtotal: "84.0", tax: nil, total: nil},
  {user_id: 5, subtotal: "20.0", tax: "2.0", total: "22.0"},
  {user_id: 5, subtotal: "200.0", tax: "20.0", total: "220.0"},
  {user_id: 5, subtotal: "2.0", tax: "0.2", total: "2.2"},
  {user_id: 3, subtotal: nil, tax: nil, total: nil},
  {user_id: 6, subtotal: "12.0", tax: nil, total: nil},
  {user_id: 6, subtotal: "12.0", tax: "1.08", total: "13.08"},
  {user_id: 6, subtotal: "822.0", tax: "73.98", total: "895.98"},
  {user_id: 6, subtotal: "906.0", tax: "81.54", total: "987.54"},
  {user_id: 6, subtotal: "906.0", tax: "81.54", total: "987.54"},
  {user_id: 6, subtotal: "6.0", tax: "0.54", total: "6.54"},
  {user_id: 6, subtotal: nil, tax: nil, total: nil},
  {user_id: 6, subtotal: nil, tax: nil, total: nil},
  {user_id: 6, subtotal: nil, tax: nil, total: nil},
  {user_id: 6, subtotal: "42.0", tax: nil, total: nil},
  {user_id: 6, subtotal: "27.0", tax: "2.43", total: "29.43"}
])

