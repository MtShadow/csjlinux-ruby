#include <CSJPOSLib.h>
#include <rice/rice.hpp>
#include <rice/stl.hpp>

using namespace Rice;

extern "C"
void Init_csjlinux()
{
  Module rb_mCSJPOSLib = define_module("CSJPOSLib");

  define_class_under<CSJPOSLib::ESCPOSPrinter>(rb_mCSJPOSLib, "ESCPOSPrinter")
    .define_constructor(Constructor<CSJPOSLib::ESCPOSPrinter>())
    .define_method<int(CSJPOSLib::ESCPOSPrinter::*)(int, std::string)>("connect", &CSJPOSLib::ESCPOSPrinter::Connect, Arg("connect_type"), Arg("addr"))
    .define_method("disconnect", &CSJPOSLib::ESCPOSPrinter::Disconnect)
    .define_method("set_encoding", &CSJPOSLib::ESCPOSPrinter::SetEncoding, Arg("codepage"))
    .define_method("printer_check", &CSJPOSLib::ESCPOSPrinter::PrinterCheck)
    .define_method<int(CSJPOSLib::ESCPOSPrinter::*)()>("status", &CSJPOSLib::ESCPOSPrinter::Status)
    .define_method("print_text", &CSJPOSLib::ESCPOSPrinter::PrintText, Arg("data"), Arg("alignment"), Arg("attribute"), Arg("text_size"));
}

