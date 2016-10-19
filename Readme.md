# OpenBUMP


## Data Model

Data to be stored in a Document Store - MongoDB.

The database will contain 3 collections:
- Bumps
- Users
- Solvers

### Bumps Documents Structure

- id	
- Title
- Description
- Submitter -> user id in users
- Date created
- Date last updated
- Solver -> solver id in Solvers
- votes -> user ids in users

JSON:

    {
	    _id: 1223456548,
	    title: "Kitten Damage to furniture",
	    description: "Kittens can ruin stuff",
	    submitter: 46464784993,
	    created_date: 2016-10-19T23-45-00,
	    last_updated: 2016-11-19T10-45-00,
		solver: 36637300,
		votes: [373878703,
				478940404,
				575003627,
				500037373]

    }



### Users Document Structure

- id
- username
- First Name
- Last Name
- Email
- Avatar
- Bumps -> Bump ids in Bumps

JSON:

    {
	    _id: 1223456548,
	    username: "kcarroll",
	    first_name: "Ken",
	    last_name: "Carroll",
	    email: "kcarroll@hotmail.com",
	    avatar: "/avatars/smiley.jpg",
		bumps: [373878703,
				478940404,
				575003627,
				500037373]

    }


### Solvers Document Structure

- id
- Name
- Address
- url
- Info Email
- admins -> user ids in users
- Bumps -> Bump ids in Bumps

JSON:

    {
	    _id: 1223456548,
	    Name: "Ken Corp",
	    Address: {
					street1: "Central Street",
					street2: "",
					town: "Haarlem",
					post_code: "1987XT"
				},
	    url: "kencorp.com",
	    info_email: "info@kencorp.com",
		admins: [373878703,
				478940404,
				575003627,
				500037373],
		bumps: [373878703,
				478940404,
				575003627,
				500037373]

    }

