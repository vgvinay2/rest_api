####Solutions  I have solved three problems using Ruby and Rails
----
````ruby

input for creating a product  JSON  POST method  URI http://localhost:3000/api/v1/products
{
"name" :  "my mobile" ,
 "description": "hi i am adding new product" ,
"price": "12"
}


Responce of the request

{
    "product":
    {
        "id": 1,
        "name": "my mobile",
        "description": "hi i am adding new product",
        "price": 12,
        "created_at": "2016-08-14T07:55:48.363Z",
        "updated_at": "2016-08-14T07:55:48.363Z"
    },
    "status": 201
}


For fetching all record like index http://localhost:3000/api/v1/products GET 

no body required 

Responce of the request
 

    {
        "products":
        [
            {
                "id": 1,
                "name": "my mobile",
                "description": "hi i am adding new product",
                "price": 12,
                "created_at": "2016-08-14T07:55:48.363Z",
                "updated_at": "2016-08-14T07:55:48.363Z"
            },
            {
                "id": 2,
                "name": "Applie",
                "description": "Applie is lounching iPHONE 6 ",
                "price": 95000,
                "created_at": "2016-08-14T07:59:46.078Z",
                "updated_at": "2016-08-14T07:59:46.078Z"
            }
        ],
        "status": 200
    }

````


#### Solution 2
https://github.com/vgvinay2/rest_api/wiki/Solution22

#### Solution 3
https://github.com/vgvinay2/rest_api/wiki/Solution3



