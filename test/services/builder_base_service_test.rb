# typed: false
# frozen_string_literal: true

require "test_helper"

class BuilderBaseServiceTest < ActiveSupport::TestCase
  DEFAULT_VALUE = "default_value"

  test "BuilderBaseService.build" do
    assert_raises NotImplementedError do
      BuilderBaseService.build
    end
  end

  class NotImplementedChildOfBuilderBaseService < BuilderBaseService
    def self.build
      new
    end
  end

  test NotImplementedChildOfBuilderBaseService.name do
    assert_raises NotImplementedError do
      NotImplementedChildOfBuilderBaseService.build.call
    end
  end

  class ValidChildOfBuilderBaseService < BuilderBaseService
    def self.build
      new
    end

    def call(service: "service")
      BuilderBaseService::SuccessStruct.new(result: service, success: true)
    end
  end

  test ValidChildOfBuilderBaseService.name do
    output = ValidChildOfBuilderBaseService.build.call
    assert_instance_of(BuilderBaseService::SuccessStruct, output)
    assert output.result == "service"
  end

  class FailedChildOfBuilderBaseService < BuilderBaseService
    def self.build
      new
    end

    def call(service: "service")
      BuilderBaseService::FailureStruct.new(errors: ["We could not succeed"], success: false)
    end
  end

  test FailedChildOfBuilderBaseService.name do
    output = FailedChildOfBuilderBaseService.build.call
    assert_instance_of(BuilderBaseService::FailureStruct, output)
    assert !output.errors.empty?
  end

end
