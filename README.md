# Go All The Way

A simple CRUD API where data we persist data in a slice.

## Prerequisites

- Docker must be installed on your Environment

## SetUp
1. git clone the project from the dev branch
2. create a new branch
3. Run "docker-compose" up to start the containers.

```bash
docker-compose up
```

## Documentation
 The app runs on on http://localhost:8080. You can test using curl or from within Postman or any other Rest API Client. 

### To Create a Recipe: 
 * Send a POST request to http://localhost:8080/recipes. 
 * You must include a request body. 
 * A sample request body would be like below: 

```json

{
    "name": "Pancake Recipe",
    "keywords": [
        "Pancake",
        "Dough",
        "Breakfast"
    ],
    "ingredients": [
        "Pancake mix",
        "water"
    ],
    "instructions": [
        "Stir the pancake mix in water",
        "leave to sit for 3 minutes",
        "place on the hot pan and fry until satisfied"
    ],
    "chef": {
        "name": "John Doe",
        "country": "Nigeria",
        "yearsOfExperience": 3
    }
}
```

### To List All Recipes: 
* Send a GET request to http://localhost:8080/recipes. 
 
### To Update a Recipe: 
* You must note the Recipe ID from fetching all the recipes. 
* Send a PUT request to http://localhost:8080/:recipe-id  specifying the id in the request path. 
* A sample body were we just want add instructions would look like this: 

```json

{
    "name": "Pancake Recipe",
    "keywords": [
        "Pancake",
        "Dough",
        "Breakfast"
    ],
    "ingredients": [
        "Pancake mix",
        "water"
    ],
    "instructions": [
        "Stir the pancake mix in water",
        "leave to sit for 3 minutes",
        "place on the hot pan and fry until satisfied", 
        "flip the pancake and leave to fry some more",
        "dish with ample syrup"
    ],
    "chef": {
        "name": "John Doe",
        "country": "Nigeria",
        "yearsOfExperience": 3
    }
}

```

### To Delete a Recipe: 
* You must note the Recipe ID from fetching all the recipes. 
* Send a DELETE request to http://localhost:8080/:recipe-id  specifying the id in the request path. 
* After a successful delete, you'll get a Recipe deleted message. 


## Notes:
Please note that the following ports must be free in your network as the app runs on the network. 
* 8080


