require 'test_helper'

class ProductTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  #
         fixtures :products

  test "product attributes must not be empty " do

    product = products(:two)
  #assert product.invalid?

    #puts "oooo"
# assert !product.errors[:price].any? ,  "ppppppppp"

=begin

=end
=begin

=end
=begin
  assert product.errors[:description].any?
=end
=begin

=end
=begin

=end
=begin
  assert product.errors[:price].any?



  assert product.errors[:image_url].any?
=end
  end
=begin
  test "product price must be positive" do
    product = Product.new(title:
                              "My Book Title",
                          description: "yyy",
                          image_url:
                              "zzz.jpg")
    product.price = -1
    assert product.invalid? , "product is invalid"
    assert_equal ["must be greater than or equal to 0.01"],
                 product.errors[:price]

    product.price = 0
    assert product.invalid?
    assert_equal ["must be greater than or equal to 0.01"],
                 product.errors[:price]
    product.price = 1
   assert product.valid?

  end
=end

=begin
  test "product title must be unique" do
    product = Product.new(title:
                              "My Book Title",
                          description: "yyy",
                          image_url:
                              "zzz.jpg")
    product2 = Product.new(title:
                              "My Book Title",
                          description: "yyy",
                          image_url:
                              "zzz.jpg")
    assert product.invalid?


   assert_equal ["must be unique"],
                 product.errors[:title]



    end

=end
=begin
     def new_product(image_url)
     Product.new(title: "My Book Title",
                 description: "yyy",
                  price: 3  ,
                 image_url: image_url)
     end

  test "image check" do
  good=%w{fred.gif fred.jpg fred.png FRED.JPG FRED.Jpg
           http://a.b.c/x/y/z/fred.gif}
      bad = %w{fred.doc fred.gif/more fred.gif.more}

  good.each do |url|
                assert new_product(url).valid? "#{url} is valid"
  end

   bad.each do |url|
                 assert new_product(url).valid? , "#{url} is not valid"
   end

  end
=end
  end