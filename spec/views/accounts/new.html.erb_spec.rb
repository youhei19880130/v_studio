# frozen_string_literal: true
require 'rails_helper'

RSpec.describe 'accounts/new', type: :view do
  before(:each) do
    assign(:account, Account.new(
                       name: 'MyString',
                       email: 'MyString',
                       tel: 'MyString'
    ))
  end

  it 'renders new account form' do
    render

    assert_select 'form[action=?][method=?]', accounts_path, 'post' do
      assert_select 'input#account_name[name=?]', 'account[name]'

      assert_select 'input#account_email[name=?]', 'account[email]'

      assert_select 'input#account_tel[name=?]', 'account[tel]'
    end
  end
end
