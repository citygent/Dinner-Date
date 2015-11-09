![Dinner-Date Logo](http://res.cloudinary.com/citygent/image/upload/v1442998094/dishopen_gqneoq.png)

## Dinner Date 

**A Meal and Restaurant Tracker** for forgetful foodies:<br />
This app enables you to keep track of which dishes you've had at which restaurants to ensure you don't order the same thing too soon, or the version of Bucatini you forget this restaurant makes too acidic.

###Using the App
The homepage redirects to your complete **Meal History**, where you can see every meal you've logged with the app, including the restaurant you ate it at, a thumbnail of the photo of that particular visit, and the cost. 

* Clicking on the Date or Price will take you to that **Particular meal event**.

* Clicking on Restaurant name will take you to the **Restaurants's summary page**.

* Clicking on the dish name will take you to the **Dish's summary page**. 

* Clicking on the dish platter logo in the header at any point will enable you to log another meal event by taking you to the **Form Page**

The **Form Page** only loads inputs on demand. Creating a meal event is as easy as picking the restaurant and dish from the drop down.  In the event that you've never eaten there before or that particular dish, you can request these forms render.

You can upload *any type of picture* without worrying about filesize, type, or dimensions. Cloudinary will take care of that for us, enjoy your meal!

The **Particular Meal Event** will list the cost of that instance, and the rating of that particular experience.

The **Restaurant Summary Page** will show the details of the restaurant, *average* rating of all dishes eaten there, and count the amount of times you've had meals there. 

The **Dish Summary Page** will show a summary of that dish, averaging the rating and cost from across all the restaurants you've eaten that particular dish at, and all of the times you've eaten that dish.

###Technologies

The App is built on Ruby on Rails 4, uses jQuery and AJAX for form data, and Carrierwave for image uploads to Cloudinary.

Cloudinary handles image resizing on upload, and optimal client download sizing. 

HTML markup is mostly generated through Rails helpers. 

CSS does not use a framework as I wanted to learn from ground up and project scope does not require it. This said, it has been hastily put together and could do with a namin refactor at the least!

###Issues and Problems

The CSS mentioned was styled in a rush for presentation, so certain pages reuse tags from others. This is not semantic and has the potential to get messy. It should be addressed before new features are added. 

~~There is some issue with the form data posting at the moment and this has been a major headache before deadline. ~~ Fixed using 'accepts_nested_attributes_for'

If a user doesn't upload a (restaurant or meal) image, there is no placeholder image for this circumstance. Also should be noted that because of this it will change the behaviour of the 'random dish image' feature. 

The form doesn't have validation, this is problematic because of 0 or nil in the average dish price and average reviews on the show pages. I need to either put in validation for super sterile db additions, or I need to change those average functions to work with nil values. IDEALLY, BOTH. 



