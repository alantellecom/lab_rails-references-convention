require "administrate/base_dashboard"

class QuartoDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    user: Field::BelongsTo,
    reviews: Field::HasMany,
    id: Field::Number,
    numero: Field::Number,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
    reviews_count: Field::Number,
    foto: Field::String,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :user,
    :reviews,
    :id,
    :numero,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :user,
    :reviews,
    :id,
    :numero,
    :created_at,
    :updated_at,
    :reviews_count,
    :foto,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :user,
    :reviews,
    :numero,
    :reviews_count,
    :foto,
  ].freeze

  # Overwrite this method to customize how quartos are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(quarto)
  #   "Quarto ##{quarto.id}"
  # end
end
