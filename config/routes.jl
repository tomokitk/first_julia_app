using Genie.Router
using BooksController

route("/") do
  serve_static_file("/welcome.html")
end


route("/hello") do
  "Hello Julia - Welcome to Genie!"
end


route("/bgbooks", BooksController.billgatesbooks)

route("/api/v1/bgbooks", BooksController.API.billgatesbooks)

# url, name of controller.method, get or post, namedurl

route("/bgbooks/new", BooksController.new)

route("/bgbooks/create", BooksController.create, method = POST, named = :create_book)