# Person #

A person object contains a collection of information about a specific person related to the job hunt.

- [Parameters](#person_object_parameters "Parameters")
- [Associations](#associations "Associations")
- [Routes/Operations](#person_object_routes "Routes/Operations")

## Person Object Parameters ##

| Parameter | Type | Required | Description | Notes |
| --- | --- | --- | --- | --- |
| id | int | Required | Unique identifier | Becomes "people_ids" in Event object |
| name | string | Required | The person's name | |
| email | string | Optional | The person's email address | |
| phone | string | Optional | The person's phone number | |
| note | string | Optional | Notes about the person | |
| created_at | date_time | Optional | Date/time when the person is first created. | ISO 8601, ex. 2019-05-18T13:28:44+00:00 . If not provided, defaults to time server receives the request. |
| updated_at | date_time | Optional | Date/time when the person is last updated. | ISO 8601, ex. 2019-05-18T13:28:44+00:00 . If not provided, defaults to time server receives the request. |

## Associations ##

| --- | --- |
| has_many | events (maybe) |

## Person Object Routes ##

- [Get all people](#get_all_people_route "Get all people_route")
- [Get a specific person](#get_a_specific_person_route "Get a specific person route")
- [Create a new person](#create_a_new_person_route "Create a new person route")
- [Edit a person](#edit_a_person_route "Edit a person route")
- [Delete a person](#delete_a_person_route "Delete a person route")

### Get all people route ###

```go
Example GO code
```

```shell
Example shell code
```

```javascript
Example javascript code
```

> The above command returns JSON structured like this:

```json
[
  {
    "id": 1,
    "name": "John Smith",
    "email": "john.smith@example.com",
    "phone": "(123) 456-7890",
    "note": "Worked with John at Company XZY",
    "created_at": "2019-05-26T11:27:39+00:00",
    "updated_at": null
  },
  {
    "id": 2,
    "name": "Jane Thompson",
    "email": "jthompson@example.com",
    "phone": null,
    "note": "Recruiter for Company ABC",
    "created_at": "2019-05-27T10:18:17+00:00",
    "updated_at": null
  }
]
```

This endpoint retrieves all person objects (people).

#### HTTP Request ####

`GET /people/`

### Get a specific person route ###

```go
Example GO code
```

```shell
Example shell code
```

```javascript
Example javascript code
```

> The above command returns JSON structured like this:

```json
{
    "id": 1,
    "name": "John Smith",
    "email": "john.smith@example.com",
    "phone": "(123) 456-7890",
    "note": "Worked with John at Company XZY",
    "created_at": "2019-05-26T11:27:39+00:00",
    "updated_at": null
}
```

This endpoint retrieves a specific person, called by `id`.

#### HTTP Request ####

`GET /people/1`

### Create a new person route ###

```go
Example GO code
```

```shell
Example shell code
```

```javascript
Example javascript code
```

> The above command should be formed with JSON structured like this:

```json
{
  "id": 3,
  "name": "Ruby Vasquez",
  "email": "ruby@company.example.com",
  "phone": "901-234-5678"
}
```

This endpoint creates a new person, specified by `id`.

_*Note:* In this example, `note`, `created_at` and `updated_at` are all left out of the request, because these are optional fields that do not contain data. When viewing this person, these fields will return null._

> The above command returns JSON structured like this:

```json
200 Success
```

#### HTTP Request ####

`POST /people/`

### Edit a person route ###

```go
Example GO code
```

```shell
Example shell code
```

```javascript
Example javascript code
```

> The above command should be formed with JSON structured like this:

```json
{
  "id": 3,
  "name": "Ruby Vasquez",
  "notes": "In technical interview, asked questions about Vim"
}
```

This endpoint adds new data or overwrites data to a specific person, called by `id`.

_*Note:* In this example, parameters that are not being updated are left out of the request. Send only parameters being updated when editing a person._


> The above command returns JSON structured like this:

```json
200 Success
```

#### HTTP Request ####

`PUT /people/`

### Delete a person route ###

```go
Example GO code
```

```shell
Example shell code
```

```javascript
Example javascript code
```

> The above command should be formed with JSON structured like this:

```json
{
  "id": 3,
  "name": "Ruby Vasquez"
}
```

This endpoint permanently deletes a specific person, called by `id`.

_*Note*: Deleting a PERSON only deletes the PERSON. This may result in unexpected side-effects, such as a recorded INTERVIEW EVENT with no-one._

> The above command returns JSON structured like this:

```json
200 Success
```

#### HTTP Request ####

`DELETE /people/`
