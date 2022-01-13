Planning Houseplants App
-----
USERS!
GET /signup 
	show sign up form √
		-first name
		-last name
		-email
		-password
	show Omniauth signup
POST /users √
	create and validate user in database

GET /signin
	show signin form √
	show Omniauth signin
POST /sigin √
	create user session and redirect

GET /users/:id
	show current user info
		-name √
		-houses associated with user
			-other users, if any, that have joined that house
	button to create new house
		-redirect to 'houses/new'

		notes:
			-still need OmniAuth functionality
			-cleanup layout

-----
HOUSES!
GET /houses/new
	show form to make house √
		-has a name
POST /houses
	save house form data to db

GET /houses
	displays all current user's houses
GET /houses/:id
	show form to make plant spaces
		-has name


PATCH /houses/:id

-----
PLANT SPACES!
GET /plant-spaces/new
	show form to make a plant space
		-has a name
		-has a sunlight_rating
		-has a temp
		-has a humidity
		<!-- -has a sunlight rating (1-10)
		-has a temperature dropdown with options (hot, warm, mild, cool, cold)
		-has a humidity dropdown with options (wet, damp, neutral, arid) -->
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

