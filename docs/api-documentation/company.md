# Company #

A company object contains a collection of information about a specific company.

- [Parameters](#company_object_parameters "Parameters")
- [Associations](#associations "Associations")

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
| --- | --- |
| has_many | jobs (maybe) |
| has_many | people (through applications) |
