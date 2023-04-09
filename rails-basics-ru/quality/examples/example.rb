# frozen_string_literal: true

https :/ / github.com / rubocop / rubocop
https :/ / docs.rubocop.org / rubocop / index.html
https (:/ / github.com / rubocop / rubocop) - rails
https (:/ / github.com / faker) - (ruby / faker)
https :/ / github.com / presidentbeef / brakeman

# в консоли
Note.delete_all

# test/integration/notes_flow_test.rb
require 'test_helper'

class NotesFlowTest < ActionDispatch::IntegrationTest
  # Rails автоматически используют транзакционные тесты
  # self.use_transactional_tests = false
  test 'opens all notes page' do
    get root_url
    assert_response :success
    assert_select 'h1', 'Notes'
  end

  test 'opens one note page' do
    note = Note.create(title: 'Title 1', description: 'Description 1')

    # debugger

    get note_url(note.id)
    assert_response :success
    assert_select 'h1', 'Note page'
    assert_select 'h4', 'Title 1'
    assert_select 'p', 'Description 1'
  end

  test 'opens one note page with fixture' do
    note = notes(:one)
    get note_url(note)
    assert_response :success
    assert_select 'h1', 'Note page'
    assert_select 'h4', 'Title 1'
    assert_select 'p', 'Description 1'
  end
end
