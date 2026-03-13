require "fiddle/import"

module Fibonacci
  extend Fiddle::Importer
  dlload "./libfibo.so"
  extern "int fibo(int)"
end
