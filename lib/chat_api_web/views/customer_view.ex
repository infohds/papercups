defmodule ChatApiWeb.CustomerView do
  use ChatApiWeb, :view
  alias ChatApiWeb.CustomerView

  def render("index.json", %{customers: customers}) do
    %{data: render_many(customers, CustomerView, "customer.json")}
  end

  def render("show.json", %{customer: customer}) do
    %{data: render_one(customer, CustomerView, "customer.json")}
  end

  def render("customer.json", %{customer: customer}) do
    %{
      id: customer.id,
      name: customer.name,
      email: customer.email,
      phone: customer.phone,
      current_url: customer.current_url,
      browser: customer.browser,
      os: customer.os,
    }
  end
end
