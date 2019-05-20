# Job #

A job object contains a collection of information about a specific role.

- [Parameters](#job_object_parameters "Parameters")
- [Associations](#associations "Associations")

## Job Object Parameters ##

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
| start_date | date_time | Optional | The expected start date for the job | |

## Associations ##

| --- | --- |
| belongs_to | company |
| has_many | events (maybe) |
| has_many | people (hr contact(s)) |
