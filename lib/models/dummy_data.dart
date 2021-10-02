import 'package:flutter/material.dart';
import 'package:mealsapp/models/ingredient.dart';

import './category.dart';
import './meal.dart';

const dummyData = [
  Category(
    id: 'c1',
    title: 'Italian',
    color: Colors.purple,
    image:
        'https://uploads-ssl.webflow.com/5ce87e408cdd0a4373281d7b/6017fa780eb0741848b6af9a_cover.png',
  ),
  Category(
    id: 'c2',
    title: 'Quick & Easy',
    color: Colors.red,
    image:
        'https://dl.airtable.com/.attachmentThumbnails/5cd9c9749f9b4f9f58eecc127973966a/4f789b20',
  ),
  Category(
      id: 'c3',
      title: 'Hamburgers',
      color: Colors.orange,
      image:
          'https://www.hamburdehesa.com/wp-content/uploads/2017/10/background-hosteleriaburger.png'),
  Category(
      id: 'c4',
      title: 'German',
      color: Colors.amber,
      image:
          'https://likemeat.com/wp-content/uploads/2019/05/like-schnitzel-plate.png'),
  Category(
      id: 'c5',
      title: 'Light & Lovely',
      color: Colors.greenAccent,
      image:
          'https://realfood.tesco.com/media/images/starter-8e10fd4c-1385-410b-bf6a-e2aa391b40ae-0-250x250.png'),
  Category(
      id: 'c6',
      title: 'Sweet',
      color: Colors.pink,
      image:
          'https://www.wagamama.be/-/media/wagamamaint/menu/food-dishes/desserts/desserts-white-chocolate-ginger-cheesecake.png'),
  Category(
      id: 'c7',
      title: 'Breakfast',
      color: Colors.lightBlue,
      image:
          'https://www.jonesdairyfarm.com/App_Themes/JDF/Images/brinner/How%20Tos/How%20to%20Cook%20Eggs/soft_boiled.png'),
  Category(
      id: 'c8',
      title: 'Asian',
      color: Colors.lightGreen,
      image:
          'https://simplyasia.co.za/wp-content/uploads/2021/06/550-dish-2.png'),
  Category(
      id: 'c9',
      title: 'French',
      color: Colors.blue,
      image:
          'https://i.pinimg.com/originals/dd/04/28/dd04283f5413d2da68de4ac01d5558bd.png'),
  Category(
      id: 'c10',
      title: 'Summer',
      color: Colors.teal,
      image:
          'https://www.dillons.com/content/v2/binary/image/featured/summer-shop/summer_arugulapapayasalad--summer_arugulapapayasalad_330x330.png'),
];

