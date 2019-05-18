# Overview of Junt API #

## Objects in Junt: ##

- Job
- Company
- Person
- Event

## Version ##

Junt API Version 1

## Notes ##

- All date_time fields are ISO 8601-formatted time stamps.
- All created_at & updated_at fields will be populated on creation/update if the associated date is _not_ passed in.
- An "array of ints" association will _always_ return an array. It may be an empty array, but it will be present.
