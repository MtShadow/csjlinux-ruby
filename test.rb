require './csjposlib/ext'
require './csjposlib/constants'

printer = CSJPOSLib::ESCPOSPrinter.new
printer.connect(CSJPOSLib::CMP_PORT_USB, "/dev/usb/lp0")

printer.set_encoding(65001);

printer.transaction_print(CSJPOSLib::CMP_TP_TRANSACTION)

printer.print_text("Hello, world!\n\n", CSJPOSLib::CMP_ALIGNMENT_CENTER, CSJPOSLib::CMP_FNT_DEFAULT, CSJPOSLib::CMP_TXT_1WIDTH | CSJPOSLib::CMP_TXT_1HEIGHT)
printer.print_text("吾輩は猫である。名前はまだ無い。どこで生まれたかもとんと検討がつかぬ。\n\n", CSJPOSLib::CMP_ALIGNMENT_LEFT, CSJPOSLib::CMP_FNT_DEFAULT, CSJPOSLib::CMP_TXT_1WIDTH | CSJPOSLib::CMP_TXT_1HEIGHT)

printer.cut_paper(CSJPOSLib::CMP_CUT_PARTIAL_PREFEED)

printer.transaction_print(CSJPOSLib::CMP_TP_NORMAL)

printer.disconnect
