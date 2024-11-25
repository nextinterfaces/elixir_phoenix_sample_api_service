# Sample Elixir Phoenix API App

This repository contains a sample API application built using the [Elixir Phoenix Framework](https://www.phoenixframework.org/). The setup follows the tutorial available at [YouTube](https://www.youtube.com/watch?v=9xaN44PNxps&t=801s).

## Getting Started

To set up and run the Phoenix server locally, follow these steps:

1. **Install Dependencies**  
   Run the following command to install and set up all dependencies:
   ```bash
   mix setup
   ```

2. **Run Database Migrations**  
   Apply the necessary database migrations:
   ```bash
   mix ecto.migrate
   ```

3. **Start the Phoenix Server**  
   Start the Phoenix endpoint with:
   ```bash
   mix phx.server
   ```
   Alternatively, you can run it inside an interactive Elixir shell (IEx) with:
   ```bash
   iex -S mix phx.server
   ```

4. **Access the Application**  
   Open your browser and navigate to [`http://localhost:4000`](http://localhost:4000).

## Running in Production

If you're planning to deploy this application, please consult the official [Phoenix Deployment Guides](https://hexdocs.pm/phoenix/deployment.html).

## Resources

Here are some helpful resources for working with Phoenix:

- **[Official Phoenix Website](https://www.phoenixframework.org/):** Overview and announcements.
- **[Guides](https://hexdocs.pm/phoenix/overview.html):** Comprehensive tutorials and best practices.
- **[Documentation](https://hexdocs.pm/phoenix):** API documentation and framework references.
- **[Community Forum](https://elixirforum.com/c/phoenix-forum):** Ask questions and share insights with the community.
- **[Source Code](https://github.com/phoenixframework/phoenix):** Contribute or review the Phoenix source code.

## License

This project is released under the [MIT License](LICENSE).
