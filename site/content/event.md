---
section_weight: 1
page_weight: 4

---
# Event #

An event object contains a collection of information related to a specific event in the job hunt process.

- Parameters
  - [ThanksEmail](#event_object:_thanksemail_parameters "ThanksEmail Parameters")
  - [StatusChange](#event_object:_statuschange_parameters "StatusChange Parameters")
  - [Followup](#event_object:_followup_parameters "Followup Parameters")
  - [Homework](#event_object:_homework_parameters "Homework Parameters")
  - [Interview](#event_object:_interview_parameters "Interview Parameters")
  - [Offer](#event_object:_offer_parameters "Offer Parameters")

- [Associations](#associations)
- [Routes](#event-object-routes)


## Parameters ##

## Event Object: ThanksEmail Parameters ##

| Parameter | Type | Required | Description | Notes |
| --- | --- | --- | --- | --- |
| id | int | Required | Unique identifier | `id` is automatically generated at POST |
| job_id | int | Required | Unique identifier `id` from Job object | Required during POST event, optional otherwise |
| created_at | date_time | Optional | Date/time when the thank-you email is sent or recorded in Junt. | ISO 8601, ex. 2019-05-18T13:28:44+00:00 . If not provided, defaults to time server receives the request. |
| updated_at |  date_time | Optional | Date/time when the event is last updated. | ISO 8601, ex. 2019-05-18T13:28:44+00:00 . If not provided, defaults to time server receives the request. |
| note | string | Optional | Notes about the event | Supports markdown |
| person_ids | array of ints | Optional | Person or people associated with the thank-you email | Unique identifier `id` from Person object |


## Event Object: StatusChange Parameters ##

| Parameter | Type | Required | Description | Notes |
| --- | --- | --- | --- | --- |
| id | int | Required | Unique identifier | `id` is automatically generated at POST |
| job_id | int | Required | Unique identifier `id` from Job object | Required during POST event, optional otherwise |
| created_at | date_time | Optional | Date/time when the status change happens, or is recorded in Junt. | ISO 8601, ex. 2019-05-18T13:28:44+00:00 . If not provided, defaults to time server receives the request. |
| updated_at |  date_time | Optional | Date/time when the event is last updated. | ISO 8601, ex. 2019-05-18T13:28:44+00:00 . If not provided, defaults to time server receives the request. |
| note | string | Optional | Notes about the event | Supports markdown |
| from | string | Optional | Current/former job status. | Valid options: "applied" , "interviewing" , "rejected" , "offer" , "black_hole"|
| to | string | Optional | New job status. | Valid options: "applied" , "interviewing" , "rejected" , "offer" , "black_hole" |


## Event Object: Followup Parameters ##

| Parameter | Type | Required | Description | Notes |
| --- | --- | --- | --- | --- |
| id | int | Required | Unique identifier | `id` is automatically generated at POST |
| job_id | int | Required | Unique identifier `id` from Job object | Required during POST event, optional otherwise |
| created_at | date_time | Optional | Date/time when the followup happens, or is recorded in Junt. | ISO 8601, ex. 2019-05-18T13:28:44+00:00 . If not provided, defaults to time server receives the request. |
| updated_at |  date_time | Optional | Date/time when the event is last updated. | ISO 8601, ex. 2019-05-18T13:28:44+00:00 . If not provided, defaults to time server receives the request. |
| note | string | Optional | Notes about the event | Supports markdown |
| person_ids | array of ints | Optional | Person or people associated with the followup | Unique identifier `id` from Person object |

## Event Object: Homework Parameters ##

| Parameter | Type | Required | Description | Notes |
| --- | --- | --- | --- | --- |
| id | int | Required | Unique identifier | `id` is automatically generated at POST |
| job_id | int | Required | Unique identifier `id` from Job object | Required during POST event, optional otherwise |
| created_at | date_time | Optional | Date/time when the homework is assigned, or is recorded in Junt. | ISO 8601, ex. 2019-05-18T13:28:44+00:00 . If not provided, defaults to time server receives the request. |
| updated_at |  date_time | Optional | Date/time when the event is last updated. | ISO 8601, ex. 2019-05-18T13:28:44+00:00 . If not provided, defaults to time server receives the request. |
| note | string | Optional | Notes about the event | Supports markdown |
| due_date | date_time | Required | Date/time when the homework sample/project is due. | ISO 8601, ex. 2019-05-18T13:28:44+00:00 . If not provided, defaults to time server receives the request. |

## Event Object: Interview Parameters ##

| Parameter | Type | Required | Description | Notes |
| --- | --- | --- | --- | --- |
| id | int | Required | Unique identifier | `id` is automatically generated at POST |
| job_id | int | Required | Unique identifier `id` from Job object | Required during POST event, optional otherwise |
| created_at | date_time | Optional | Date/time when the interview request is received, or is recorded in Junt. | ISO 8601, ex. 2019-05-18T13:28:44+00:00 . If not provided, defaults to time server receives the request. |
| updated_at |  date_time | Optional | Date/time when the event is last updated. | ISO 8601, ex. 2019-05-18T13:28:44+00:00 . If not provided, defaults to time server receives the request. |
| note | string | Optional | Notes about the event | Supports markdown |
| scheduled | date_time | Required | Date/time when the interview is scheduled. | ISO 8601, ex. 2019-05-18T13:28:44+00:00 . If not provided, defaults to time server receives the request. |
| length | int | Optional | Expected/scheduled length of interview. | In minutes |
| rating | string enum | Optional | How well did the interview go? | In emoji |
| type | string enum | Optional | The type of interview scheduled; example, recruiter, technical, peer, hiring manager | User generated options |

## Event Object: Offer Parameters ##

| Parameter | Type | Required | Description | Notes |
| --- | --- | --- | --- | --- |
| id | int | Required | Unique identifier | `id` is automatically generated at POST |
| job_id | int | Required | Unique identifier `id` from Job object | Required during POST event, optional otherwise |
| created_at | date_time | Optional | Date/time when the offer is made, or is recorded in Junt. | ISO 8601, ex. 2019-05-18T13:28:44+00:00 . If not provided, defaults to time server receives the request. |
| updated_at |  date_time | Optional | Date/time when the event is last updated. | ISO 8601, ex. 2019-05-18T13:28:44+00:00 . If not provided, defaults to time server receives the request. |
| note | string | Optional | Notes about the event | Supports markdown |
| status | string enum | Required | The current stage in the offer process | Valid options: "received" , "negotiating" , "accepted" , "finalized" |

## Associations ##

| EVENT Object | Associated Object |
| --- | --- |
| belongs_to | JOB |
| has_many | people (some events) |

## Event Object Routes ##

- [Using 'event_types' in routes](#using_event_types_in_routes "Using event_types in routes")
- [Get events routes](#get-events-routes)
- [Create an event](#create-an-event-route)
- [Edit an event](#edit-an-event-route)
- [Delete an event](#delete-an-event-route)

### Using event types in routes ###

Event object routes in Junt vary based on the type of event:

`/<event_type>/`

Junt supports six different types of events:

- Thank-you emails (`thanks_email`)
- Status changes (`status_change`)
- Follow-up (`followup`)
- Homework (`homework`)
- Offers (`offer`)
- Interview (`interview`)

When working with events in Junt, use the specific `event_type` in these routes:

- `GET /<event_type>/`
- `GET /<event_type>/:id`
- `POST /<event_type>/`
- `PUT /<event_type>/`
- `DELETE /<event_type>/`

Junt also supports a few additional GET requests for retrieving specific types of event data that do not require `event_type` in the route. See [Get Events Routes](#get-events-routes) for details.

### Get Events Routes ###

- [Get all events of a type](#get_all_events_of_a_type "Get all events of a type")
- [Get one event of a type](#get_one_event_of_a_type "Get one event of a type")

Junt also supports a few additional GET requests for retrieving specific types of event data that do not require `<event_type>` in the route:

- [Get all events route](#get-all-events-of-a-type-route)
- [Get all events for a job route](#get-all-events-for-a-job-route)
- [Get interview types route](#get-interview-types-route)


### Get all events of a type ###

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
    "job_id": 3,
    "created_at": "2019-05-26T11:27:39+00:00",
    "updated_at": null,
    "note": "Coding test in Ruby",
    "scheduled": "2019-06-3T13:00:00+00:00",
    "length": 60,
    "rating": null,
    "type": "technical"
  },
  {
    "id": 2,
    "job_id": 2,
    "created_at": "2019-05-27T10:18:17+00:00",
    "updated_at": "2019-05-31T19:32:48+00:00",
    "note": null,
    "scheduled": "2019-05-31T18:00:00+00:00",
    "length": 60,
    "rating": ">:(",
    "type": "team interview"
  }
]
```

This endpoint retrieves all event objects for the specified `event_types` using the corresponding `event_type` in the route.

#### HTTP Request ####

`GET /<event_type>/`

### Get one event of a type ###

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
    "job_id": 3,
    "created_at": "2019-05-26T11:27:39+00:00",
    "updated_at": null,
    "note": "Coding test in Ruby",
    "scheduled": "2019-06-3T13:00:00+00:00",
    "length": 60,
    "rating": null,
    "type": "technical"
}
```

This endpoint retrieves a single event of the specified `<event_type>`, called by `id`.

#### HTTP Request ####

`GET /<event_type>/:id`

### Get all events route ###

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
    "job_id": 3,
    "created_at": "2019-05-26T11:27:39+00:00",
    "updated_at": null,
    "note": "Coding test in Ruby",
    "scheduled": "2019-06-3T13:00:00+00:00",
    "length": 60,
    "rating": null,
    "type": "technical"
  },
  {
    "id": 2,
    "job_id": 2,
    "created_at": "2019-05-27T10:18:17+00:00",
    "updated_at": "2019-05-28T08:46:23+00:00",
    "note": "Waiting for answers to clarifying questions",
    "due_date": "2019-05-31T18:00:00+00:00"
  }
]
```

This endpoint retrieves all event objects, regardless of `event_type`.

#### HTTP Request ####

`GET /events/`

### Get all events for a job route ###

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
    "job_id": 3,
    "created_at": "2019-05-26T11:27:39+00:00",
    "updated_at": null,
    "note": "Coding test in Ruby",
    "scheduled": "2019-06-3T13:00:00+00:00",
    "length": 60,
    "rating": null,
    "type": "technical"
  },
  {
    "id": 2,
    "job_id": 2,
    "created_at": "2019-05-27T10:18:17+00:00",
    "updated_at": "2019-05-28T08:46:23+00:00",
    "note": "Waiting for answers to clarifying questions",
    "due_date": "2019-05-31T18:00:00+00:00"
  }
]
```

This endpoint retrieves all events related to the specified `job_id`.

#### HTTP Request ####

`GET /events/:job_id`

### Get interview types route ###

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
    "job_id": 3,
    "created_at": "2019-05-26T11:27:39+00:00",
    "updated_at": null,
    "note": "Coding test in Ruby",
    "scheduled": "2019-06-3T13:00:00+00:00",
    "length": 60,
    "rating": null,
    "type": "technical"
  },
  {
    "id": 7,
    "job_id": 13,
    "created_at": "2019-05-27T10:18:17+00:00",
    "updated_at": "2019-05-28T08:46:23+00:00",
    "note": "Study up on string manipulation",
    "scheduled": "2019-06-3T16:00:00+00:00",
    "length": 60,
    "rating": null,
    "type": "technical"
  }
]
```

This endpoint retrieves all interviews of a specific type.

#### HTTP Request ####

`GET /interviews/types`

### Create an event route ###

```go
Example GO code
```

```shell
curl "http://localhost:8123/v1/thanks_email" \
  -X POST \
  -H "Content-Type: application/json" \
  -d '{"job_id": 2,
      "created_at":"2019-05-27T14:22:39+00:00",
      "note":"Mention experience with Ruby string manipulation",
      "person_ids":[5, 13, 17]}'
```

```javascript
Example javascript code
```

> The above command should be formed with JSON structured like this:

```json
{
  "job_id": 2,
  "created_at": "2019-05-27T14:22:39+00:00",
  "note": "Mention experience with Ruby string manipulation",
  "person_ids": [5, 13, 17]
}
```

This endpoint creates a new event of a specific `event_type`, using the corresponding `event_type` in the route.

> The above command returns JSON structured like this:

```json
{
  "status": "SUCCESS",
  "id": 7
}
```

#### HTTP Request ####

`POST /<event_type>/`

### Edit an event route ###

```go
Example GO code
```

```shell
# edit an event
curl "http://localhost:8123/v1/followup" \
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
  "job_id": 2,
  "updated_at": "2019-05-27T15:22:08+00:00",
  "note": "_Really_ connected with Sally; emphasize would like to work with her",
  "person_ids": [13]
}
```

This endpoint adds new data or overwrites data to a specific event, called by `id` and using the corresponding `event_type` in the route.

_*Note:* In this example, parameters that are not being updated are left out of the request. Send only parameters being updated when editing an event._


> The above command returns JSON structured like this:

```json
{
  "status": "SUCCESS"
}
```

#### HTTP Request ####

`PUT /<event_type/`

### Delete an event route ###

```go
Example GO code
```

```shell
# Delete an event
curl -X DELETE "http://localhost:8123/v1/interview/17"
```

```javascript
Example javascript code
```

This endpoint permanently deletes a specific event, called by `id`.

_*Note*: Deleting an EVENT only deletes that event. It does not affect the associated JOB or PERSON(s)._

> The above command returns JSON structured like this:

```json
{
  "status": "SUCCESS"
}
```

#### HTTP Request ####

`DELETE /<event_type>/`
