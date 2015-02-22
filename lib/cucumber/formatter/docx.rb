require 'sablon'
require 'fileutils'
require 'yaml'
require 'active_support'


class Cucumber::Formatter::Docx

  def initialize(runtime, path, options)
    FileUtils.touch path
    @out     = path
    @scenario_summary = {}
    @scenario_tree    = nil
    @template = File.exist?('template.docx') ? 'template.docx' : File.expand_path('../../../../misc/template.docx',__FILE__)
  end

  def before_feature(feature)
    @file_content = File.read(feature.file).split(/\n/)
    @scenario_yaml    = ''
  end

  def scenario_name(keyword, name, file_colon_line, source_indent)
    scenario_line = @file_content[file_colon_line[/:(\d+)$/, 1].to_i - 1]
    current_depth = scenario_line[/^(\s*)/, 1].length / 2
    @scenario_yaml += '  ' * current_depth + name + ": \n"
  end

  def after_feature(feature)
    @scenario_summary.deep_merge!(YAML.load @scenario_yaml)
  end

  def after_features(features)
    Sablon.template(@template)
          .render_to_file(@out, { scenarios: @scenario_summary })
  end

end
