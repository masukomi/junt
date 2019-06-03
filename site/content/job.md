# Job #

A job object contains a collection of information about a specific role.

- [Parameters](#job_object_parameters "Parameters")
- [Associations](#associations "Associations")
- [Routes/Operations](#job_object_routes "Routes/Operations")
- [Errors](#job_object_errors "Errors")


## Job Object Parameters ##

_*Note:* When creating a new job, don't send blank/null optional parameters. Leave blank parameters out of the request._

| Parameter | Type | Required | Description | Notes |
| --- | --- | --- | --- | --- |
| id | int | Required | Unique identifier | |
| company_id | int | Required | Unique identifier | See Company object for more information. |
| job_title| string | Optional | Title from job application | |
| posting_url | string | Optional | URL for the job posting source | |
| source | string | Optional | How did the user find out about the job? | |
| referred_by | string | Optional | Person who referred the user | |
| salary_range | string | Optional | The salary range for the job | In USD |
| application_method | string | Optional | How did the user apply? | |
| note | string | Optional | Notes about the job | |
| created_at | date_time | Optional | Date/time when the job is first created. | ISO 8601, ex. 2019-05-18T13:28:44+00:00 . If not provided, defaults to time server receives the request. |
| updated_at | date_time | Optional | Date/time when the job is last updated. | ISO 8601, ex. 2019-05-18T13:28:44+00:00 . If not provided, defaults to time server receives the request. |
| start_date | date_time | Optional | The expected start date for the job | ISO 8601, ex. 2019-05-18T13:28:44+00:00 . If not provided, defaults to time server receives the request. |

## Associations ##

| JOB Object | Associated Object |
| --- | --- |
| belongs_to | company |
| has_many | events (maybe) |
| has_many | people (hr contact(s)) |

## Job object routes ##

- [Get all jobs](#get_all_jobs_route "Get all jobs_route")
- [Get a specific job](#get_a_specific_job_route "Get a specific job route")
- [Create a new job](#create_a_new_job_route "Create a new job route")
- [Edit a job](#edit_a_job_route "Edit a job route")
- [Delete a job](#delete_a_job_route "Delete a job route")


### Get all jobs route ###

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

```JSON
[
  {
    "id": 1,
    "company_id": 123,
    "job_title": "Senior Software Developer",
    "posting_url": "https://www.linkedin.example.com/jobs/view/1234567890",
    "source": "LinkedIn Jobs",
    "referred_by": "John Smith",
    "salary_range": "150,000",
    "application_method": null,
    "note": "Looking for Ruby experience",
    "created_at": "2019-05-18T13:28:44+05:00",
    "updated_at": "2019-05-20T09:33:15+05:00",
    "start_date": "2019-06-01T09:00:00+05:00"
  },
  {
    "id": 2,
    "company_id": 124,
    "job_title": "Principal engineer",
    "posting_url": "https://weworkremotely.example.com/remote-jobs/example-company-principal-engineer-3",
    "source": "We Work Remotely",
    "referred_by": null,
    "salary_range": null,
    "application_method": "Online",
    "note": "Leverage experience at last role",
    "created_at": "2019-05-19T15:17:29+05:00",
    "updated_at": "2019-05-21T10:48:53+05:00",
    "start_date": "2019-06-10T09:00:00+05:00"
  }
]
```

This endpoint retrieves all jobs.

#### HTTP Request ####

`GET /jobs/`

### Get a specific job route ###

```go
Example GO code
```

```shell
Example shell code
```

```javascript
example javascript code
```

> The above command returns JSON structured like this:

```json
  {
    "id": 1,
    "company_id": 123,
    "job_title": "Senior Software Developer",
    "posting_url": "https://www.linkedin.example.com/jobs/view/1234567890",
    "source": "LinkedIn Jobs",
    "referred_by": "John Smith",
    "salary_range": "150,000",
    "application_method": null,
    "note": "Looking for Ruby experience",
    "created_at": "2019-05-18T13:28:44+05:00",
    "updated_at": "2019-05-20T09:33:15+05:00",
    "start_date": "2019-06-01T09:00:00+05:00"
  }
```

This endpoint retrieves a specific job, called by `id`.

#### HTTP Request ####

`GET /jobs/1`

### Create a new job route ###

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
  "company_id": 125,
  "job_title": "Senior Backend Developer",
  "source": "Dice.com",
  "referred_by": "Jerry at Company XYZ",
  "salary_range": "130,000",
  "application_method": "applied on company site",
  "note": "Talk about Ruby project"
}
```

This endpoint creates a new job, specified by `id` and linking to `company_id`.

_*Note:* In this example, `posting_url`, `created_at`, `updated_at` and `start_date` are all left out of the request, because these are optional fields that do not contain data. When viewing this job, these fields will return null._

> The above command returns JSON structured like this:

```json
200 Success
```

#### HTTP Request ####

`POST /jobs/`

### Edit a job route ###

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
  "company_id": 125,
  "posting_url": "https://www.companyxyz.example.com/careers/123456",
  "start_date": "2019-06-01T09:00:00+05:00"
}
```

This endpoint adds new data or overwrites data to a specific job, called by `id`.

_*Note:* In this example, parameters that are not being updated are left out of the request. Send only parameters being updated when editing a job._


> The above command returns JSON structured like this:

```json
200 Success
```

#### HTTP Request ####

`PUT /jobs/`

### Delete a job route ###

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
  "company_id": 125
}
```

This endpoint permanently deletes a specific job, called by `id`.

_*Note*: Deleting a JOB deletes the JOB, and all associated EVENTS, but not the PEOPLE._

> The above command returns JSON structured like this:

```json
200 Success
```

#### HTTP Request ####

`DELETE /jobs/`

## Job Object Errors ##
