$LOAD_PATH.unshift(File.expand_path('../../lib', __FILE__))

require 'cocoapods-downloader'

# path = ''
# options = {}
# downloader = Pod::Downloader.for_target(path, options)
# downloader.cache_root = ''
# downloader.max_cache_size = 500
# downloader.download
#

target_path = File.expand_path('../../tmp/download', __FILE__)
options = {:git => 'https://github.com/xuzhongping/cocoapods-downloader.git', :commit => '7b8bf35aaa70a412ca602e68086b81dfebe6f34a'}
options = Pod::Downloader.preprocess_options(options)
downloader = Pod::Downloader.for_target(target_path, options)
downloader.download_head
downloader.checkout_options