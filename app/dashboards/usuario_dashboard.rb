require "administrate/base_dashboard"

class UsuarioDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    quartos: Field::HasMany,
    reviews: Field::HasMany,
    id: Field::Number,
    nome: Field::String,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :quartos,
    :reviews,
    :id,
    :nome,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :quartos,
    :reviews,
    :id,
    :nome,
    :created_at,
    :updated_at,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :quartos,
    :reviews,
    :nome,
  ].freeze

  # Overwrite this method to customize how usuarios are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(usuario)
  #   "Usuario ##{usuario.id}"
  # end
end
