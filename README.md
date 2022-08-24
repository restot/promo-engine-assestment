# README

## Rails api application with simple promo engine. 


* Ruby version: 3.1.0

* System dependencies: postgresql 

The idea was to create MVP app with swagger-ui tools and deploy the containerized docker image to Heroku. But I have to admit my time limit at this moment of time is way over 2h limit. Usually, I would consult with my manager to figure out what futures should be delivered first and which could wait. Because I can't see reasons to continue it runs out of motivation and time. I could force myself to finish it but to me, it feels like burnout coming closer and closer. From my perspective, it just haven't worth it anymore.
Well, because a haven't designed a way how to implement promotions logic when began the development process I haven't utilized TDD approach.
From my perspective what should be done:
- CRUD for Promos
- CRUD for Products
- Unit test coverage
- rswagger API endpoints coverage
- extract promos logic from Promo model to module and have a separate module for each Promo program and just include them to model
- add helper for showing suggested products to be eligible for promo discount
- refine promos logic to properly calculate discounted prices when the cart contains more than one identical set of products with promotion on it.
- add logic to calculate more profitable bundle of products
- automatically grouping up products in the cart by promotions and always pick more client-oriented promotions

Opps, feels like I went way beyond from assessment requirements 
 
