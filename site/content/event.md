# Event #

An event object contains a collection of information related to a specific event in the job hunt process. Events include:

- [ThanksEmail](#event_object:_thanksemail_parameters "ThanksEmail Parameters")
- [StatusChange](#event_object:_statuschange_parameters "StatusChange Parameters")
- [Followup](#event_object:_followup_parameters "Followup Parameters")
- [Homework](#event_object:_homework_parameters "Homework Parameters")
- [Interview](#event_object:_interview_parameters "Interview Parameters")
- [Offer](#event_object:_offer_parameters "Offer Parameters")

- Parameters
- Associations
- Routes


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

Event object routes in Junt vary based on the type of event:

`/<event_type>/:id`

- [Get all events of a type](#get_all_events_of_a_type "Get all events of a type")
- [Get one event of a type](#get_one_event_of_a_type "Get one event of a type")
- [Valid 'event_types'](#valid_event_types "Valid event_types")

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
    "updated_at": "2019-05-28T08:46:23+00:00",
    "note": "Waiting for answers to clarifying questions",
    "due_date": "2019-05-31T18:00:00+00:00"
  }
]
```

This endpoint retrieves all event objects for all `event_types`.

#### HTTP Request ####

`GET /<event_type>/`

### Get one event of a type ###



### Valid event types ###
