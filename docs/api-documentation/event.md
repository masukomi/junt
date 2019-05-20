# Event #

An event object contains a collection of information related to a specific event in the job hunt process. Events include:

- [ThanksEmail](#event_object:_thanksemail_parameters "ThanksEmail Parameters")
- [StatusChange](#event_object:_statuschange_parameters "StatusChange Parameters")
- [Followup](#event_object:_followup_parameters "Followup Parameters")
- [Homework](#event_object:_homework_parameters "Homework Parameters")
- [Interview](#event_object:_interview_parameters "Interview Parameters")
- [Offer](#event_object:_offer_parameters "Offer Parameters")

## Event Object: ThanksEmail Parameters ##

| Parameter | Type | Required | Description | Notes |
| --- | --- | --- | --- | --- |
| created_at | date_time | Optional | Date/time when the thank-you email is sent or recorded in Junt. | ISO 8601, ex. 2019-05-18T13:28:44+00:00 . If not provided, defaults to time server receives the request. |
| people_ids | array of ints | Optional | Person or people associated with the thank-you email | |


## Event Object: StatusChange Parameters ##

| Parameter | Type | Required | Description | Notes |
| --- | --- | --- | --- | --- |
| from | string | Optional | Current/former job status. | Valid options: "applied" , "interviewing" , "rejected" , "offer" , "black_hole"|
| to | string | Optional | New job status. | Valid options: "applied" , "interviewing" , "rejected" , "offer" , "black_hole" |

## Event Object: Followup Parameters ##

| Parameter | Type | Required | Description | Notes |
| --- | --- | --- | --- | --- |
| | | | | |

## Event Object: Homework Parameters ##

| Parameter | Type | Required | Description | Notes |
| --- | --- | --- | --- | --- |
| due_date | date_time | Required | Date/time when the homework sample/project is due. | ISO 8601, ex. 2019-05-18T13:28:44+00:00 . If not provided, defaults to time server receives the request. |

## Event Object: Interview Parameters ##

| Parameter | Type | Required | Description | Notes |
| --- | --- | --- | --- | --- |
| scheduled | date_time | Required | Date/time when the interview is scheduled. | ISO 8601, ex. 2019-05-18T13:28:44+00:00 . If not provided, defaults to time server receives the request. |
| length | int | Optional | Expected/scheduled length of interview. | In minutes |
| rating | string enum | Optional | How well did the interview go? | In emoji |
| type | string enum | Optional | The type of interview scheduled; example, recruiter, technical, peer, hiring manager | User generated options |

## Event Object: Offer Parameters ##

| Parameter | Type | Required | Description | Notes |
| --- | --- | --- | --- | --- |
| status | string enum | Required | The current stage in the offer process | Valid options: "received" , "negotiating" , "accepted" , "finalized" |
