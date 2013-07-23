class ChangeIsbnColumnName < ActiveRecord::Migration
  def up
    rename_column 'books', 'ISBN', 'isbn'
    change_column 'books', 'isbn', 'string'
  end

  def down
    rename_column 'books', 'isbn', 'ISBN'
    change_column 'books', 'isbn', 'integer'
  end
end
