# Person #

A person object contains a collection of information about a specific person related to the job hunt.

- [Parameters](#person_object_parameters "Parameters")
- [Associations](#associations "Associations")

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
