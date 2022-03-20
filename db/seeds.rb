Supplier.create!(name: "Robotics", email: "cooljunk@test.com", phone_number: "1234567")
Supplier.create!(name: "AIFetish", email: "aifetish@test.com", phone_number: "1234568")
Supplier.create!(name: "artifice", email: "artifice@test.com", phone_number: "12345689")

Product.create(name: "Robot Five Fingers Metal Mechanical Paw", price: 131, description: "Flip your pancakes with a flick of the wrist!", supplier_id: 1)

Product.create(name: "Handy Gripper", price: 50, description: "Squeeze squeeze squeeze!", supplier_id: 3)

Product.create(name: "Robot Eyes", price: 366, description: "Scan the future!", supplier_id: 2)

Product.create(name: "Robot Dog", price: 366, description: "Man's new best friend!", supplier_id: 1)

Product.create(name: "Robot Cat", price: 366, description: "Get ignored by a robot cat instead of your real cat!", supplier_id: 1)


Image.create!(product_id: 1, url: "https://imgaz3.staticbg.com/thumb/large/oaupload/banggood/images/80/DA/2d28c3d1-852a-4b0d-a45b-19de4734e0b6.jpeg.webp")

Image.create!(product_id: 2, url: "https://cdn.shopify.com/s/files/1/0253/6200/6096/products/OnRobot_RG2_500x.jpg?v=1581742269")

Image.create!(product_id: 3, url: "https://www.robotshop.com/media/catalog/product/cache/image/1350x/9df78eab33525d08d6e5fb8d27136e95/o/h/ohbot-robot-assembled-full-pack_5794e.jpg.jpg")

Image.create!(product_id: 4, url: "https://www.robotshop.com/media/catalog/product/cache/image/1350x/9df78eab33525d08d6e5fb8d27136e95/x/g/xgo-mini-quadruped-robot-dog.jpg")

Image.create!(product_id: 5, url: "https://www.robotshop.com/media/catalog/product/cache/image/1350x/9df78eab33525d08d6e5fb8d27136e95/p/e/petoi-nybble-open-source-robotic-cat_1.jpg")