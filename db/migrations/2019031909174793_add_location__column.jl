module AddLocationColumn

import SearchLight.Migrations: add_column, add_index

function up()
    add_column(:books, :location, :string)
end

function down()
    remove_column(:books, :location)
end

end
