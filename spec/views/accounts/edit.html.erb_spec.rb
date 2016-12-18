# frozen_string_literal: true
require 'rails_helper'

RSpec.describe 'accounts/edit', type: :view do
  before(:each) do
    @account = assign(:account, Account.create!(
                                  name: 'MyString',
                                  email: 'MyString',
                                  tel: 'MyString'
    ))
  end

  it 'renders the edit account form' do
    render

    assert_select 'form[action=?][method=?]', account_path(@account), 'post' do
      assert_select 'input#account_name[name=?]', 'account[name]'

      assert_select 'input#account_email[name=?]', 'account[email]'

      assert_select 'input#account_tel[name=?]', 'account[tel]'
    end
  end
end
