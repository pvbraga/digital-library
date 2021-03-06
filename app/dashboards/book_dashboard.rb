require "administrate/base_dashboard"

class BookDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    id: Field::Number,
    title: Field::String,
    author: Field::String,
    description: Field::Text,
    publisher: Field::String,
    year: Field::String,
    collection: Field::String,
    code: Field::String,
    patron: Field::String,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
  }

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :title,
    :author,
    :publisher,
    :year,
    :collection,
    :code,
    :patron,
  ]

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :title,
    :author,
    :description,
    :publisher,
    :year,
    :collection,
    :code,
    :patron,
    :updated_at,
  ]

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :title,
    :author,
    :description,
    :publisher,
    :year,
    :collection,
    :code,
    :patron,
  ]

  # Overwrite this method to customize how books are displayed
  # across all pages of the admin dashboard.
  #
  def display_resource(book)
    "#{book.title}"
  end
end
