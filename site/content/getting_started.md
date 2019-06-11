---
section_weight: 0
page_weight: 1

---


# Getting Started with Junt #

- [What is Junt?](#what_is_junt)
- [Installing and using Junt](#installing_and_using_junt)
- [Developing for Junt](#developing_for_junt)
  - [Overview of the Junt API](#overview_of_junt_api)
- [Got questions?](#got_questions)

## What is Junt? ##

Junt (job + hunt) is an open source tool for tracking your job search. It was developed as an alternative to paid services like [Huntr](https://huntr.co/), with the idea that a simple server + API would enable people to develop a wide range of clients. Developers can code a client for Junt as a showcase piece for the job hunt, _and_ use the tool to track their job hunt progress.

Most importantly, developers can code a wide range of clients that work for them, in exactly the way they want to view and interact with their job hunt data, using the simple but powerful API.

For more about the API, including Junt's data modeling, take a look at [Overview of the Junt API](#overview_of_junt_api).

## Installing and using Junt ##

To get started with Junt, you'll need to do to things:

1. [Install the Junt server](#install_the_junt_server)
2. [Install (or write) a Junt client.](#install_a_junt_client)

### Install the Junt server ###

To install the Junt server, go to the [Junt server repo](https://github.com/masukomi/junt_server) and follow the instructions in the README.

### Install a Junt client ###

To install a Junt client, go to the [Junt clients repo](insert link here), pick a client, and follow the instructions in the client README.

Currently, Junt clients include:

- Insert list of Junt clients here

If you want to write a Junt client, take a look at [Developing a Junt client](#developing_a_junt_client).

## Developing for Junt ##

Want to contribute to Junt? Want to write your own Junt client to showcase your skills in language X, or use a job search tool that works exactly the way you want it to? Or do you just want to know more about the Junt API?

- [Developing for the Junt server](#developing_for_the_junt_server)
- [Developing a Junt client](#developing_a_junt_client)
- [Overview of Junt API](#overview_of_junt_api)

### Developing for the Junt server ###

The [Junt server](insert link here) is an open source project written in Go. If you'd like to change or improve the server, including updating the API, we're happy to merge your PRs.

<aside ="notice">Please note in your PR comment if the PR changes the API functionality, so we can make sure we update our docs.</aside>

<aside ="warning">We prefer PRs that don't break existing API functionality, so if your PR breaks the API but isn't a bug fix, we suggest you clone the server repo and make your changes there. If you'd like your revised Junt server repo to be listed on the main Junt page, reach out to [Open Source Docs Press](https://opensourcedocs.press/contact/) to update the main Junt documentation with your repo's details.</aside>

### Developing a Junt client ###

Want to develop your own Junt client in your preferred language, or with your preferred UI and functionality? Here's what you need to know:

- [Install the Junt server](#install_the_junt_server)
- Create a repo and code your Junt client

Once you've finished your Junt client, send us a message at [Open Source Docs Press](https://opensourcedocs.press/contact/) to add it to our list of Junt clients here in the main documentation.

<aside ="notice">Note: To be added to our list of Junt clients, your Junt client repo must contain a README with any instructions on installing and using your client, as well as info on how to reach you with questions.</aside>

### Overview of Junt API ###

- [Version](#version)
- [Junt's data model and objects](#junt_data_model_and_objects)
- [Notes about the API](#notes_about_the_junt_api)

#### Version ####

Junt API Version 1

#### Junt data model and objects ####

Junt's data model is based on the `job` object being the core datum of the overall job search. As a user, when you are job hunting, you apply for a `job` - other details are related to each `job`, but the `job` is the core concept.

A `job` can have an associated `company`, `person`s, and `event`s (i.e. )

For more info about each of these objects, including API calls for each object, see:

- [Job](insert link here)
- [Company](insert link here)
- [Person](insert link here)
- [Event](insert link here)

Currently, the Junt data model is:

![Junt data model](insert image link here "Junt data model")



#### Notes about the Junt API ####

- All date_time fields are ISO 8601-formatted time stamps.
- All created_at & updated_at fields will be populated on creation/update if the associated date is _not_ passed in.
- An "array of ints" association will _always_ return an array. It may be an empty array, but it will be present.

## Got questions? ##

Got questions about Junt? There are a few ways you can reach us:

- File an Issue in the appropriate GitHub repo;
- If you're [developing for Junt](#developing_for_junt), make a PR against the appropriate GitHub repo;
- If you have a question about a [Junt client](#junt_clients), check out the README in that client's repo for information about reaching the developer.

If your question is about the Junt API documentation, or the overview/getting started with Junt material, reach out to the [Open Source Docs Press initiative](https://opensourcedocs.press/contact/); we created and maintain the docs for the overall project.
