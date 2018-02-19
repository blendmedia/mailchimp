defmodule MailchimpExternalTest do
  use ExUnit.Case

  @moduletag :external

  require Logger

  test "retrieve all mailchimp lists" do
    {:ok, account} = Mailchimp.Account.get()
    {:ok, lists} = Mailchimp.Account.lists(account)

    first_list = hd(lists)

    assert first_list.visibility == "pub"
  end

  test "retrieve a single mailchimp list" do
    {:ok, list} = Mailchimp.Account.list("2fbfb0a573")

    assert list.id == "2fbfb0a573"
  end
end