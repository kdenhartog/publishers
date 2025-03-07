# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `brakeman` gem.
# Please instead update this file by running `bin/tapioca gem brakeman`.

module Brakeman
  class << self
    def add_external_checks(options); end
    def check_for_missing_checks(included_checks, excluded_checks, enabled_checks); end
    def compare(options); end
    def config_file(custom_location, app_path); end
    def debug(message); end
    def debug=(val); end
    def default_options; end
    def dump_config(options); end
    def ensure_latest; end
    def filter_warnings(tracker, options); end
    def get_output_formats(options); end
    def ignore_file_entries_with_empty_notes(file); end
    def list_checks(options); end
    def load_brakeman_dependency(name, allow_fail = T.unsafe(nil)); end
    def load_options(line_options); end
    def notify(message); end
    def quiet=(val); end
    def rescan(tracker, files, options = T.unsafe(nil)); end
    def run(options); end
    def scan(options); end
    def set_options(options); end

    private

    def get_formats_from_output_files(output_files); end
    def get_formats_from_output_format(output_format); end
    def get_github_url(options); end
    def write_report_to_files(tracker, output_files); end
    def write_report_to_formats(tracker, output_formats); end
  end
end

Brakeman::CONFIG_FILES = T.let(T.unsafe(nil), Array)
class Brakeman::DependencyError < ::RuntimeError; end
Brakeman::Empty_Ignore_Note_Exit_Code = T.let(T.unsafe(nil), Integer)
Brakeman::Errors_Found_Exit_Code = T.let(T.unsafe(nil), Integer)
class Brakeman::MissingChecksError < ::RuntimeError; end
Brakeman::Missing_Checks_Exit_Code = T.let(T.unsafe(nil), Integer)
class Brakeman::NoApplication < ::RuntimeError; end
class Brakeman::NoBrakemanError < ::RuntimeError; end
Brakeman::No_App_Found_Exit_Code = T.let(T.unsafe(nil), Integer)
Brakeman::Not_Latest_Version_Exit_Code = T.let(T.unsafe(nil), Integer)
Brakeman::Version = T.let(T.unsafe(nil), String)
Brakeman::Warnings_Found_Exit_Code = T.let(T.unsafe(nil), Integer)