const dummyMeal = [
  Meal(
    id: 'm1',
    categories: [
      'c1',
      'c2',
    ],
    title: 'Spaghetti with Tomato Sauce',
    affordability: Affordability.Affordable,
    complexity: Complexity.Simple,
    imageUrl:
        'https://www.giallozafferano.com/images/228-22832/spaghetti-with-tomato-sauce_1200x800.jpg',
    duration: 20,
    ingredients: [
      Ingredients(
        ingredientName: 'Tomatoes',
        ingredientImage:
            'https://www.bordbia.ie/globalassets/bordbia2020/food-and-living/best-in-season-2020/salads/tomato.png',
        ingredientAmount: '4 pcs.',
      ),
      Ingredients(
        ingredientName: 'Olive Oil',
        ingredientImage:
            'https://www.anticofrantoioligure.it/de/images/sito3.png',
        ingredientAmount: '1 tbsp.',
      ),
      Ingredients(
        ingredientName: 'Onion',
        ingredientImage:
            'https://www.toponions.com/l/en/library/download/urn:uuid:47b63dcd-dcc5-466a-bcab-c214b0f45c8b/gele-uien--thumb.png',
        ingredientAmount: '1 pc.',
      ),
      Ingredients(
        ingredientName: 'Spaghetti',
        ingredientImage:
            'https://ammiraticoffee.com/wp-content/uploads/2020/11/home_detail_fasciospaghettihome.png',
        ingredientAmount: '250 g.',
      ),
      Ingredients(
        ingredientName: 'Spices',
        ingredientImage:
            'https://landspices.com/wp-content/uploads/2016/09/amaya_recipe1-320x255.png',
        ingredientAmount: 'As you Like',
      ),
      Ingredients(
          ingredientName: 'Cheese',
          ingredientImage:
              'https://cdn.shopify.com/s/files/1/0244/3513/0423/products/2300717_4fcdc746-ea0b-4f94-af17-5f185d26d6a2_600x.png?v=1627800575',
          ingredientAmount: 'As you Like'),
    ],
    steps: [
      'Cut the tomatoes and the onion into small pieces.',
      'Boil some water - add salt to it once it boils.',
      'Put the spaghetti into the boiling water - they should be done in about 10 to 12 minutes.',
      'In the meantime, heaten up some olive oil and add the cut onion.',
      'After 2 minutes, add the tomato pieces, salt, pepper and your other spices.',
      'The sauce will be done once the spaghetti are.',
      'Feel free to add some cheese on top of the finished dish.'
    ],
    isGlutenFree: false,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm2',
    categories: [
      'c2',
    ],
    title: 'Toast Hawaii',
    affordability: Affordability.Affordable,
    complexity: Complexity.Simple,
    imageUrl:
        'https://cdn.pixabay.com/photo/2018/07/11/21/51/toast-3532016_1280.jpg',
    duration: 10,
    ingredients: [
      Ingredients(
        ingredientName: 'White Bread',
        ingredientImage:
            'https://purepng.com/public/uploads/large/purepng.com-sliced-white-breadfood-bread-941524637306lfujv.png',
        ingredientAmount: '1 Slice',
      ),
      Ingredients(
        ingredientName: 'Ham',
        ingredientImage:
            'https://5.imimg.com/data5/SELLER/Default/2021/5/OF/TL/YD/1432671/american-smoked-turkey-ham-500x500.png',
        ingredientAmount: '1 slice',
      ),
      Ingredients(
        ingredientName: 'Pineapple',
        ingredientImage:
            'https://purepng.com/public/uploads/large/purepng.com-pineapple-slicespineappleripeananasfruithealth-981524761302kzrco.png',
        ingredientAmount: '1 Slice',
      ),
      Ingredients(
        ingredientName: 'Cheese',
        ingredientImage:
            'https://violifefoods.com/wp-content/uploads/2017/07/cheddar-slices-transparent.png',
        ingredientAmount: '1-2 Slices',
      ),
      Ingredients(
        ingredientName: 'Butter',
        ingredientImage:
            'https://freight.cargo.site/i/37cc760e6c63a6591e874bd90c14f5c22afc16b227817a37310aedd4b5a04507/free-png-butter-png-images-transparent-butter-png-850_559.png',
        ingredientAmount: '1 tbsp.',
      ),
    ],
    steps: [
      'Butter one side of the white bread',
      'Layer ham, the pineapple and cheese on the white bread',
      'Bake the toast for round about 10 minutes in the oven at 200°C'
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm3',
    categories: [
      'c2',
      'c3',
    ],
    title: 'Classic Hamburger',
    affordability: Affordability.Pricey,
    complexity: Complexity.Simple,
    imageUrl:
        'https://cdn.pixabay.com/photo/2014/10/23/18/05/burger-500054_1280.jpg',
    duration: 45,
    ingredients: [
      Ingredients(
        ingredientName: 'Ground Beef',
        ingredientImage:
            'https://albertafoodservice.ca/wp-content/uploads/2016/05/ground-beef-1.png',
        ingredientAmount: '300 g.',
      ),
      Ingredients(
        ingredientName: 'Tomato',
        ingredientImage:
            'https://www.bordbia.ie/globalassets/bordbia2020/food-and-living/best-in-season-2020/salads/tomato.png',
        ingredientAmount: '1 Slice',
      ),
      Ingredients(
        ingredientName: 'Pickeled Cucumber',
        ingredientImage:
            'https://assets.stickpng.com/thumbs/5eafed1ff7f4540004b715eb.png',
        ingredientAmount: '2-3 Slices',
      ),
      Ingredients(
        ingredientName: 'Onion',
        ingredientImage:
            'https://www.toponions.com/l/en/library/download/urn:uuid:47b63dcd-dcc5-466a-bcab-c214b0f45c8b/gele-uien--thumb.png',
        ingredientAmount: '1 Slice',
      ),
      Ingredients(
        ingredientName: 'Ketchup',
        ingredientImage:
            'https://pngpress.com/wp-content/uploads/2020/09/uploads_ketchup_ketchup_PNG15.png',
        ingredientAmount: 'As you Like',
      ),
      Ingredients(
        ingredientName: 'Burger Buns',
        ingredientImage:
            'https://cdn.shopify.com/s/files/1/0376/3742/3148/products/brioche-buns_3_700x.png?v=1590100863',
        ingredientAmount: '2 Slices',
      ),
    ],
    steps: [
      'Form 2 patties',
      'Fry the patties for c. 4 minutes on each side',
      'Quickly fry the buns for c. 1 minute on each side',
      'Bruch buns with ketchup',
      'Serve burger with tomato, cucumber and onion'
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm4',
    categories: [
      'c4',
    ],
    title: 'Wiener Schnitzel',
    affordability: Affordability.Luxurious,
    complexity: Complexity.Challenging,
    imageUrl:
        'https://cdn.pixabay.com/photo/2018/03/31/19/29/schnitzel-3279045_1280.jpg',
    duration: 60,
    ingredients: [
      Ingredients(
        ingredientName: 'Veal',
        ingredientImage:
            'https://cdn.shopify.com/s/files/1/0359/8149/2361/products/MG_9112-removebg-preview_348x.png?v=1591473682',
        ingredientAmount: '8 Cutlets',
      ),
      Ingredients(
        ingredientName: 'Eggs',
        ingredientImage:
            'https://lohmann-breeders.com/media/2020/07/egg-weight-lost.png',
        ingredientAmount: '4 pcs.',
      ),
      Ingredients(
        ingredientName: 'Bread Crumps',
        ingredientImage:
            'https://turano.com/wp-content/uploads/2019/03/47857_Bread_Crumbs_25_lb_Fine_Bread_Crumbs_TD_05_EDITED_forceUpdate.png',
        ingredientAmount: '200 g.',
      ),
      Ingredients(
        ingredientName: 'Flour',
        ingredientImage:
            'https://nulifemarket.com/wp-content/uploads/2018/03/bowl_white-pearled-grain-flour.png',
        ingredientAmount: '100 g.',
      ),
      Ingredients(
        ingredientName: 'Butter',
        ingredientImage:
            'https://freight.cargo.site/i/37cc760e6c63a6591e874bd90c14f5c22afc16b227817a37310aedd4b5a04507/free-png-butter-png-images-transparent-butter-png-850_559.png',
        ingredientAmount: '300 ml.',
      ),
      Ingredients(
        ingredientName: 'Vegetable Oil',
        ingredientImage:
            'https://www.excelfood.co.uk/wp-content/uploads/2015/05/veg-oil-spoon-e1433156391598_clipped_rev_1-e1433429581869.png',
        ingredientAmount: '100 g.',
      ),
      Ingredients(
        ingredientName: 'Salt',
        ingredientImage: 'https://i.dlpng.com/static/png/6664237_preview.png',
        ingredientAmount: '1 Pinch',
      ),
      Ingredients(
        ingredientName: 'Sliced Lemon',
        ingredientImage:
            'https://www.gadcoegypt.com/wp-content/uploads/2018/05/Gadco-Lemon2.png',
        ingredientAmount: 'As you Like',
      ),
    ],
    steps: [
      'Tenderize the veal to about 2–4mm, and salt on both sides.',
      'On a flat plate, stir the eggs briefly with a fork.',
      'Lightly coat the cutlets in flour then dip into the egg, and finally, coat in breadcrumbs.',
      'Heat the butter and oil in a large pan (allow the fat to get very hot) and fry the schnitzels until golden brown on both sides.',
      'Make sure to toss the pan regularly so that the schnitzels are surrounded by oil and the crumbing becomes ‘fluffy’.',
      'Remove, and drain on kitchen paper. Fry the parsley in the remaining oil and drain.',
      'Place the schnitzels on awarmed plate and serve garnishedwith parsley and slices of lemon.'
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm5',
    categories: [
      'c2'
          'c5',
      'c10',
    ],
    title: 'Salad with Smoked Salmon',
    affordability: Affordability.Luxurious,
    complexity: Complexity.Simple,
    imageUrl:
        'https://cdn.pixabay.com/photo/2016/10/25/13/29/smoked-salmon-salad-1768890_1280.jpg',
    duration: 15,
    ingredients: [
      Ingredients(
        ingredientName: 'Arugula',
        ingredientImage:
            'https://static.wixstatic.com/media/081e09_88e0719a1aa34c4394da87edc9a408b5~mv2.png/v1/fit/w_500,h_500,q_90/file.png',
        ingredientAmount: '100 g.',
      ),
      Ingredients(
        ingredientName: 'Lamb\'s Lettuce',
        ingredientImage:
            'https://www.fondation-louisbonduelle.org/wp-content/uploads/2016/09/mache_416993071-e1475241025446.png',
        ingredientAmount: '100 g.',
      ),
      Ingredients(
        ingredientName: 'Parsley',
        ingredientImage:
            'https://cdn.pixabay.com/photo/2018/08/22/05/16/parsley-3622868_1280.png',
        ingredientAmount: '100 g.',
      ),
      Ingredients(
        ingredientName: 'Fennel',
        ingredientImage:
            'https://5.imimg.com/data5/SELLER/Default/2020/8/OW/NN/MK/84500358/fennel-seeds-variyali-500x500.png',
        ingredientAmount: '100 g.',
      ),
      Ingredients(
        ingredientName: 'Smoked Salmon',
        ingredientImage:
            'https://fourseasinter.com/wp-content/uploads/2021/01/400-by-400-products3-300x300.png',
        ingredientAmount: '200 g.',
      ),
      Ingredients(
        ingredientName: 'Mustard',
        ingredientImage:
            'https://wilstar.com/wp-content/uploads/2016/08/national-mustard-day.png',
        ingredientAmount: '2 tbsp.',
      ),
      Ingredients(
        ingredientName: 'Balsamic Vinegar',
        ingredientImage:
            'https://static.wixstatic.com/media/4fa0ed_9dce3284eafc4fce8e1b860efa4da3fb~mv2.png/v1/fill/w_1000,h_667,al_c,usm_0.66_1.00_0.01/4fa0ed_9dce3284eafc4fce8e1b860efa4da3fb~mv2.png',
        ingredientAmount: '2 tbsp..',
      ),
      Ingredients(
        ingredientName: 'Olive Oil',
        ingredientImage:
            'https://www.anticofrantoioligure.it/de/images/sito3.png',
        ingredientAmount: '2 tbsp.',
      ),
      Ingredients(
        ingredientName: 'Salt & Pepper',
        ingredientImage:
            'https://cdn.shopify.com/s/files/1/0256/3594/6544/products/SaltandPepperCellar_1200x1200.png?v=1629209237',
        ingredientAmount: '1 Pinch',
      ),
    ],
    steps: [
      'Wash and cut salad and herbs',
      'Dice the salmon',
      'Process mustard, vinegar and olive oil into a dessing',
      'Prepare the salad',
      'Add salmon cubes and dressing'
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm6',
    categories: [
      'c6',
      'c10',
    ],
    title: 'Delicious Orange Mousse',
    affordability: Affordability.Affordable,
    complexity: Complexity.Hard,
    imageUrl:
        'https://cdn.pixabay.com/photo/2017/05/01/05/18/pastry-2274750_1280.jpg',
    duration: 240,
    ingredients: [
      Ingredients(
        ingredientName: 'Gelatine Sheets',
        ingredientImage:
            'https://www.frije.com/content/ingredients/331.png?cc=24482',
        ingredientAmount: '4 Sheets',
      ),
      Ingredients(
        ingredientName: 'Orange Juice',
        ingredientImage:
            'https://www.dole.com/-/media/project/dole/produce-images/fruit/oranges_cut_web.png?h=630&w=1200&rev=5e260d0d7c624319b64d7667c3242e04&hash=C02D624D0A7769E761931CD94BB68AED',
        ingredientAmount: '150 ml.',
      ),
      Ingredients(
        ingredientName: 'Sugar',
        ingredientImage:
            'https://cdn.shopify.com/s/files/1/0504/5600/2723/products/organic-cane-sugar-bulk_1440x1600.png?v=1628023692',
        ingredientAmount: '80 g.',
      ),
      Ingredients(
        ingredientName: 'Yoghurt',
        ingredientImage:
            'https://www.pngarts.com/files/3/Yogurt-Transparent-Image.png',
        ingredientAmount: '300 g.',
      ),
      Ingredients(
        ingredientName: 'Cream',
        ingredientImage:
            'https://s3.amazonaws.com/static.realcaliforniamilk.com/media/assets/cream_fraich_c.png',
        ingredientAmount: '200 g.',
      ),
      Ingredients(
        ingredientName: 'Orange Peel',
        ingredientImage:
            'https://www.biovoices.eu/image_temp/516X516_516X516_983d2efd57d6375b74c96647e731092f.png',
        ingredientAmount: 'As you Like',
      ),
    ],
    steps: [
      'Dissolve gelatine in pot',
      'Add orange juice and sugar',
      'Take pot off the stove',
      'Add 2 tablespoons of yoghurt',
      'Stir gelatin under remaining yoghurt',
      'Cool everything down in the refrigerator',
      'Whip the cream and lift it under die orange mass',
      'Cool down again for at least 4 hours',
      'Serve with orange peel',
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm7',
    categories: [
      'c7',
    ],
    title: 'Pancakes',
    affordability: Affordability.Affordable,
    complexity: Complexity.Simple,
    imageUrl:
        'https://cdn.pixabay.com/photo/2018/07/10/21/23/pancake-3529653_1280.jpg',
    duration: 20,
    ingredients: [
      Ingredients(
        ingredientName: 'All-Purpose Flour',
        ingredientImage:
            'https://nulifemarket.com/wp-content/uploads/2018/03/bowl_white-pearled-grain-flour.png',
        ingredientAmount: '1 1/2 Cups',
      ),
      Ingredients(
        ingredientName: 'Baking Powder',
        ingredientImage:
            'https://swagatgrocery.com/wp-content/uploads/2021/01/baking-powder.png',
        ingredientAmount: '3 1/2 tsp.',
      ),
      Ingredients(
        ingredientName: 'Salt',
        ingredientImage: 'https://i.dlpng.com/static/png/6664237_preview.png',
        ingredientAmount: '1 tsp.',
      ),
      Ingredients(
        ingredientName: 'White Sugar',
        ingredientImage:
            'https://cdn.shopify.com/s/files/1/0504/5600/2723/products/organic-cane-sugar-bulk_1440x1600.png?v=1628023692',
        ingredientAmount: '1 tbsp.',
      ),
      Ingredients(
        ingredientName: 'Milk',
        ingredientImage:
            'https://drinkmilk.co.uk/wp-content/uploads/2020/05/milk_2pint.png',
        ingredientAmount: '1 1/4 Cups',
      ),
      Ingredients(
        ingredientName: 'Egg',
        ingredientImage:
            'https://lohmann-breeders.com/media/2020/07/egg-weight-lost.png',
        ingredientAmount: '1 pc.',
      ),
      Ingredients(
        ingredientName: 'Melted Butter',
        ingredientImage:
            'https://igav3-metcdn-com.global.ssl.fastly.net/content/uploads/sites/2/2016/10/26041213/melted-butter.png',
        ingredientAmount: '3 tbsp.',
      ),
    ],
    steps: [
      'In a large bowl, sift together the flour, baking powder, salt and sugar.',
      'Make a well in the center and pour in the milk, egg and melted butter; mix until smooth.',
      'Heat a lightly oiled griddle or frying pan over medium high heat.',
      'Pour or scoop the batter onto the griddle, using approximately 1/4 cup for each pancake. Brown on both sides and serve hot.'
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm8',
    categories: [
      'c8',
    ],
    title: 'Creamy Indian Chicken Curry',
    affordability: Affordability.Pricey,
    complexity: Complexity.Challenging,
    imageUrl:
        'https://cdn.pixabay.com/photo/2018/06/18/16/05/indian-food-3482749_1280.jpg',
    duration: 35,
    ingredients: [
      Ingredients(
        ingredientName: 'Chicken Breast',
        ingredientImage:
            'https://www.wholesalemeatsdirect.co.nz/wp-content/uploads/chicken-breasts-skinless.png',
        ingredientAmount: '4 pcs.',
      ),
      Ingredients(
        ingredientName: 'Onion',
        ingredientImage:
            'https://www.toponions.com/l/en/library/download/urn:uuid:47b63dcd-dcc5-466a-bcab-c214b0f45c8b/gele-uien--thumb.png',
        ingredientAmount: '1 pc.',
      ),
      Ingredients(
        ingredientName: 'Garlic Cloves',
        ingredientImage:
            'https://spiceworldinc.com/wp-content/uploads/2020/01/Fresh-Garlic-Product-Page-Feature.png',
        ingredientAmount: '2 pcs.',
      ),
      Ingredients(
        ingredientName: 'Ginger Slices',
        ingredientImage:
            'https://freshworld.pk/wp-content/uploads/2020/05/ginger-1.png',
        ingredientAmount: '1 pc.',
      ),
      Ingredients(
        ingredientName: 'Almonds',
        ingredientImage:
            'https://www.greekseller.com/images/products/original/roasted-almonds.png',
        ingredientAmount: '4 tbsp.',
      ),
      Ingredients(
        ingredientName: 'Cayenne Pepper',
        ingredientImage:
            'https://al-salamtrading.com/wp-content/uploads/cayenne-pepper02.png',
        ingredientAmount: '1 tbsp.',
      ),
      Ingredients(
        ingredientName: 'Coconut Milk',
        ingredientImage:
            'https://cdn.forestessentialsindia.com/blog/wp-content/uploads/2020/02/Coconut-milk.png',
        ingredientAmount: '500 ml.',
      ),
    ],
    steps: [
      'Slice and fry the chicken breast',
      'Process onion, garlic and ginger into paste and sauté everything',
      'Add spices and stir fry',
      'Add chicken breast + 250ml of water and cook everything for 10 minutes',
      'Add coconut milk',
      'Serve with rice'
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm9',
    categories: [
      'c9',
    ],
    title: 'Chocolate Souffle',
    affordability: Affordability.Affordable,
    complexity: Complexity.Hard,
    imageUrl:
        'https://cdn.pixabay.com/photo/2014/08/07/21/07/souffle-412785_1280.jpg',
    duration: 45,
    ingredients: [
      Ingredients(
        ingredientName: 'Melted Butter',
        ingredientImage:
            'https://igav3-metcdn-com.global.ssl.fastly.net/content/uploads/sites/2/2016/10/26041213/melted-butter.png',
        ingredientAmount: '1 tsp.',
      ),
      Ingredients(
        ingredientName: 'White Sugar',
        ingredientImage:
            'https://cdn.shopify.com/s/files/1/0504/5600/2723/products/organic-cane-sugar-bulk_1440x1600.png?v=1628023692',
        ingredientAmount: '2 tbsp.',
      ),
      Ingredients(
        ingredientName: 'Dark Chocolate',
        ingredientImage:
            'https://purepng.com/public/uploads/large/purepng.com-chocolatechocolatesweetcacaoanandamide-14115272312602xqll.png',
        ingredientAmount: '2 oz.',
      ),
      Ingredients(
        ingredientName: 'Butter',
        ingredientImage:
            'https://freight.cargo.site/i/37cc760e6c63a6591e874bd90c14f5c22afc16b227817a37310aedd4b5a04507/free-png-butter-png-images-transparent-butter-png-850_559.png',
        ingredientAmount: '1 tbsp.',
      ),
      Ingredients(
        ingredientName: 'All-Purpose Flour',
        ingredientImage:
            'https://nulifemarket.com/wp-content/uploads/2018/03/bowl_white-pearled-grain-flour.png',
        ingredientAmount: '1 tbsp.',
      ),
      Ingredients(
        ingredientName: 'Cold Milk',
        ingredientImage:
            'https://drinkmilk.co.uk/wp-content/uploads/2020/05/milk_2pint.png',
        ingredientAmount: '4 1/3 tbsp.',
      ),
      Ingredients(
        ingredientName: 'Salt',
        ingredientImage: 'https://i.dlpng.com/static/png/6664237_preview.png',
        ingredientAmount: '1 Pinch',
      ),
      Ingredients(
        ingredientName: 'Cayenne Pepper',
        ingredientImage:
            'https://al-salamtrading.com/wp-content/uploads/cayenne-pepper02.png',
        ingredientAmount: '1 Pinch',
      ),
      Ingredients(
        ingredientName: 'Egg Yolk',
        ingredientImage:
            'https://www.vippng.com/png/full/436-4362382_products-boiled-egg.png',
        ingredientAmount: '1 pc.',
      ),
      Ingredients(
        ingredientName: 'Egg Whites',
        ingredientImage:
            'https://www.pngkey.com/png/full/597-5973159_we-chose-to-use-a-bit-of-egg.png',
        ingredientAmount: '2 pcs.',
      ),
      Ingredients(
        ingredientName: 'Tartar Cream',
        ingredientImage:
            'https://cdn.shopify.com/s/files/1/0271/3537/7545/products/Cream-of-Tartar-removebg-preview.png?v=1598904513',
        ingredientAmount: '1 Pinsh',
      ),
      Ingredients(
        ingredientName: 'White Sugar',
        ingredientImage:
            'https://cdn.shopify.com/s/files/1/0504/5600/2723/products/organic-cane-sugar-bulk_1440x1600.png?v=1628023692',
        ingredientAmount: '1 tbsp.',
      ),
    ],
    steps: [
      'Preheat oven to 190°C. Line a rimmed baking sheet with parchment paper.',
      'Brush bottom and sides of 2 ramekins lightly with 1 teaspoon melted butter; cover bottom and sides right up to the rim.',
      'Add 1 tablespoon white sugar to ramekins. Rotate ramekins until sugar coats all surfaces.',
      'Place chocolate pieces in a metal mixing bowl.',
      'Place bowl over a pan of about 3 cups hot water over low heat.',
      'Melt 1 tablespoon butter in a skillet over medium heat. Sprinkle in flour. Whisk until flour is incorporated into butter and mixture thickens.',
      'Whisk in cold milk until mixture becomes smooth and thickens. Transfer mixture to bowl with melted chocolate.',
      'Add salt and cayenne pepper. Mix together thoroughly. Add egg yolk and mix to combine.',
      'Leave bowl above the hot (not simmering) water to keep chocolate warm while you whip the egg whites.',
      'Place 2 egg whites in a mixing bowl; add cream of tartar. Whisk until mixture begins to thicken and a drizzle from the whisk stays on the surface about 1 second before disappearing into the mix.',
      'Add 1/3 of sugar and whisk in. Whisk in a bit more sugar about 15 seconds.',
      'whisk in the rest of the sugar. Continue whisking until mixture is about as thick as shaving cream and holds soft peaks, 3 to 5 minutes.',
      'Transfer a little less than half of egg whites to chocolate.',
      'Mix until egg whites are thoroughly incorporated into the chocolate.',
      'Add the rest of the egg whites; gently fold into the chocolate with a spatula, lifting from the bottom and folding over.',
      'Stop mixing after the egg white disappears. Divide mixture between 2 prepared ramekins. Place ramekins on prepared baking sheet.',
      'Bake in preheated oven until scuffles are puffed and have risen above the top of the rims, 12 to 15 minutes.',
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm10',
    categories: [
      'c2',
      'c5',
      'c10',
    ],
    title: 'Asparagus Salad with Cherry Tomatoes',
    affordability: Affordability.Luxurious,
    complexity: Complexity.Simple,
    imageUrl:
        'https://cdn.pixabay.com/photo/2018/04/09/18/26/asparagus-3304997_1280.jpg',
    duration: 30,
    ingredients: [
      Ingredients(
        ingredientName: 'Aspargus',
        ingredientImage:
            'https://ml0gvze9zd0y.i.optimole.com/_69KEH4-K2xj4sR3/w:1024/h:634/q:90/https://euromeridian.nl/wp-content/uploads/2021/01/59bf7ed37a216d0b052f12cf.png',
        ingredientAmount: '200 g.',
      ),
      Ingredients(
        ingredientName: 'Pine Nuts',
        ingredientImage:
            'https://www.southernstylespices.com/wp-content/uploads/2019/04/Nuts_Seeds-Pine_Nuts_20190125_042-e1555209265984.png',
        ingredientAmount: '30 g.',
      ),
      Ingredients(
        ingredientName: 'Cherry Tomatoes',
        ingredientImage:
            'https://mucci-production-user-uploads-bucket.s3.amazonaws.com/images/Product-IMG_ChertoTomatoes-rev2.original.png',
        ingredientAmount: '300 g.',
      ),
      Ingredients(
        ingredientName: 'Salt & Pepper',
        ingredientImage:
            'https://cdn.shopify.com/s/files/1/0256/3594/6544/products/SaltandPepperCellar_1200x1200.png?v=1629209237',
        ingredientAmount: '1 Pinch',
      ),
      Ingredients(
        ingredientName: 'Olive Oil',
        ingredientImage:
            'https://www.anticofrantoioligure.it/de/images/sito3.png',
        ingredientAmount: '2 tsp.',
      ),
    ],
    steps: [
      'Wash, peel and cut the asparagus',
      'Cook in salted water',
      'Salt and pepper the asparagus',
      'Roast the pine nuts',
      'Halve the tomatoes',
      'Mix with asparagus, salad and dressing',
      'Serve with Baguette'
    ],
    isGlutenFree: true,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: true,
  ),
];
