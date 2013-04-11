require 'spec_helper'

describe Choice do
  it { should validate_presence_of :content }
  it { should respond_to :content }

  it { should belong_to :question }
  it { should have_many :answers }
end