require 'spec_helper'

describe Survey do
  it { should validate_presence_of :title }
  it { should respond_to :title }

  it { should validate_presence_of :description }
  it { should respond_to :description }  
end