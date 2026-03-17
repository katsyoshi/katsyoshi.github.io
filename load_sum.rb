require "fiddle/import"

module LoadSum
  extend Fiddle::Importer
  dlload "./libfibo.so"
  extern "int sum(int, int)"
end
