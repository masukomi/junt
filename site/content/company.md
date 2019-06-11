---
section_weight: 1
page_weight: 1

---
# Company #

A company object contains a collection of information about a specific company.

- [Parameters](#company_object_parameters "Parameters")
- [Associations](#associations "Associations")
- [Routes/Operations](#company_object_routes "Routes/Operations")

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
	# list all companies
	url := "http://localhost:8123/v1/companies"

	req, _ := http.NewRequest("GET", url, nil)

	res, _ := http.DefaultClient.Do(req)

	defer res.Body.Close()
	body, _ := ioutil.ReadAll(res.Body)

	fmt.Println(res)
	fmt.Println(string(body))
```

```shell
# list all companies
curl --request GET \
  --url http://localhost:8123/v1/companies
```

```javascript
// list all companies
var settings = {
  "async": true,
  "crossDomain": true,
  "url": "http://localhost:8123/v1/companies",
  "method": "GET",
  "headers": {}
}

$.ajax(settings).done(function (response) {
  console.log(response);
});
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
    "updated_at": "2019-05-26T11:27:39+00:00",
    "person_ids": [33,44,55],
    "job_ids": [12,24,48]
  },
  {
    "id": 2,
    "name": "Basecamp",
    "location": "remote",
    "url": null,
    "note": "Basecamp gets remote work - awesome culture",
    "created_at": "2019-05-27T10:18:17+00:00",
    "updated_at": "2019-05-27T10:18:17+00:00",
    "person_ids": [34,45,56],
    "job_ids": [12,26,49]
  }
]
```

This endpoint retrieves all company objects (companies).

#### HTTP Request ####

`GET /v1/companies/`

### Get a specific company route ###


```go
	# show a specific company
	url := "http://localhost:8123/v1/companies/1"

	req, _ := http.NewRequest("GET", url, nil)

	res, _ := http.DefaultClient.Do(req)

	defer res.Body.Close()
	body, _ := ioutil.ReadAll(res.Body)

	fmt.Println(res)
	fmt.Println(string(body))
```

```shell
# show a specific company
curl --request GET \
  --url http://localhost:8123/v1/companies/1
```

```javascript
// show a specific company
var settings = {
  "async": true,
  "crossDomain": true,
  "url": "http://localhost:8123/v1/companies/1",
  "method": "GET",
  "headers": {}
}

$.ajax(settings).done(function (response) {
  console.log(response);
});
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
  "updated_at": "2019-05-27T10:18:17+00:00",
  "person_ids": [33,44,55],
  "job_ids": [12,24,48]

}
```

This endpoint retrieves a specific company, called by `id`.

#### HTTP Request ####

`GET /v1/companies/2`

### Create a new company route ###

```go
	# create a new company
	url := "http://localhost:8123/v1/companies"

	payload := strings.NewReader("{\n\t\"name\": \"CorporateRunaways\",\n  \"location\":\"Global\",\n  \"url\":\"https://corporaterunaways.com\",\n  \"note\":\"Adventure\"\n}")

	req, _ := http.NewRequest("POST", url, payload)

	req.Header.Add("content-type", "application/json")

	res, _ := http.DefaultClient.Do(req)

	defer res.Body.Close()
	body, _ := ioutil.ReadAll(res.Body)

	fmt.Println(res)
	fmt.Println(string(body))
```

```shell
# create a new company
curl --request POST \
  --url http://localhost:8123/v1/companies \
  --header 'content-type: application/json' \
  --data '{
	"name": "CorporateRunaways",
  "location":"Global",
  "url":"https://corporaterunaways.com",
  "note":"Adventure"
}'
```

```javascript
// create a new company
var settings = {
  "async": true,
  "crossDomain": true,
  "url": "http://localhost:8123/v1/companies",
  "method": "POST",
  "headers": {
    "content-type": "application/json"
  },
  "processData": false,
  "data": "{\n\t\"name\": \"CorporateRunaways\",\n  \"location\":\"Global\",\n  \"url\":\"https://corporaterunaways.com\",\n  \"note\":\"Adventure\"\n}"
}

$.ajax(settings).done(function (response) {
  console.log(response);
});

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

`POST /companies/`

### Edit a company route ###

**WARNING: EDITING IS CURRENTLY NOT IMPLEMENTED**

```go
Example GO code
```

```shell
# edit a company
curl "http://localhost:8123/v1/companies/1" \
  -X PUT \
  -H "Content-Type: application/json" \
  -d '{"name": "CorporateRunaways",
      "location":"Global",
      "url":"https://corporaterunaways.com",
      "note":"Adventure is _incredibly awesome!_"}'
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

`PUT /company/:id`

### Delete a company route ###

```go
Example GO code
```

```shell
# Delete a company
curl -X DELETE "http://localhost:8123/v1/companies/1"
```

```javascript
Example javascript code
```

This endpoint permanently deletes a specific company, called by `id`.

_*Note*: Deleting a COMPANY deletes all JOBS for that company, all the EVENTS associated with all the JOBS, and all of the PEOPLE associated with the COMPANY, JOBS and EVENTS._

> The above command returns JSON structured like this:

```json
200 Success
```

#### HTTP Request ####

`DELETE /companies/:id`
