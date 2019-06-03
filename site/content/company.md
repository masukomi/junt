# Company #

A company object contains a collection of information about a specific company.

- [Parameters](#company_object_parameters "Parameters")
- [Associations](#associations "Associations")
-[ Routes/Operations](#company_object_routes "Routes/Operations")

## Company Object Parameters ##

| Parameter | Type | Required | Description | Notes |
| --- | --- | --- | --- | --- |
| id | int | Required | Unique identifier | Becomes "company_id" in Job object |
| name | string | Required | The name of the company | |
| location | string | Optional | Where the company is located | |
| url | string | Optional | The company's website (URL) | |
| note | string | Optional | Notes about the company | |
| created_at | date_time | Optional | Date/time when the company is first created. | ISO 8601, ex. 2019-05-18T13:28:44+00:00 . If not provided, defaults to time server receives the request. |
| updated_at | date_time | Optional | Date/time when the company is last updated. | ISO 8601, ex. 2019-05-18T13:28:44+00:00 . If not provided, defaults to time server receives the request. |

## Associations ##

| COMPANY Object | Associated Object |
| --- | --- |
| has_many | jobs (maybe) |

## Company Object Routes ##

- [Get all companies](#get-all-companies-route "Get all companies_route")
- [Get a specific company](#get-a-specific-company-route "Get a specific company route")
- [Create a new company](#create-a-new-company-route "Create a new company route")
- [Edit a company](#edit-a-company-route "Edit a company route")
- [Delete a company](#delete-a-company-route "Delete a company route")

### Get all companies route ###

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
    "name": "LinkedIn",
    "location": "Four Corners",
    "url": "linkedin.example.com",
    "note": null,
    "created_at": "2019-05-26T11:27:39+00:00",
    "updated_at": null
  },
  {
    "id": 2,
    "name": "Basecamp",
    "location": "remote",
    "url": null,
    "note": "Basecamp gets remote work - awesome culture",
    "created_at": "2019-05-27T10:18:17+00:00",
    "updated_at": null
  }
]
```

This endpoint retrieves all company objects (companies).

#### HTTP Request ####

`GET /company/`

### Get a specific company route ###

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
  "id": 2,
  "name": "Basecamp",
  "location": "remote",
  "url": null,
  "note": "Basecamp gets remote work - awesome culture",
  "created_at": "2019-05-27T10:18:17+00:00",
  "updated_at": null
}
```

This endpoint retrieves a specific company, called by `id`.

#### HTTP Request ####

`GET /company/2`

### Create a new company route ###

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
  "name": "IRL Strategies",
  "location": "123 Any Street, Any Town, NY",
  "note": "Great PTO and family leave policies"
}
```

This endpoint creates a new company, specified by `id`.

_*Note:* In this example, `url`, `created_at` and `updated_at` are all left out of the request, because these are optional fields that do not contain data. When viewing this company, these fields will return null._

> The above command returns JSON structured like this:

```json
200 Success
```

#### HTTP Request ####

`POST /company/`

### Edit a company route ###

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
  "name": "IRL Strategies",
  "url": "https://www.example.com"
}
```

This endpoint adds new data or overwrites data to a specific company, called by `id`.

_*Note:* In this example, parameters that are not being updated are left out of the request. Send only parameters being updated when editing a company._


> The above command returns JSON structured like this:

```json
200 Success
```

#### HTTP Request ####

`PUT /company/`

### Delete a company route ###

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
  "name": "IRL Strategies"
}
```

This endpoint permanently deletes a specific company, called by `id`.

_*Note*: Deleting a COMPANY deletes all JOBS for that company, all the EVENTS associated with all the JOBS, and all of the PEOPLE associated with the COMPANY, JOBS and EVENTS._

> The above command returns JSON structured like this:

```json
200 Success
```

#### HTTP Request ####

`DELETE /company/`
