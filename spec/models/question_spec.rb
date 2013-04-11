require 'spec_helper'

describe Question do
  it { should validate_presence_of :content }
  it { should respond_to :content }

  it { should belong_to :survey }  
  it { should have_many :choices }  
  it { should accept_nested_attributes_for :choices }  
end