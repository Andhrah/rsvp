# Rsvp

This application is an event booking application.

**Application features:**

- users can see all list of events.
- User can create a new event.
- User can reserve their spot at an event.

## Set up
> Step by step instructions on how to get the code setup locally.

- If you don't have ```Elixir``` installed, please follow this link to [download Elixir](https://elixir-lang.org/install.html), the minimum version is `v1.9.2`

- If you dont have ```Phoenix``` Framework installed,please follow this link to [download Phoenix](https://hexdocs.pm/phoenix/installation.html#content), the minimum version is `v1.4.11`

- Open the `terminal` or `cmd`
- Clone the repository

```
git clone https://github.com/Andhrah/rsvp.git `folder-name`. 
```

- You only append `folder-name` if you wish to download the product in a named folder of your choice.

- Cd into the project directory
- Cd into `config` folder
- Create `dev.secret.exs` file
- Open up `dev.secret_example.exs` file, follow the instructions there to setup your `dev.secret.exs`

## To start your Phoenix server:

- Cd into directory of the project folder.
- Then run
* Install dependencies with `mix deps.get`
* Create and migrate your database with `mix ecto.setup`
* Install Node.js dependencies with `cd assets && npm install`
* Start Phoenix endpoint with `mix phx.server`


Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

Ready to run in production? Please [check our deployment guides](https://hexdocs.pm/phoenix/deployment.html).

### Technologies and Tools/Dependencies

- [Elixir](https://elixir-lang.org)
- [Phoenix](http://www.phoenixframework.org) - Elixir Web framework.

### Testing the application

Running unit tests.
* In a terminal/cmd, `cd` to the cloned project folder.
* Run `mix test`, for the tests.

> Find other Technologies and Tools/Dependencies in the `mix.exs file`.

## Learn more

  * Official website: http://www.phoenixframework.org/
  * Guides: https://hexdocs.pm/phoenix/overview.html
  * Docs: https://hexdocs.pm/phoenix
  * Mailing list: http://groups.google.com/group/phoenix-talk
  * Source: https://github.com/phoenixframework/phoenix
