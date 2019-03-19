module Books

using SearchLight, SearchLight.Validation, BooksValidator

export Book

mutable struct Book <: AbstractModel
  ### INTERNALS
  _table_name::String
  _id::String
  _serializable::Vector{Symbol}

  ### FIELDS
  id::DbId
  title::String
  author::String
  cover::String
  location::String

  Book(;
    ### FIELDS
    id = DbId(),
    title = "",
    author = "",
    cover = "",
    location = "",
  ) = new("books", "id", Symbol[],
          id, title, author, cover, location
          )
end

end