require 'rails_helper'

describe Review do
  it { should validate_presence_of :title }
  it { should validate_presence_of :content }
  it { should belong_to :user }
end
