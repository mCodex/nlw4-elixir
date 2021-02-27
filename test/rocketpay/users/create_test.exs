defmodule Rocketpay.Users.CreateTest do
  use Rocketpay.DataCase, async: true

  alias Rocketpay.User
  alias Rocketpay.Users.Create

  describe "call/1" do
    test "when all params are valid, returns an user" do
      params = %{
        name: "user1",
        password: "123456",
        nickname: "user1",
        email: "user@example.com",
        age: 18
      }

      {:ok, %User{id: user_id}} = Create.call(params)

      user = Repo.get(User, user_id)

      assert %User{name: "user1", age: 18, id: ^user_id} = user
    end

    test "when there are invalid params" do
      params = %{
        name: "user1",
        password: "123456",
        nickname: "user1",
        email: "user@example.com",
        age: 15
      }

      {:error, changeset} = Create.call(params)

      expected_response = %{
        age: ["must be greater than or equal to 18"]
      }

      assert expected_response == errors_on(changeset)
    end

  end
end
