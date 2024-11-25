defmodule YoutubeTutorialForum1Web.UserJSON do
  alias YoutubeTutorialForum1.Accounts.User
#  alias YoutubeTutorialForum1.Posts.Post
  alias YoutubeTutorialForum1Web.PostJSON

  @doc """
  Renders a list of users.
  """
  def index(%{users: users}) do
    %{data: for(user <- users, do: data(user))}
  end

  @doc """
  Renders a single user.
  """
  def show(%{user: user}) do
    %{data: data(user)}
  end

  defp data(%User{} = user) do
    %{
      id: user.id,
      name: user.name,
      email: user.email,
#      posts: for(post <- user.posts, do: post_data(post)),
#      posts: for(post <- user.posts, do: YoutubeTutorialForum1Web.PostJSON.data(post))
#      posts: for(post <- user.posts, do: PostJSON.data(post))
      posts: Enum.map(user.posts, &PostJSON.data/1)
    }
  end

#  defp post_data(%Post{} = post) do
#    %{
#      id: post.id,
#      title: post.title,
#      body: post.body
#    }
#  end
end
