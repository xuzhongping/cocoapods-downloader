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
options = {:git => 'https://github.com/square/cocoapods-pack.git'}
options = Pod::Downloader.preprocess_options(options)
downloader = Pod::Downloader.for_target(target_path, options)
downloader.download
downloader.checkout_options