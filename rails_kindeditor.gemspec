# -*- encoding: utf-8 -*-
# stub: rails_kindeditor 0.4.5 ruby lib

Gem::Specification.new do |s|
  s.name = "rails_kindeditor"
  s.version = "0.4.5"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Macrow"]
  s.date = "2014-09-11"
  s.description = "rails_kindeditor will helps your rails app integrate with kindeditor, including images and files uploading."
  s.email = "Macrow_wh@163.com"
  s.files = [".gitignore", "Gemfile", "README.md", "Rakefile", "app/assets/javascripts/kindeditor.js", "app/controllers/kindeditor/assets_controller.rb", "app/uploaders/kindeditor/asset_uploader.rb", "app/uploaders/kindeditor/file_uploader.rb", "app/uploaders/kindeditor/flash_uploader.rb", "app/uploaders/kindeditor/image_uploader.rb", "app/uploaders/kindeditor/media_uploader.rb", "config/routes.rb", "lib/generators/rails_kindeditor/install/USAGE", "lib/generators/rails_kindeditor/install/install_generator.rb", "lib/generators/rails_kindeditor/install/templates/application.js", "lib/generators/rails_kindeditor/install/templates/rails_kindeditor.rb", "lib/generators/rails_kindeditor/migration/USAGE", "lib/generators/rails_kindeditor/migration/migration_generator.rb", "lib/generators/rails_kindeditor/migration/templates/migration/migration.rb", "lib/generators/rails_kindeditor/migration/templates/models/active_record/kindeditor/asset.rb", "lib/generators/rails_kindeditor/migration/templates/models/active_record/kindeditor/file.rb", "lib/generators/rails_kindeditor/migration/templates/models/active_record/kindeditor/flash.rb", "lib/generators/rails_kindeditor/migration/templates/models/active_record/kindeditor/image.rb", "lib/generators/rails_kindeditor/migration/templates/models/active_record/kindeditor/media.rb", "lib/generators/rails_kindeditor/migration/templates/models/mongoid/kindeditor/asset.rb", "lib/generators/rails_kindeditor/migration/templates/models/mongoid/kindeditor/file.rb", "lib/generators/rails_kindeditor/migration/templates/models/mongoid/kindeditor/flash.rb", "lib/generators/rails_kindeditor/migration/templates/models/mongoid/kindeditor/image.rb", "lib/generators/rails_kindeditor/migration/templates/models/mongoid/kindeditor/media.rb", "lib/rails_kindeditor.rb", "lib/rails_kindeditor/active_record.rb", "lib/rails_kindeditor/engine.rb", "lib/rails_kindeditor/formtastic.rb", "lib/rails_kindeditor/helper.rb", "lib/rails_kindeditor/simple_form.rb", "lib/rails_kindeditor/version.rb", "lib/tasks/assets.rake", "rails_kindeditor.gemspec", "screenshots/rails_kindeditor.png", "screenshots/simple_mode.png", "vendor/assets/javascripts/kindeditor/kindeditor.js", "vendor/assets/javascripts/kindeditor/lang/ar.js", "vendor/assets/javascripts/kindeditor/lang/en.js", "vendor/assets/javascripts/kindeditor/lang/ko.js", "vendor/assets/javascripts/kindeditor/lang/zh_CN.js", "vendor/assets/javascripts/kindeditor/lang/zh_TW.js", "vendor/assets/javascripts/kindeditor/plugins/anchor/anchor.js", "vendor/assets/javascripts/kindeditor/plugins/autoheight/autoheight.js", "vendor/assets/javascripts/kindeditor/plugins/baidumap/baidumap.js", "vendor/assets/javascripts/kindeditor/plugins/baidumap/index.html", "vendor/assets/javascripts/kindeditor/plugins/baidumap/map.html", "vendor/assets/javascripts/kindeditor/plugins/clearhtml/clearhtml.js", "vendor/assets/javascripts/kindeditor/plugins/clearhtml/clearimage.js", "vendor/assets/javascripts/kindeditor/plugins/code/code.js", "vendor/assets/javascripts/kindeditor/plugins/code/prettify.css", "vendor/assets/javascripts/kindeditor/plugins/code/prettify.js", "vendor/assets/javascripts/kindeditor/plugins/emoticons/emoticons.js", "vendor/assets/javascripts/kindeditor/plugins/emoticons/images/0.gif", "vendor/assets/javascripts/kindeditor/plugins/emoticons/images/1.gif", "vendor/assets/javascripts/kindeditor/plugins/emoticons/images/10.gif", "vendor/assets/javascripts/kindeditor/plugins/emoticons/images/100.gif", "vendor/assets/javascripts/kindeditor/plugins/emoticons/images/101.gif", "vendor/assets/javascripts/kindeditor/plugins/emoticons/images/102.gif", "vendor/assets/javascripts/kindeditor/plugins/emoticons/images/103.gif", "vendor/assets/javascripts/kindeditor/plugins/emoticons/images/104.gif", "vendor/assets/javascripts/kindeditor/plugins/emoticons/images/105.gif", "vendor/assets/javascripts/kindeditor/plugins/emoticons/images/106.gif", "vendor/assets/javascripts/kindeditor/plugins/emoticons/images/107.gif", "vendor/assets/javascripts/kindeditor/plugins/emoticons/images/108.gif", "vendor/assets/javascripts/kindeditor/plugins/emoticons/images/109.gif", "vendor/assets/javascripts/kindeditor/plugins/emoticons/images/11.gif", "vendor/assets/javascripts/kindeditor/plugins/emoticons/images/110.gif", "vendor/assets/javascripts/kindeditor/plugins/emoticons/images/111.gif", "vendor/assets/javascripts/kindeditor/plugins/emoticons/images/112.gif", "vendor/assets/javascripts/kindeditor/plugins/emoticons/images/113.gif", "vendor/assets/javascripts/kindeditor/plugins/emoticons/images/114.gif", "vendor/assets/javascripts/kindeditor/plugins/emoticons/images/115.gif", "vendor/assets/javascripts/kindeditor/plugins/emoticons/images/116.gif", "vendor/assets/javascripts/kindeditor/plugins/emoticons/images/117.gif", "vendor/assets/javascripts/kindeditor/plugins/emoticons/images/118.gif", "vendor/assets/javascripts/kindeditor/plugins/emoticons/images/119.gif", "vendor/assets/javascripts/kindeditor/plugins/emoticons/images/12.gif", "vendor/assets/javascripts/kindeditor/plugins/emoticons/images/120.gif", "vendor/assets/javascripts/kindeditor/plugins/emoticons/images/121.gif", "vendor/assets/javascripts/kindeditor/plugins/emoticons/images/122.gif", "vendor/assets/javascripts/kindeditor/plugins/emoticons/images/123.gif", "vendor/assets/javascripts/kindeditor/plugins/emoticons/images/124.gif", "vendor/assets/javascripts/kindeditor/plugins/emoticons/images/125.gif", "vendor/assets/javascripts/kindeditor/plugins/emoticons/images/126.gif", "vendor/assets/javascripts/kindeditor/plugins/emoticons/images/127.gif", "vendor/assets/javascripts/kindeditor/plugins/emoticons/images/128.gif", "vendor/assets/javascripts/kindeditor/plugins/emoticons/images/129.gif", "vendor/assets/javascripts/kindeditor/plugins/emoticons/images/13.gif", "vendor/assets/javascripts/kindeditor/plugins/emoticons/images/130.gif", "vendor/assets/javascripts/kindeditor/plugins/emoticons/images/131.gif", "vendor/assets/javascripts/kindeditor/plugins/emoticons/images/132.gif", "vendor/assets/javascripts/kindeditor/plugins/emoticons/images/133.gif", "vendor/assets/javascripts/kindeditor/plugins/emoticons/images/134.gif", "vendor/assets/javascripts/kindeditor/plugins/emoticons/images/14.gif", "vendor/assets/javascripts/kindeditor/plugins/emoticons/images/15.gif", "vendor/assets/javascripts/kindeditor/plugins/emoticons/images/16.gif", "vendor/assets/javascripts/kindeditor/plugins/emoticons/images/17.gif", "vendor/assets/javascripts/kindeditor/plugins/emoticons/images/18.gif", "vendor/assets/javascripts/kindeditor/plugins/emoticons/images/19.gif", "vendor/assets/javascripts/kindeditor/plugins/emoticons/images/2.gif", "vendor/assets/javascripts/kindeditor/plugins/emoticons/images/20.gif", "vendor/assets/javascripts/kindeditor/plugins/emoticons/images/21.gif", "vendor/assets/javascripts/kindeditor/plugins/emoticons/images/22.gif", "vendor/assets/javascripts/kindeditor/plugins/emoticons/images/23.gif", "vendor/assets/javascripts/kindeditor/plugins/emoticons/images/24.gif", "vendor/assets/javascripts/kindeditor/plugins/emoticons/images/25.gif", "vendor/assets/javascripts/kindeditor/plugins/emoticons/images/26.gif", "vendor/assets/javascripts/kindeditor/plugins/emoticons/images/27.gif", "vendor/assets/javascripts/kindeditor/plugins/emoticons/images/28.gif", "vendor/assets/javascripts/kindeditor/plugins/emoticons/images/29.gif", "vendor/assets/javascripts/kindeditor/plugins/emoticons/images/3.gif", "vendor/assets/javascripts/kindeditor/plugins/emoticons/images/30.gif", "vendor/assets/javascripts/kindeditor/plugins/emoticons/images/31.gif", "vendor/assets/javascripts/kindeditor/plugins/emoticons/images/32.gif", "vendor/assets/javascripts/kindeditor/plugins/emoticons/images/33.gif", "vendor/assets/javascripts/kindeditor/plugins/emoticons/images/34.gif", "vendor/assets/javascripts/kindeditor/plugins/emoticons/images/35.gif", "vendor/assets/javascripts/kindeditor/plugins/emoticons/images/36.gif", "vendor/assets/javascripts/kindeditor/plugins/emoticons/images/37.gif", "vendor/assets/javascripts/kindeditor/plugins/emoticons/images/38.gif", "vendor/assets/javascripts/kindeditor/plugins/emoticons/images/39.gif", "vendor/assets/javascripts/kindeditor/plugins/emoticons/images/4.gif", "vendor/assets/javascripts/kindeditor/plugins/emoticons/images/40.gif", "vendor/assets/javascripts/kindeditor/plugins/emoticons/images/41.gif", "vendor/assets/javascripts/kindeditor/plugins/emoticons/images/42.gif", "vendor/assets/javascripts/kindeditor/plugins/emoticons/images/43.gif", "vendor/assets/javascripts/kindeditor/plugins/emoticons/images/44.gif", "vendor/assets/javascripts/kindeditor/plugins/emoticons/images/45.gif", "vendor/assets/javascripts/kindeditor/plugins/emoticons/images/46.gif", "vendor/assets/javascripts/kindeditor/plugins/emoticons/images/47.gif", "vendor/assets/javascripts/kindeditor/plugins/emoticons/images/48.gif", "vendor/assets/javascripts/kindeditor/plugins/emoticons/images/49.gif", "vendor/assets/javascripts/kindeditor/plugins/emoticons/images/5.gif", "vendor/assets/javascripts/kindeditor/plugins/emoticons/images/50.gif", "vendor/assets/javascripts/kindeditor/plugins/emoticons/images/51.gif", "vendor/assets/javascripts/kindeditor/plugins/emoticons/images/52.gif", "vendor/assets/javascripts/kindeditor/plugins/emoticons/images/53.gif", "vendor/assets/javascripts/kindeditor/plugins/emoticons/images/54.gif", "vendor/assets/javascripts/kindeditor/plugins/emoticons/images/55.gif", "vendor/assets/javascripts/kindeditor/plugins/emoticons/images/56.gif", "vendor/assets/javascripts/kindeditor/plugins/emoticons/images/57.gif", "vendor/assets/javascripts/kindeditor/plugins/emoticons/images/58.gif", "vendor/assets/javascripts/kindeditor/plugins/emoticons/images/59.gif", "vendor/assets/javascripts/kindeditor/plugins/emoticons/images/6.gif", "vendor/assets/javascripts/kindeditor/plugins/emoticons/images/60.gif", "vendor/assets/javascripts/kindeditor/plugins/emoticons/images/61.gif", "vendor/assets/javascripts/kindeditor/plugins/emoticons/images/62.gif", "vendor/assets/javascripts/kindeditor/plugins/emoticons/images/63.gif", "vendor/assets/javascripts/kindeditor/plugins/emoticons/images/64.gif", "vendor/assets/javascripts/kindeditor/plugins/emoticons/images/65.gif", "vendor/assets/javascripts/kindeditor/plugins/emoticons/images/66.gif", "vendor/assets/javascripts/kindeditor/plugins/emoticons/images/67.gif", "vendor/assets/javascripts/kindeditor/plugins/emoticons/images/68.gif", "vendor/assets/javascripts/kindeditor/plugins/emoticons/images/69.gif", "vendor/assets/javascripts/kindeditor/plugins/emoticons/images/7.gif", "vendor/assets/javascripts/kindeditor/plugins/emoticons/images/70.gif", "vendor/assets/javascripts/kindeditor/plugins/emoticons/images/71.gif", "vendor/assets/javascripts/kindeditor/plugins/emoticons/images/72.gif", "vendor/assets/javascripts/kindeditor/plugins/emoticons/images/73.gif", "vendor/assets/javascripts/kindeditor/plugins/emoticons/images/74.gif", "vendor/assets/javascripts/kindeditor/plugins/emoticons/images/75.gif", "vendor/assets/javascripts/kindeditor/plugins/emoticons/images/76.gif", "vendor/assets/javascripts/kindeditor/plugins/emoticons/images/77.gif", "vendor/assets/javascripts/kindeditor/plugins/emoticons/images/78.gif", "vendor/assets/javascripts/kindeditor/plugins/emoticons/images/79.gif", "vendor/assets/javascripts/kindeditor/plugins/emoticons/images/8.gif", "vendor/assets/javascripts/kindeditor/plugins/emoticons/images/80.gif", "vendor/assets/javascripts/kindeditor/plugins/emoticons/images/81.gif", "vendor/assets/javascripts/kindeditor/plugins/emoticons/images/82.gif", "vendor/assets/javascripts/kindeditor/plugins/emoticons/images/83.gif", "vendor/assets/javascripts/kindeditor/plugins/emoticons/images/84.gif", "vendor/assets/javascripts/kindeditor/plugins/emoticons/images/85.gif", "vendor/assets/javascripts/kindeditor/plugins/emoticons/images/86.gif", "vendor/assets/javascripts/kindeditor/plugins/emoticons/images/87.gif", "vendor/assets/javascripts/kindeditor/plugins/emoticons/images/88.gif", "vendor/assets/javascripts/kindeditor/plugins/emoticons/images/89.gif", "vendor/assets/javascripts/kindeditor/plugins/emoticons/images/9.gif", "vendor/assets/javascripts/kindeditor/plugins/emoticons/images/90.gif", "vendor/assets/javascripts/kindeditor/plugins/emoticons/images/91.gif", "vendor/assets/javascripts/kindeditor/plugins/emoticons/images/92.gif", "vendor/assets/javascripts/kindeditor/plugins/emoticons/images/93.gif", "vendor/assets/javascripts/kindeditor/plugins/emoticons/images/94.gif", "vendor/assets/javascripts/kindeditor/plugins/emoticons/images/95.gif", "vendor/assets/javascripts/kindeditor/plugins/emoticons/images/96.gif", "vendor/assets/javascripts/kindeditor/plugins/emoticons/images/97.gif", "vendor/assets/javascripts/kindeditor/plugins/emoticons/images/98.gif", "vendor/assets/javascripts/kindeditor/plugins/emoticons/images/99.gif", "vendor/assets/javascripts/kindeditor/plugins/emoticons/images/static.gif", "vendor/assets/javascripts/kindeditor/plugins/filemanager/filemanager.js", "vendor/assets/javascripts/kindeditor/plugins/filemanager/images/file-16.gif", "vendor/assets/javascripts/kindeditor/plugins/filemanager/images/file-64.gif", "vendor/assets/javascripts/kindeditor/plugins/filemanager/images/folder-16.gif", "vendor/assets/javascripts/kindeditor/plugins/filemanager/images/folder-64.gif", "vendor/assets/javascripts/kindeditor/plugins/filemanager/images/go-up.gif", "vendor/assets/javascripts/kindeditor/plugins/flash/flash.js", "vendor/assets/javascripts/kindeditor/plugins/image/image.js", "vendor/assets/javascripts/kindeditor/plugins/image/images/align_left.gif", "vendor/assets/javascripts/kindeditor/plugins/image/images/align_right.gif", "vendor/assets/javascripts/kindeditor/plugins/image/images/align_top.gif", "vendor/assets/javascripts/kindeditor/plugins/image/images/refresh.png", "vendor/assets/javascripts/kindeditor/plugins/insertfile/insertfile.js", "vendor/assets/javascripts/kindeditor/plugins/lineheight/lineheight.js", "vendor/assets/javascripts/kindeditor/plugins/link/link.js", "vendor/assets/javascripts/kindeditor/plugins/map/map.html", "vendor/assets/javascripts/kindeditor/plugins/map/map.js", "vendor/assets/javascripts/kindeditor/plugins/media/media.js", "vendor/assets/javascripts/kindeditor/plugins/multiimage/images/image.png", "vendor/assets/javascripts/kindeditor/plugins/multiimage/images/select-files-en.png", "vendor/assets/javascripts/kindeditor/plugins/multiimage/images/select-files-zh_CN.png", "vendor/assets/javascripts/kindeditor/plugins/multiimage/images/swfupload.swf", "vendor/assets/javascripts/kindeditor/plugins/multiimage/multiimage.js", "vendor/assets/javascripts/kindeditor/plugins/pagebreak/pagebreak.js", "vendor/assets/javascripts/kindeditor/plugins/plainpaste/plainpaste.js", "vendor/assets/javascripts/kindeditor/plugins/preview/preview.js", "vendor/assets/javascripts/kindeditor/plugins/quickformat/quickformat.js", "vendor/assets/javascripts/kindeditor/plugins/table/table.js", "vendor/assets/javascripts/kindeditor/plugins/template/html/1.html", "vendor/assets/javascripts/kindeditor/plugins/template/html/2.html", "vendor/assets/javascripts/kindeditor/plugins/template/html/3.html", "vendor/assets/javascripts/kindeditor/plugins/template/template.js", "vendor/assets/javascripts/kindeditor/plugins/wordpaste/wordpaste.js", "vendor/assets/javascripts/kindeditor/themes/common/anchor.gif", "vendor/assets/javascripts/kindeditor/themes/common/blank.gif", "vendor/assets/javascripts/kindeditor/themes/common/flash.gif", "vendor/assets/javascripts/kindeditor/themes/common/loading.gif", "vendor/assets/javascripts/kindeditor/themes/common/media.gif", "vendor/assets/javascripts/kindeditor/themes/common/rm.gif", "vendor/assets/javascripts/kindeditor/themes/default/background.png", "vendor/assets/javascripts/kindeditor/themes/default/default.css", "vendor/assets/javascripts/kindeditor/themes/default/default.png", "vendor/assets/javascripts/kindeditor/themes/qq/editor.gif", "vendor/assets/javascripts/kindeditor/themes/qq/qq.css", "vendor/assets/javascripts/kindeditor/themes/simple/simple.css"]
  s.homepage = "http://github.com/Macrow"
  s.licenses = ["MIT"]
  s.rubyforge_project = "rails_kindeditor"
  s.rubygems_version = "2.2.2"
  s.summary = "Kindeditor for Ruby on Rails"

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<carrierwave>, [">= 0"])
      s.add_runtime_dependency(%q<mini_magick>, [">= 0"])
    else
      s.add_dependency(%q<carrierwave>, [">= 0"])
      s.add_dependency(%q<mini_magick>, [">= 0"])
    end
  else
    s.add_dependency(%q<carrierwave>, [">= 0"])
    s.add_dependency(%q<mini_magick>, [">= 0"])
  end
end
