require "mkmf-rice"

dir_config("CSJPOSLib", "/usr/local/include", "/usr/local/lib")
have_library("CSJPOSLib")

create_makefile('csjlinux')
