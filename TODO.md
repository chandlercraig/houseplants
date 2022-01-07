Planning Houseplants App
-----
USERS!
GET /register
	show sign up form
POST /users
	create and validate user in database

GET /login
	show login form
POST /login
	create user session and redirect 
-----
HOUSES!
GET /houses/new
	show form to make house
		-has a name
		-has plant spaces
POST /houses
	save house form data to db

GET /houses
GET /houses/:id
PATCH /houses/:id

-----
PLANT SPACES!
GET /plant-spaces/new
	show form to make a plant space
		-has a name
		-has a sunlight rating (1-10)
		-has a temperature dropdown with options (hot, warm, mild, cool, cold)
		-has a humidity dropdown with options (wet, damp, neutral, arid)
POST /plant-spaces
	save plant space form to db

GET /plant-spaces
GET /plant-spaces/:id
PATCH /plant-spaces/:id

-----
PLANTS!
GET /plant-spaces/:id/plants/new
	show form to make plant
		-has a name
		-has sunlight requirement
		-has temperature requirement
		-has humidity requirement
		-has watering schedule dropdown with options (monthly, bi-monthly, weekly, bi-weekly)
POST /plant-spaces/:id/plants
	save plant form to db

GET /plant-spaces/:id/plants
GET /plant-spaces/:id/plants/:id
PATCH /plant-spaces/:id/plants/:id

