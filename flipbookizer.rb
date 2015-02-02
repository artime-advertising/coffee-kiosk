require 'fileutils'

class CopyFlipbook < Middleman::Extension
  def initialize(app, options_hash={}, &block)
    super
    app.after_build do |builder|
      flipbook_directory = 'flipbook/'
      build_directory = 'build/'
      FileUtils.cp_r flipbook_directory, build_directory
      puts 'Flipbook copied'
    end
  end

end

::Middleman::Extensions.register(:copy_flipbook, CopyFlipbook)
