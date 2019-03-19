# app/resources/books/views/billgatesbooks.json.jl
"Bill's Gates list of recommended books" => [Dict("author" => b.author,
                                                  "title" => b.title,
                                                  "cover" => b.cover) for b in @vars(:books)]
